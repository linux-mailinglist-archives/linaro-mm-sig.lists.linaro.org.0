Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D601A7F7C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 16:21:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CE19266047
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 14:21:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BAE2466048; Tue, 14 Apr 2020 14:21:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,UNPARSEABLE_RELAY
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5DD0B61873;
	Tue, 14 Apr 2020 14:20:35 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5A08360795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 14:20:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4777461873; Tue, 14 Apr 2020 14:20:32 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50068.outbound.protection.outlook.com [40.107.5.68])
 by lists.linaro.org (Postfix) with ESMTPS id 63DD160795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 14:20:30 +0000 (UTC)
Received: from AM6P193CA0082.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:88::23)
 by AM0PR08MB4465.eurprd08.prod.outlook.com (2603:10a6:208:139::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 14:20:27 +0000
Received: from VE1EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:88:cafe::c2) by AM6P193CA0082.outlook.office365.com
 (2603:10a6:209:88::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Tue, 14 Apr 2020 14:20:27 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT009.mail.protection.outlook.com (10.152.18.92) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 14:20:25 +0000
Received: ("Tessian outbound af37c2b81632:v50");
 Tue, 14 Apr 2020 14:20:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9cd3325e54d7a9a2
X-CR-MTA-TID: 64aa7808
Received: from 56e8c3965797.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 6AB08F36-6864-41D0-823F-0AE3BB2C1C3F.1; 
 Tue, 14 Apr 2020 14:20:20 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 56e8c3965797.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 14:20:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ebpxkd8D6c41cV5AMCM4D7BVbRZSjUFS+6jE+qEzbfiDcVHfrKIWIAlD0m+OA7eJNkHNPhEgSSSuy9orDR4ROJDT3nAsG5wr9P4xQ7c4oOYP3+JurV+dz7fkpvHXzx3DtcNtcvD/FMxUzCx5qGwsWsNA3nYq532U4vX+fTGpeZ2eZt7yborfCLe9K53Gzvds8s8cTnPwujRNks9+CNdCg04lgFrdlMzsAZqm9s2aYv4ddmBp9JwNCCuOFf45WzSjbKLjtAlQjkDdW3OJe4XjoFbEImbcmrfM7lA1O6xZK5qjACglFA5z+5hI63xs281NMZQyXzbP0oggm1yvhVeqRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yot3Zxj9fu5OJnFKoioziT1z8b6vkpN8f/vIFsaKci8=;
 b=MW8wCF4r14msGevWpf4egYtM/cqFG60QVVctpcRNKAMFwlcvYcmTB0mx0PNz/qKJzu4LFxDvPpWEiBnxvXF9J3vucgQVJ4BoS93bKkH/xaGiYF3xaHOT9MuU8ucqlLzbQuEMMB+pQbw1/jHmMWukROcRl1DByZaewHMSer4El3lqqcR1BmSPzQq3KjXN3THSfP8ya8ajG3mXxTQHDdQBLPCahstA/xKq3uI2mmGUZiRbVS8WEoNSmw70Zgz75bb/kz0uA2sVefAR2Fhe5LBJsio+8t7zUoyl995IZOedwrt52s5O8e+npOgnTaogH23ETX/70G8L7b3lUcEawqUuiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 40.67.248.234) smtp.rcpttodomain=lists.linaro.org smtp.mailfrom=arm.com;
 dmarc=bestguesspass action=none header.from=arm.com; dkim=none (message not
 signed); arc=none
Received: from VI1P194CA0033.EURP194.PROD.OUTLOOK.COM (2603:10a6:803:3c::22)
 by DBBPR08MB4235.eurprd08.prod.outlook.com (2603:10a6:10:c2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 14:20:16 +0000
Received: from VE1EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:803:3c:cafe::63) by VI1P194CA0033.outlook.office365.com
 (2603:10a6:803:3c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Tue, 14 Apr 2020 14:20:16 +0000
Authentication-Results-Original: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 40.67.248.234 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.67.248.234; helo=nebula.arm.com;
Received: from nebula.arm.com (40.67.248.234) by
 VE1EUR03FT023.mail.protection.outlook.com (10.152.18.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 14:20:15 +0000
Received: from AZ-NEU-EX03.Arm.com (10.251.24.31) by AZ-NEU-EX03.Arm.com
 (10.251.24.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1415.2; Tue, 14 Apr
 2020 14:19:18 +0000
Received: from e123356-lin.trondheim.arm.com (10.40.16.105) by mail.arm.com
 (10.251.24.31) with Microsoft SMTP Server id 15.1.1415.2 via Frontend
 Transport; Tue, 14 Apr 2020 14:19:17 +0000
From: =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide@arm.com>
To: 
Date: Tue, 14 Apr 2020 16:18:47 +0200
Message-ID: <20200414141849.55654-1-orjan.eide@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414134629.54567-1-orjan.eide@arm.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 1
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report-Untrusted: CIP:40.67.248.234; CTRY:IE; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:nebula.arm.com; PTR:InfoDomainNonexistent;
 CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(136003)(346002)(376002)(46966005)(186003)(36756003)(86362001)(5660300002)(82740400003)(316002)(7416002)(54906003)(8936002)(70206006)(70586007)(8676002)(478600001)(81166007)(336012)(47076004)(1076003)(81156014)(2906002)(6666004)(356005)(26005)(4326008)(2616005)(109986005)(7696005)(426003)(266003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 740e664c-8f4c-49f1-734d-08d7e07ef9fc
X-MS-TrafficTypeDiagnostic: DBBPR08MB4235:|AM0PR08MB4465:
X-Microsoft-Antispam-PRVS: <AM0PR08MB4465A3681DA1263517F3F7C690DA0@AM0PR08MB4465.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 0373D94D15
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: vwt6JmX/jYgYH221sT3He0dXJ9cM5UO91FaGM6MJ3VQTfWd1/8g6S0WXYq5PuvSVFd9o7Q/h2aDk8P/V+LX84kpKBCg7NvPVPD0SDMSpxzpTLCAc+YgC3HQVHfEyUac8WmV9TKGKcSYIWDkvS6LsAPzA7Af0bF5gab8UPFxm3VYMnNGg7u2gdus2TKVv1pB++DrcTsTTye8OwZxNjYR0yMC7CdaG+6y6UC64iPn37Cy7vqs1DISoQbQFzwb+FAG6c/J62jqxHwbFT2KelceKSE10KSw0ab3EXRTbxsteWG5C2KNk4RLtzj1JS8vOwByZFwhsiYqTGvJKq6n8GVi4emgcH11elcnOyz01WMXUQuXAPhQiB7iixGSQetVaMGJ2gitGlyi/G5lqzh4gxWYkoHzeT4OK5ssV+ryWDqoUQJ7+WWw7GPZxMc4hAE4n7dZDKG/+nE0bxWkjzNShrRdeK/oK8dM1uxVQWv5b4vpTdQJWX79/Z8bTbdXnVZ09DVqPcJQkKOyaI8TOjLKU6hugBhjRCJJTu9E1pEHKAEPsq7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4235
Original-Authentication-Results: spf=pass (sender IP is 40.67.248.234)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=none (message not signed)
 header.d=none;lists.linaro.org; dmarc=bestguesspass action=none
 header.from=arm.com;
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(346002)(46966005)(336012)(186003)(5660300002)(2616005)(82740400003)(47076004)(4326008)(109986005)(81156014)(107886003)(81166007)(1076003)(8936002)(8676002)(70586007)(70206006)(86362001)(6666004)(426003)(7696005)(26005)(478600001)(316002)(54906003)(36906005)(2906002)(36756003)(26826003)(266003);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: c2b39d7b-d07f-4370-27b8-08d7e07ef3ba
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lrSkzSBMoNWhkJJBM3iL6Y2YYIvRV6tXhelxo3jdQKjS1Bg6XfcLKYKFP4n2Ze4/RaYRutIqOkUBfNwPIUH9zg0hbs0+spV2hTd8pq1FXw0rYLa50fMCYg4TuEhD/Z9aD/mNEi4R0BxxUeCEzR1jbpENyx3SXf0W8FZ2tqtlJcyRgB9xPu2mWDs5GByyOW5vEOWA8+4g/2Jb7Rx2bUP/rH+wgDHaN0kPlI1MIc56WcpxzBC8zWwclI8r1TMpPEYZHTVIx7LwJH7Ck8AgjmZaCfI27XJUSOOyrklDGGEQVvfFZb1Y8vGeEE6xKaq0IwsmtWEpNWxc4+nBJWhHk+A3iZ1aeiwRiwr13ScC1i8tirSklLch76w4vfeIQ9Iot5JQoZ0JJiBFIFJo98C3s4pLA6btBoK/0p6a91sBkkc2UBQ11vclqfCe49DhZvzNvxDIR0BUFKfGJFlRsx9+HwxMw+83ddMvxZZa/EnvHzzV0/vJhafNWEGNJyoyDmbGxwPn448rJLMiHeZpce0Se+1zXFeQayXv4H2HMkeVdjC54bg=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 14:20:25.9626 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 740e664c-8f4c-49f1-734d-08d7e07ef9fc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4465
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, nd@arm.com, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 john.stultz@linaro.org, Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
	mapped
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T25seSBzeW5jIHRoZSBzZy1saXN0IG9mIGFuIElvbiBkbWEtYnVmIGF0dGFjaG1lbnQgd2hlbiB0
aGUgYXR0YWNobWVudAppcyBhY3R1YWxseSBtYXBwZWQgb24gdGhlIGRldmljZS4KCmRtYS1idWZz
IG1heSBiZSBzeW5jZWQgYXQgYW55IHRpbWUuIEl0IGNhbiBiZSByZWFjaGVkIGZyb20gdXNlciBz
cGFjZQp2aWEgRE1BX0JVRl9JT0NUTF9TWU5DLCBzbyB0aGVyZSBhcmUgbm8gZ3VhcmFudGVlcyBm
cm9tIGNhbGxlcnMgb24gd2hlbgpzeW5jcyBtYXkgYmUgYXR0ZW1wdGVkLCBhbmQgZG1hX2J1Zl9l
bmRfY3B1X2FjY2VzcygpIGFuZApkbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3MoKSBtYXkgbm90IGJl
IHBhaXJlZC4KClNpbmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3MgaXNuJ3Qgc2V0IHVwIHVu
dGlsIHRoZSBidWZmZXIgaXMgdXNlZApvbiB0aGUgZGV2aWNlLCBhbmQgZG1hX21hcF9zZygpIGlz
IGNhbGxlZCBvbiBpdCwgdGhlIGRtYV9hZGRyZXNzIHdpbGwgYmUKTlVMTCBpZiBzeW5jIGlzIGF0
dGVtcHRlZCBvbiB0aGUgZG1hLWJ1ZiBiZWZvcmUgaXQncyBtYXBwZWQgb24gYSBkZXZpY2UuCgpC
ZWZvcmUgdjUuMCAoY29tbWl0IDU1ODk3YWY2MzA5MSAoImRtYS1kaXJlY3Q6IG1lcmdlIHN3aW90
bGJfZG1hX29wcwppbnRvIHRoZSBkbWFfZGlyZWN0IGNvZGUiKSkgdGhpcyB3YXMgYSBwcm9ibGVt
IGFzIHRoZSBkbWEtYXBpIChhdCBsZWFzdAp0aGUgc3dpb3RsYl9kbWFfb3BzIG9uIGFybTY0KSB3
b3VsZCB1c2UgdGhlIHBvdGVudGlhbGx5IGludmFsaWQKZG1hX2FkZHJlc3MuIEhvdyB0aGF0IGZh
aWxlZCBkZXBlbmRlZCBvbiBob3cgdGhlIGRldmljZSBoYW5kbGVkIHBoeXNpY2FsCmFkZHJlc3Mg
MC4gSWYgMCB3YXMgYSB2YWxpZCBhZGRyZXNzIHRvIHBoeXNpY2FsIHJhbSwgdGhhdCBwYWdlIHdv
dWxkIGdldApmbHVzaGVkIGEgbG90LCB3aGlsZSB0aGUgYWN0dWFsIHBhZ2VzIGluIHRoZSBidWZm
ZXIgd291bGQgbm90IGdldCBzeW5jZWQKY29ycmVjdGx5LiBXaGlsZSBpZiAwIGlzIGFuIGludmFs
aWQgcGh5c2ljYWwgYWRkcmVzcyBpdCBtYXkgY2F1c2UgYQpmYXVsdCBhbmQgdHJpZ2dlciBhIGNy
YXNoLgoKSW4gdjUuMCB0aGlzIHdhcyBpbmNpZGVudGFsbHkgZml4ZWQgYnkgY29tbWl0IDU1ODk3
YWY2MzA5MSAoImRtYS1kaXJlY3Q6Cm1lcmdlIHN3aW90bGJfZG1hX29wcyBpbnRvIHRoZSBkbWFf
ZGlyZWN0IGNvZGUiKSwgYXMgdGhpcyBtb3ZlZCB0aGUKZG1hLWFwaSB0byB1c2UgdGhlIHBhZ2Ug
cG9pbnRlciBpbiB0aGUgc2dfbGlzdCwgYW5kIChmb3IgSW9uIGJ1ZmZlcnMgYXQKbGVhc3QpIHRo
aXMgd2lsbCBhbHdheXMgYmUgdmFsaWQgaWYgdGhlIHNnX2xpc3QgZXhpc3RzIGF0IGFsbC4KCkJ1
dCwgdGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2VkIGluIHY1LjMgd2l0aApjb21taXQgNDQ5ZmE1
NGQ2ODE1ICgiZG1hLWRpcmVjdDogY29ycmVjdCB0aGUgcGh5c2ljYWwgYWRkciBpbgpkbWFfZGly
ZWN0X3N5bmNfc2dfZm9yX2NwdS9kZXZpY2UiKSBtb3ZlcyB0aGUgZG1hLWFwaSBiYWNrIHRvIHRo
ZSBvbGQKYmVoYXZpb3VyIGFuZCBwaWNrcyB0aGUgZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52
YWxpZC4KCmRtYS1idWYgY29yZSBkb2Vzbid0IGVuc3VyZSB0aGF0IHRoZSBidWZmZXIgaXMgbWFw
cGVkIG9uIHRoZSBkZXZpY2UsIGFuZAp0aHVzIGhhdmUgYSB2YWxpZCBzZ19saXN0LCBiZWZvcmUg
Y2FsbGluZyB0aGUgZXhwb3J0ZXIncwpiZWdpbl9jcHVfYWNjZXNzLgoKU2lnbmVkLW9mZi1ieTog
w5hyamFuIEVpZGUgPG9yamFuLmVpZGVAYXJtLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvYW5k
cm9pZC9pb24vaW9uLmMgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspCgpSZXN1Ym1pdCB3aXRob3V0IGRpc2NsYWltZXIsIHNvcnJ5IGFib3V0IHRoYXQu
CgpUaGlzIHNlZW1zIHRvIGJlIHBhcnQgb2YgYSBiaWdnZXIgaXNzdWUgd2hlcmUgZG1hLWJ1ZiBl
eHBvcnRlcnMgYXNzdW1lCnRoYXQgdGhlaXIgZG1hLWJ1ZiBiZWdpbl9jcHVfYWNjZXNzIGFuZCBl
bmRfY3B1X2FjY2VzcyBjYWxsYmFja3MgaGF2ZSBhCmNlcnRhaW4gZ3VhcmFudGVlZCBiZWhhdmlv
ciwgd2hpY2ggaXNuJ3QgZW5zdXJlZCBieSBkbWEtYnVmIGNvcmUuCgpUaGlzIHBhdGNoIGZpeGVz
IHRoaXMgaW4gaW9uIG9ubHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVkIGZvcgpvdGhl
ciBleHBvcnRlcnMsIGVpdGhlciBoYW5kbGVkIGxpa2UgdGhpcyBpbiBlYWNoIGV4cG9ydGVyLCBv
ciBpbgpkbWEtYnVmIGNvcmUgYmVmb3JlIGNhbGxpbmcgaW50byB0aGUgZXhwb3J0ZXJzLgoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMvc3Rh
Z2luZy9hbmRyb2lkL2lvbi9pb24uYwppbmRleCAzOGI1MWVhY2U0ZjkuLjdiNzUyYmEwY2I2ZCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwpAQCAtMTczLDYgKzE3Myw3IEBAIHN0cnVjdCBp
b25fZG1hX2J1Zl9hdHRhY2htZW50IHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXY7CiAJc3RydWN0IHNn
X3RhYmxlICp0YWJsZTsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpc3Q7CisJYm9vbCBtYXBwZWQ6MTsK
IH07CiAKIHN0YXRpYyBpbnQgaW9uX2RtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCkBAIC0xOTUsNiArMTk2LDcgQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9hdHRhY2goc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZiwKIAlhLT50YWJsZSA9IHRhYmxlOwogCWEtPmRldiA9IGF0dGFj
aG1lbnQtPmRldjsKIAlJTklUX0xJU1RfSEVBRCgmYS0+bGlzdCk7CisJYS0+bWFwcGVkID0gZmFs
c2U7CiAKIAlhdHRhY2htZW50LT5wcml2ID0gYTsKIApAQCAtMjMxLDYgKzIzMyw4IEBAIHN0YXRp
YyBzdHJ1Y3Qgc2dfdGFibGUgKmlvbl9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2htZW50LAogCQkJZGlyZWN0aW9uKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAKKwlhLT5tYXBwZWQgPSB0cnVlOworCiAJcmV0dXJuIHRhYmxlOwogfQogCkBAIC0yMzgs
NiArMjQyLDEwIEBAIHN0YXRpYyB2b2lkIGlvbl91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCiAJCQkgICAgICBzdHJ1Y3Qgc2dfdGFibGUgKnRhYmxl
LAogCQkJICAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQogeworCXN0cnVj
dCBpb25fZG1hX2J1Zl9hdHRhY2htZW50ICphID0gYXR0YWNobWVudC0+cHJpdjsKKworCWEtPm1h
cHBlZCA9IGZhbHNlOworCiAJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNn
bCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOwogfQogCkBAIC0yOTcsNiArMzA1LDggQEAgc3Rh
dGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYsCiAKIAltdXRleF9sb2NrKCZidWZmZXItPmxvY2spOwogCWxpc3RfZm9yX2VhY2hfZW50cnko
YSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsKKwkJaWYgKCFhLT5tYXBwZWQpCisJCQlj
b250aW51ZTsKIAkJZG1hX3N5bmNfc2dfZm9yX2NwdShhLT5kZXYsIGEtPnRhYmxlLT5zZ2wsIGEt
PnRhYmxlLT5uZW50cywKIAkJCQkgICAgZGlyZWN0aW9uKTsKIAl9CkBAIC0zMjAsNiArMzMwLDgg
QEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAq
ZG1hYnVmLAogCiAJbXV0ZXhfbG9jaygmYnVmZmVyLT5sb2NrKTsKIAlsaXN0X2Zvcl9lYWNoX2Vu
dHJ5KGEsICZidWZmZXItPmF0dGFjaG1lbnRzLCBsaXN0KSB7CisJCWlmICghYS0+bWFwcGVkKQor
CQkJY29udGludWU7CiAJCWRtYV9zeW5jX3NnX2Zvcl9kZXZpY2UoYS0+ZGV2LCBhLT50YWJsZS0+
c2dsLCBhLT50YWJsZS0+bmVudHMsCiAJCQkJICAgICAgIGRpcmVjdGlvbik7CiAJfQotLSAKMi4x
Ny4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
