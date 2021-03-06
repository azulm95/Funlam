
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/27/2016 15:50:18
-- Generated from EDMX file: C:\Users\ceramirez\Desktop\Funlam\Funlam_1\Models\dbfunlam.edmx
-- --------------------------------------------------


SET QUOTED_IDENTIFIER OFF;
GO
USE [dbfunlam];


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tbl_claseestilos'
CREATE TABLE [dbo].[tbl_claseestilos] (
    [id_claseestilo] int IDENTITY(1,1) NOT NULL,
    [nombre_estilo] varchar(50)  NULL
);
GO

-- Creating table 'tbl_cursos'
CREATE TABLE [dbo].[tbl_cursos] (
    [Id_curso] int IDENTITY(1,1) NOT NULL,
    [total_cupos] int  NOT NULL,
    [cupos_actuales] int  NOT NULL,
    [id_materia] int  NOT NULL,
    [fecha_inicio] datetime  NOT NULL,
    [fecha_fin] datetime  NOT NULL,
    [horario] time  NOT NULL
  
);
GO

-- Creating table 'tbl_descuentos'
CREATE TABLE [dbo].[tbl_descuentos] (
    [id_descuento] int IDENTITY(1,1) NOT NULL,
    [respuesta] varchar(50)  NOT NULL,
    [estado] varchar(20)  NOT NULL,
    [periodo_academico] varchar(50)  NOT NULL,
    [fecha_solicitd] datetime  NOT NULL,
    [id_usuarios] int  NOT NULL
   
);
GO

-- Creating table 'tbl_detalle_persona_curso'
CREATE TABLE [dbo].[tbl_detalle_persona_curso] (
    [Id_detalle_persona_curso] int IDENTITY(1,1) NOT NULL,
    [id_curso] int  NOT NULL,
    [id_usuario] int  NOT NULL
    
);
GO

-- Creating table 'tbl_deudas'
CREATE TABLE [dbo].[tbl_deudas] (
    [id_deuda] int IDENTITY(1,1) NOT NULL,
    [tipo_deuda] varchar(50)  NOT NULL,
    [observacion] varchar(max)  NOT NULL,
    [valor] decimal(19,4)  NOT NULL,
    [estado] varchar(50)  NOT NULL,
    [fecha_deuda] datetime  NOT NULL,
    [id_usuario] int  NOT NULL
 
);
GO

-- Creating table 'tbl_factura'
CREATE TABLE [dbo].[tbl_factura] (
    [id_factura] int IDENTITY(1,1) NOT NULL,
    [valor] decimal(19,4)  NOT NULL,
    [tipo] varchar(50)  NOT NULL,
    [fecha_liquidacion] datetime  NOT NULL,
    [fecha_vencimiento] datetime  NOT NULL,
    [valor_pendiente] decimal(19,4)  NOT NULL,
    [descripcion] varchar(max)  NOT NULL,
    [id_usuario] int  NOT NULL)
GO

-- Creating table 'tbl_liquidaciones'
CREATE TABLE [dbo].[tbl_liquidaciones] (
    [Id_liquidacion] int IDENTITY(1,1) NOT NULL,
    [id_factura] int  NOT NULL,
    [tipo] nvarchar(max)  NOT NULL,
    [estado] nvarchar(max)  NOT NULL,
    [fecha_liquidacion] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbl_materia'
CREATE TABLE [dbo].[tbl_materia] (
    [Id_materia]     INT            IDENTITY (1, 1) NOT NULL,
    [nombre_materia] NVARCHAR (MAX) NOT NULL,
    [creditos]       INT            NOT NULL,
    [id_programa]    INT            NOT NULL
);

-- Creating table 'tbl_modulos'
CREATE TABLE [dbo].[tbl_modulos] (
    [id_modulo] int IDENTITY(1,1) NOT NULL,
    [nombre_modulo] varchar(50)  NOT NULL,
    [id_claseestilo] int  NOT NULL
);
GO

-- Creating table 'tbl_plan_financiacion'
CREATE TABLE [dbo].[tbl_plan_financiacion] (
    [id_plan_financiacion] int IDENTITY(1,1) NOT NULL,
    [tipo_financiacion] varchar(50)  NOT NULL,
    [calculo] varchar(50)  NOT NULL,
    [valor] decimal(19,4)  NOT NULL,
    [estado] varchar(20)  NOT NULL,
    [id_usuarios] int  NOT NULL
);
GO

-- Creating table 'tbl_programas'
CREATE TABLE [dbo].[tbl_programas] (
    [Id_programa] int IDENTITY(1,1) NOT NULL,
    [nombre_programa] nvarchar(max)  NOT NULL,
    [sniess] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'tbl_recaudo'
CREATE TABLE [dbo].[tbl_recaudo] (
    [id_recaudos] int IDENTITY(1,1) NOT NULL,
    [fecha_recaudo] datetime  NOT NULL,
    [valor] decimal(19,4)  NOT NULL,
    [tipo] varchar(50)  NOT NULL,
    [estado] varchar(20)  NOT NULL,
    [financiacion] varchar(50)  NOT NULL,
    [descripcion] varchar(max)  NOT NULL,
    [id_usuario] int  NOT NULL
);
GO

-- Creating table 'tbl_Rol'
CREATE TABLE [dbo].[tbl_Rol] (
    [Id_rol] int IDENTITY(1,1) NOT NULL,
    [Nombre_Rol] varchar(50)  NOT NULL
);
GO

-- Creating table 'tbl_saldos_favor'
CREATE TABLE [dbo].[tbl_saldos_favor] (
    [id_saldos_favor] int IDENTITY(1,1) NOT NULL,
    [id_factura] int  NOT NULL,
    [id_recaudo] int  NOT NULL,
    [tipo] varchar(50)  NOT NULL,
    [observaciones] varchar(max)  NOT NULL,
    [valor_aplicado] decimal(19,4)  NULL,
    [estado] varchar(20)  NOT NULL,
    [fecha] datetime  NULL,
    [id_usuario] int  NOT NULL
);
GO

-- Creating table 'tbl_Usuarios'
CREATE TABLE [dbo].[tbl_Usuarios] (
    [Id_usuarios] int IDENTITY(1,1) NOT NULL,
    [Nom_Usuario] nvarchar(100)  NOT NULL,
    [Clave] varchar(500)  NOT NULL,
    [Rol] int  NOT NULL
);
GO


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_claseestilo] in table 'tbl_claseestilos'
ALTER TABLE [dbo].[tbl_claseestilos]
ADD CONSTRAINT [PK_tbl_claseestilos]
    PRIMARY KEY CLUSTERED ([id_claseestilo] ASC);
GO

-- Creating primary key on [Id_curso] in table 'tbl_cursos'
ALTER TABLE [dbo].[tbl_cursos]
ADD CONSTRAINT [PK_tbl_cursos]
    PRIMARY KEY CLUSTERED ([Id_curso] ASC);
GO

-- Creating primary key on [id_descuento] in table 'tbl_descuentos'
ALTER TABLE [dbo].[tbl_descuentos]
ADD CONSTRAINT [PK_tbl_descuentos]
    PRIMARY KEY CLUSTERED ([id_descuento] ASC);
GO

-- Creating primary key on [Id_detalle_persona_curso] in table 'tbl_detalle_persona_curso'
ALTER TABLE [dbo].[tbl_detalle_persona_curso]
ADD CONSTRAINT [PK_tbl_detalle_persona_curso]
    PRIMARY KEY CLUSTERED ([Id_detalle_persona_curso] ASC);
GO

-- Creating primary key on [id_deuda] in table 'tbl_deudas'
ALTER TABLE [dbo].[tbl_deudas]
ADD CONSTRAINT [PK_tbl_deudas]
    PRIMARY KEY CLUSTERED ([id_deuda] ASC);
GO

-- Creating primary key on [id_factura] in table 'tbl_factura'
ALTER TABLE [dbo].[tbl_factura]
ADD CONSTRAINT [PK_tbl_factura]
    PRIMARY KEY CLUSTERED ([id_factura] ASC);
GO

-- Creating primary key on [Id_liquidacion] in table 'tbl_liquidaciones'
ALTER TABLE [dbo].[tbl_liquidaciones]
ADD CONSTRAINT [PK_tbl_liquidaciones]
    PRIMARY KEY CLUSTERED ([Id_liquidacion] ASC);
GO

-- Creating primary key on [Id_materia] in table 'tbl_materia'
ALTER TABLE [dbo].[tbl_materia]
ADD CONSTRAINT [PK_tbl_materia]
    PRIMARY KEY CLUSTERED ([Id_materia] ASC);
GO

-- Creating primary key on [id_modulo] in table 'tbl_modulos'
ALTER TABLE [dbo].[tbl_modulos]
ADD CONSTRAINT [PK_tbl_modulos]
    PRIMARY KEY CLUSTERED ([id_modulo] ASC);
GO

-- Creating primary key on [id_plan_financiacion] in table 'tbl_plan_financiacion'
ALTER TABLE [dbo].[tbl_plan_financiacion]
ADD CONSTRAINT [PK_tbl_plan_financiacion]
    PRIMARY KEY CLUSTERED ([id_plan_financiacion] ASC);
GO

-- Creating primary key on [Id_programa] in table 'tbl_programas'
ALTER TABLE [dbo].[tbl_programas]
ADD CONSTRAINT [PK_tbl_programas]
    PRIMARY KEY CLUSTERED ([Id_programa] ASC);
GO

-- Creating primary key on [id_recaudos] in table 'tbl_recaudo'
ALTER TABLE [dbo].[tbl_recaudo]
ADD CONSTRAINT [PK_tbl_recaudo]
    PRIMARY KEY CLUSTERED ([id_recaudos] ASC);
GO

-- Creating primary key on [Id_rol] in table 'tbl_Rol'
ALTER TABLE [dbo].[tbl_Rol]
ADD CONSTRAINT [PK_tbl_Rol]
    PRIMARY KEY CLUSTERED ([Id_rol] ASC);
GO

-- Creating primary key on [id_saldos_favor] in table 'tbl_saldos_favor'
ALTER TABLE [dbo].[tbl_saldos_favor]
ADD CONSTRAINT [PK_tbl_saldos_favor]
    PRIMARY KEY CLUSTERED ([id_saldos_favor] ASC);
GO

-- Creating primary key on [Id_usuarios] in table 'tbl_Usuarios'
ALTER TABLE [dbo].[tbl_Usuarios]
ADD CONSTRAINT [PK_tbl_Usuarios]
    PRIMARY KEY CLUSTERED ([Id_usuarios] ASC);
GO



-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [tbl_materia_Id_materia] in table 'tbl_cursos'
ALTER TABLE [dbo].[tbl_cursos]
ADD CONSTRAINT [FK_tbl_cursostbl_materia]
    FOREIGN KEY ([id_materia])
    REFERENCES [dbo].[tbl_materia]
        ([Id_materia])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- Creating foreign key on [tbl_cursos_Id_curso] in table 'tbl_detalle_persona_curso'
ALTER TABLE [dbo].[tbl_detalle_persona_curso]
ADD CONSTRAINT [FK_tbl_detalle_persona_cursotbl_cursos]
    FOREIGN KEY ([id_curso])
    REFERENCES [dbo].[tbl_cursos]
        ([Id_curso])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [tbl_Usuarios_Id_usuarios] in table 'tbl_descuentos'
ALTER TABLE [dbo].[tbl_descuentos]
ADD CONSTRAINT [FK_tbl_descuentostbl_Usuarios]
    FOREIGN KEY ([id_usuarios])
    REFERENCES [dbo].[tbl_Usuarios]
        ([Id_usuarios])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [tbl_Usuarios_Id_usuarios] in table 'tbl_detalle_persona_curso'
ALTER TABLE [dbo].[tbl_detalle_persona_curso]
ADD CONSTRAINT [FK_tbl_detalle_persona_cursotbl_Usuarios]
    FOREIGN KEY ([id_usuario])
    REFERENCES [dbo].[tbl_Usuarios]
        ([Id_usuarios])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [tbl_Usuarios_Id_usuarios] in table 'tbl_factura'
ALTER TABLE [dbo].[tbl_factura]
ADD CONSTRAINT [FK_tbl_facturatbl_Usuarios]
    FOREIGN KEY ([id_usuario])
    REFERENCES [dbo].[tbl_Usuarios]
        ([Id_usuarios])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- Creating foreign key on [tbl_liquidaciones1_Id_liquidacion] in table 'tbl_factura'
ALTER TABLE [dbo].[tbl_liquidaciones]
ADD CONSTRAINT [FK_tbl_liquidaciones_tbl_factura]
    FOREIGN KEY ([id_factura])
    REFERENCES [dbo].[tbl_factura]
        ([id_factura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- Creating foreign key on [tbl_saldos_favor_id_saldos_favor] in table 'tbl_factura'
ALTER TABLE [dbo].[tbl_saldos_favor]
ADD CONSTRAINT [FK_tbl_saldos_favor_tbl_factura]
    FOREIGN KEY ([id_factura])
    REFERENCES [dbo].[tbl_factura]
        ([id_factura])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- Creating foreign key on [tbl_programas_Id_programa] in table 'tbl_materia'
ALTER TABLE [dbo].[tbl_materia]
ADD CONSTRAINT [FK_tbl_materiatbl_programas]
    FOREIGN KEY ([id_programa])
    REFERENCES [dbo].[tbl_programas]
        ([Id_programa])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [tbl_Usuarios_Id_usuarios] in table 'tbl_plan_financiacion'
ALTER TABLE [dbo].[tbl_plan_financiacion]
ADD CONSTRAINT [FK_tbl_plan_financiaciontbl_Usuarios]
    FOREIGN KEY ([id_usuarios])
    REFERENCES [dbo].[tbl_Usuarios]
        ([Id_usuarios])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [tbl_saldos_favor_id_saldos_favor] in table 'tbl_recaudo'
ALTER TABLE [dbo].[tbl_saldos_favor]
ADD CONSTRAINT [FK_tbl_saldos_favor_tbl_recaudo]
    FOREIGN KEY ([id_recaudo])
    REFERENCES [dbo].[tbl_recaudo]
        ([id_recaudos])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO



-- Creating foreign key on [Rol] in table 'tbl_Usuarios'
ALTER TABLE [dbo].[tbl_Usuarios]
ADD CONSTRAINT [fk_usuario_rol]
    FOREIGN KEY ([Rol])
    REFERENCES [dbo].[tbl_Rol]
        ([Id_rol])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- Creating foreign key on [tbl_recaudo_id_recaudos] in table 'tbl_recaudotbl_Usuarios'
ALTER TABLE [dbo].[tbl_recaudo_Usuarios]
ADD CONSTRAINT [FK_tbl_recaudo_Usuarios_tbl_recaudo]
    FOREIGN KEY ([tbl_recaudo_id_recaudos])
    REFERENCES [dbo].[tbl_recaudo]
        ([id_recaudos])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO





-- Creating foreign key on [tbl_Usuarios_Id_usuarios] in table 'tbl_deudas'
ALTER TABLE [dbo].[tbl_deudas]
ADD CONSTRAINT [FK_tbl_deudastbl_Usuarios]
    FOREIGN KEY ([tbl_Usuarios_Id_usuarios])
    REFERENCES [dbo].[tbl_Usuarios]
        ([Id_usuarios])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO


-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------