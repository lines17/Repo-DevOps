BEGIN TRY
    BEGIN TRANSACTION
PRINT 'Insert data into the storage table...';
SET IDENTITY_INSERT SSI.dbo.storage ON;

INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (1, '2018-05-13 19:42:45.616', NULL, 1, N'Proteccion Personal');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (2, '2018-05-13 19:42:51.824', NULL, 0, N'Señalizacion');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (3, '2018-05-13 19:43:03.705', NULL, 0, N'Montacargas');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (4, '2018-05-13 19:43:36.298', NULL, 0, N'Extintores de incendio');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (5, '2018-05-13 19:43:17.592', NULL, 0, N'Alarmas');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (6, '2018-05-13 19:42:45.616', NULL, 0, N'Gruas');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (7, '2018-05-13 19:42:45.616', NULL, 0, N'Arnes');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (9, '2018-05-13 19:42:45.616', NULL, 0, N'Luces emergencia');
INSERT ssi.dbo.storage(id, created_on, updated_on, version, name) VALUES (10, '2018-05-13 19:42:45.616', NULL, 0, N'Detectores Humo');


SET IDENTITY_INSERT SSI.dbo.storage OFF;
PRINT 'storage table done...';
    COMMIT
END TRY
BEGIN CATCH

    IF @@TRANCOUNT > 0
		PRINT 'ROLLBACK';
        ROLLBACK
END CATCH