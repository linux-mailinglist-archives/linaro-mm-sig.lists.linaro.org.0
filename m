Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3428B1A8446
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 18:12:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 50E1A6604B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Apr 2020 16:12:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 432F46604C; Tue, 14 Apr 2020 16:12:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D36EB61999;
	Tue, 14 Apr 2020 16:11:43 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2CEE061873
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 16:11:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1D0FB61999; Tue, 14 Apr 2020 16:11:36 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr140047.outbound.protection.outlook.com [40.107.14.47])
 by lists.linaro.org (Postfix) with ESMTPS id 9160661873
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Apr 2020 16:11:29 +0000 (UTC)
Received: from DB6PR1001CA0003.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:4:b7::13)
 by DBBPR08MB4234.eurprd08.prod.outlook.com (2603:10a6:10:c1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Tue, 14 Apr
 2020 16:11:26 +0000
Received: from DB5EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:b7:cafe::91) by DB6PR1001CA0003.outlook.office365.com
 (2603:10a6:4:b7::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Tue, 14 Apr 2020 16:11:26 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT022.mail.protection.outlook.com (10.152.20.171) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Tue, 14 Apr 2020 16:11:26 +0000
Received: ("Tessian outbound 1425309d4c0b:v50");
 Tue, 14 Apr 2020 16:11:26 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 26e05b3691a9ae19
X-CR-MTA-TID: 64aa7808
Received: from 89ec91102164.2
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 CF887E83-87FF-4846-87F7-02781593BB87.1; 
 Tue, 14 Apr 2020 16:11:21 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 89ec91102164.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 14 Apr 2020 16:11:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WsAzFIbfjFkGjp1icb26SWzM9WbH2pQ/fdTeEd4fjfZgRwy+nUTaM1nyizrLE7A7gvLkqCKmFhCXAVvSemOkcxqA00nuq9mp/eNqhJokvAxhMoz+6xHDnS39OM3SBgOtnAXwtJBhO2OVXpZuhVv3PaJ7As+HD76+pzf7MEnHNA7iXfjEmcafBtAyB/0QUTMQo2OfFVLZRJEA7QOqQRXPBQGaXnXsxvWOGinw0AQPKwupMSNxSGhtOG5Vdh241gvXI0/wkkqkIDULhful5MtMp86Oup4l/Q32nxz34M1LJQpR6ZnuTP6fG2B2Voa5BsyJOIrVIW1g0HYtjAqKtrTJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9yydiogp/vpSSLH9eN5GUoWOL0zbpmAr1t2AyqgGKMk=;
 b=ABt9zGaVau9grSJ7QHP3B6uvsdTmghRuyjkmoA5IsaaCmeeJvL/6gYJYN0Mk/INjTDh0g5zNfe+FG03xLj7EkkBDqDWTXly7o824Y2uqd+vreKRSMjWOsZElMI9D5ZINf1ZRjvk1bgnsBZlI3mw6q6G7rlm5P1bL7tiARHFf/ZVfIYMsa1Mo5QSJ6YQnPGo+r25Ng487Z2epq8IZp3dqDPauZEU1s6u9B24+0S+qbFq4fB6SCfSMazHoVqOLMXVNJmPYAXuF8XESOk5lLYswrR+fYYd6oLcE04AaPzeL55Cfqu6KgjKAol7fzDQEKCnDlEE6oYgR7U4LOYOCcbZYfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com (2603:10a6:803:c1::32)
 by VI1PR08MB3245.eurprd08.prod.outlook.com (2603:10a6:803:48::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 16:11:18 +0000
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a]) by VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 16:11:18 +0000
Date: Tue, 14 Apr 2020 18:11:14 +0200
From: =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20200414161114.GA1949@e123356-lin.trondheim.arm.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
Content-Disposition: inline
In-Reply-To: <20200414142810.GA958163@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LNXP265CA0059.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::23) To VI1PR08MB3885.eurprd08.prod.outlook.com
 (2603:10a6:803:c1::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from e123356-lin.trondheim.arm.com (217.140.106.39) by
 LNXP265CA0059.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5d::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.17 via Frontend Transport; Tue, 14 Apr 2020 16:11:16 +0000
X-Originating-IP: [217.140.106.39]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 43672d53-038d-45b0-0471-08d7e08e7c05
X-MS-TrafficTypeDiagnostic: VI1PR08MB3245:|VI1PR08MB3245:|DBBPR08MB4234:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4234B0E249746987947F1E3690DA0@DBBPR08MB4234.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 0373D94D15
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB3885.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(956004)(186003)(16526019)(7696005)(5660300002)(55016002)(6916009)(7416002)(4326008)(1076003)(8936002)(8676002)(66946007)(66476007)(66556008)(26005)(86362001)(81156014)(54906003)(52116002)(478600001)(316002)(33656002)(2906002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Dhv93vAQAhJb7czi4xmPXZLRqgicO3I0uOdw61eZSj3N3Dg/Ch4kSnw/7PCjKjzOcGvpoL8o3QZQ9pQ6SsOd82pEGbNC2pcRipVup+I71PHro2P0kr1gqN+RZmfyLIJFp8Cu+OSQgs+RwC/cp+A0tPufndXy57JDKh8gxwPU1CO8A19RAZ5BBA1kUJ2D4G2lJ9vuVrW1M4hf6M9xYQhn1hlvus63RbXwGf2Ccxkq54dokoE+BFuWuUmXtxIxRbU9rHavqVrnd5PYAmlc38FekQmu9enMhlpo/hr3Z1esfWw27bz1afNAwWzjJyOmzzX/bM+q/0PIQVAMzK+ftuYP5EdpjA+1fJfgNvOK8Cl2Qik2WkeOr5k13DlAm81e2H6JduBIsmp1y4dnPwTb5h3NnqiUE4o2b4Rt+s/JmtkpjbKfj2gDXN4Oy24SKOaiJfZc
X-MS-Exchange-AntiSpam-MessageData: 1uF5qULJhFHboj8XThKK5tcPpV+cUpY4PgA02oaeYrbTY1qLPiPCKiYdXi87TZHbVbsHdYd7+ekqCjLTHC1OfYJBg5/9x8RbMsJtBgultKeA/+oB0oLtbhwSNXwMGnggI+sJm1KhWUhXmwm172DPLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3245
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT022.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(46966005)(2906002)(70586007)(70206006)(8936002)(956004)(336012)(356005)(47076004)(82740400003)(81166007)(4326008)(33656002)(55016002)(16526019)(186003)(1076003)(6862004)(316002)(54906003)(5660300002)(7696005)(26005)(478600001)(107886003)(8676002)(26826003)(86362001)(81156014);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 15aa1b9e-0b0a-4c33-e3db-08d7e08e76c7
X-Forefront-PRVS: 0373D94D15
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bkr9Gb5oj+v4kwlo7GWXw9DLKmNUUkLVN0UnrCFMUr0B0dE9oO6K3MmzCNSZb3f38HGcRX3YRRdg5w4dr3lPdjOhGhMspiCjK6BrkJ9aQKEaiuKI6/Z9R315VyGS5B5KneXsg3SkaXxHK+JB0GJ0jshv/cM/uiqOZXnZ7xq7pn5dFaBUaIeRUVVMLYwPCfHBgQ6sy4Zq89GoQirHM7Nks8U4rQ+uvRYb+Lq64xl7e3eR860vtYqxewdYksGSFDA8voLpuY7epiQVgcQ/B+bOKgmsVAmXS4eeYpiAEK6PPIzP0Q1Gvw9VS7bT6/fXOaXhtbMDq/QGk1APd+iqIs6C2Kb/dSS8bfjhvu3jZA5coAo/f+yEvR8YWkuYIZcsjX9zRemxOussmCbMv6Q0HZXMwRrr4v7Vn0BdwKWX2aG5SHMKNUDy3Baj8TqOCms/SnYqQP/AA1TI9+rsV9q9t3Qcr2OLGArCKHvGvNmfuYEE00zaEKk8t0Po+d752W7Z/2ivkxkqNGKj1AOlU4zdONZj8w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2020 16:11:26.6505 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 43672d53-038d-45b0-0471-08d7e08e7c05
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4234
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, nd@arm.com, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] staging: android: ion: Skip sync if not
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

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgMDQ6Mjg6MTBQTSArMDIwMCwgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOgo+IE9uIFR1ZSwgQXByIDE0LCAyMDIwIGF0IDA0OjE4OjQ3UE0gKzAyMDAsIMOv
wr/CvXJqYW4gRWlkZSB3cm90ZToKPiA+IE9ubHkgc3luYyB0aGUgc2ctbGlzdCBvZiBhbiBJb24g
ZG1hLWJ1ZiBhdHRhY2htZW50IHdoZW4gdGhlIGF0dGFjaG1lbnQKPiA+IGlzIGFjdHVhbGx5IG1h
cHBlZCBvbiB0aGUgZGV2aWNlLgo+ID4gCj4gPiBkbWEtYnVmcyBtYXkgYmUgc3luY2VkIGF0IGFu
eSB0aW1lLiBJdCBjYW4gYmUgcmVhY2hlZCBmcm9tIHVzZXIgc3BhY2UKPiA+IHZpYSBETUFfQlVG
X0lPQ1RMX1NZTkMsIHNvIHRoZXJlIGFyZSBubyBndWFyYW50ZWVzIGZyb20gY2FsbGVycyBvbiB3
aGVuCj4gPiBzeW5jcyBtYXkgYmUgYXR0ZW1wdGVkLCBhbmQgZG1hX2J1Zl9lbmRfY3B1X2FjY2Vz
cygpIGFuZAo+ID4gZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKCkgbWF5IG5vdCBiZSBwYWlyZWQu
Cj4gPiAKPiA+IFNpbmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3MgaXNuJ3Qgc2V0IHVwIHVu
dGlsIHRoZSBidWZmZXIgaXMgdXNlZAo+ID4gb24gdGhlIGRldmljZSwgYW5kIGRtYV9tYXBfc2co
KSBpcyBjYWxsZWQgb24gaXQsIHRoZSBkbWFfYWRkcmVzcyB3aWxsIGJlCj4gPiBOVUxMIGlmIHN5
bmMgaXMgYXR0ZW1wdGVkIG9uIHRoZSBkbWEtYnVmIGJlZm9yZSBpdCdzIG1hcHBlZCBvbiBhIGRl
dmljZS4KPiA+IAo+ID4gQmVmb3JlIHY1LjAgKGNvbW1pdCA1NTg5N2FmNjMwOTEgKCJkbWEtZGly
ZWN0OiBtZXJnZSBzd2lvdGxiX2RtYV9vcHMKPiA+IGludG8gdGhlIGRtYV9kaXJlY3QgY29kZSIp
KSB0aGlzIHdhcyBhIHByb2JsZW0gYXMgdGhlIGRtYS1hcGkgKGF0IGxlYXN0Cj4gPiB0aGUgc3dp
b3RsYl9kbWFfb3BzIG9uIGFybTY0KSB3b3VsZCB1c2UgdGhlIHBvdGVudGlhbGx5IGludmFsaWQK
PiA+IGRtYV9hZGRyZXNzLiBIb3cgdGhhdCBmYWlsZWQgZGVwZW5kZWQgb24gaG93IHRoZSBkZXZp
Y2UgaGFuZGxlZCBwaHlzaWNhbAo+ID4gYWRkcmVzcyAwLiBJZiAwIHdhcyBhIHZhbGlkIGFkZHJl
c3MgdG8gcGh5c2ljYWwgcmFtLCB0aGF0IHBhZ2Ugd291bGQgZ2V0Cj4gPiBmbHVzaGVkIGEgbG90
LCB3aGlsZSB0aGUgYWN0dWFsIHBhZ2VzIGluIHRoZSBidWZmZXIgd291bGQgbm90IGdldCBzeW5j
ZWQKPiA+IGNvcnJlY3RseS4gV2hpbGUgaWYgMCBpcyBhbiBpbnZhbGlkIHBoeXNpY2FsIGFkZHJl
c3MgaXQgbWF5IGNhdXNlIGEKPiA+IGZhdWx0IGFuZCB0cmlnZ2VyIGEgY3Jhc2guCj4gPiAKPiA+
IEluIHY1LjAgdGhpcyB3YXMgaW5jaWRlbnRhbGx5IGZpeGVkIGJ5IGNvbW1pdCA1NTg5N2FmNjMw
OTEgKCJkbWEtZGlyZWN0Ogo+ID4gbWVyZ2Ugc3dpb3RsYl9kbWFfb3BzIGludG8gdGhlIGRtYV9k
aXJlY3QgY29kZSIpLCBhcyB0aGlzIG1vdmVkIHRoZQo+ID4gZG1hLWFwaSB0byB1c2UgdGhlIHBh
Z2UgcG9pbnRlciBpbiB0aGUgc2dfbGlzdCwgYW5kIChmb3IgSW9uIGJ1ZmZlcnMgYXQKPiA+IGxl
YXN0KSB0aGlzIHdpbGwgYWx3YXlzIGJlIHZhbGlkIGlmIHRoZSBzZ19saXN0IGV4aXN0cyBhdCBh
bGwuCj4gPiAKPiA+IEJ1dCwgdGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2VkIGluIHY1LjMgd2l0
aAo+ID4gY29tbWl0IDQ0OWZhNTRkNjgxNSAoImRtYS1kaXJlY3Q6IGNvcnJlY3QgdGhlIHBoeXNp
Y2FsIGFkZHIgaW4KPiA+IGRtYV9kaXJlY3Rfc3luY19zZ19mb3JfY3B1L2RldmljZSIpIG1vdmVz
IHRoZSBkbWEtYXBpIGJhY2sgdG8gdGhlIG9sZAo+ID4gYmVoYXZpb3VyIGFuZCBwaWNrcyB0aGUg
ZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52YWxpZC4KPiA+IAo+ID4gZG1hLWJ1ZiBjb3JlIGRv
ZXNuJ3QgZW5zdXJlIHRoYXQgdGhlIGJ1ZmZlciBpcyBtYXBwZWQgb24gdGhlIGRldmljZSwgYW5k
Cj4gPiB0aHVzIGhhdmUgYSB2YWxpZCBzZ19saXN0LCBiZWZvcmUgY2FsbGluZyB0aGUgZXhwb3J0
ZXIncwo+ID4gYmVnaW5fY3B1X2FjY2Vzcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogw6/Cv8K9
cmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdp
bmcvYW5kcm9pZC9pb24vaW9uLmMgfCAxMiArKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBSZXN1Ym1pdCB3aXRob3V0IGRpc2NsYWltZXIs
IHNvcnJ5IGFib3V0IHRoYXQuCj4gPiAKPiA+IFRoaXMgc2VlbXMgdG8gYmUgcGFydCBvZiBhIGJp
Z2dlciBpc3N1ZSB3aGVyZSBkbWEtYnVmIGV4cG9ydGVycyBhc3N1bWUKPiA+IHRoYXQgdGhlaXIg
ZG1hLWJ1ZiBiZWdpbl9jcHVfYWNjZXNzIGFuZCBlbmRfY3B1X2FjY2VzcyBjYWxsYmFja3MgaGF2
ZSBhCj4gPiBjZXJ0YWluIGd1YXJhbnRlZWQgYmVoYXZpb3IsIHdoaWNoIGlzbid0IGVuc3VyZWQg
YnkgZG1hLWJ1ZiBjb3JlLgo+ID4gCj4gPiBUaGlzIHBhdGNoIGZpeGVzIHRoaXMgaW4gaW9uIG9u
bHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVkIGZvcgo+ID4gb3RoZXIgZXhwb3J0ZXJz
LCBlaXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiA+IGRt
YS1idWYgY29yZSBiZWZvcmUgY2FsbGluZyBpbnRvIHRoZSBleHBvcnRlcnMuCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgYi9kcml2ZXJzL3N0
YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiA+IGluZGV4IDM4YjUxZWFjZTRmOS4uN2I3NTJiYTBj
YjZkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4g
PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMKPiAKPiBOb3cgdGhhdCB3
ZSBoYXZlIHRoZSBkbWEtYnVmZiBzdHVmZiBpbiB0aGUgdHJlZSwgZG8gd2UgZXZlbiBuZWVkIHRo
ZQo+IGlvbiBjb2RlIGluIHRoZSBrZXJuZWwgYW55bW9yZT8gIENhbid0IHdlIGRlbGV0ZSBpdCBu
b3c/CgpJdCBsb29rcyBsaWtlIHRoZSBuZXcgZG1hLWhlYXBzIGhhdmUgdGhlIHNhbWUgaXNzdWUg
YXMgaW9uLiBUaGUKaGVhcC1oZWxwZXJzIGFsc28gZG8gZG1hX3N5bmNfc2dfZm9yX2RldmljZSgp
IHVuY29uZGl0aW9uYWxseSBvbgplbmRfY3B1X2FjY2VzcyB3aGljaCBtYXkgaGFwcGVuIGJlZm9y
ZSBkbWFfbWFwX3NnKCksIGxlYWRpbmcgdG8gdXNlIG9mCnRoZSAwIGRtYV9hZGRyZXNzIGluIHRo
ZSBzZyBsaXN0IG9mIGEsIHlldCB1bm1hcHBlZCwgYXR0YWNobWVudC4KCkl0IGNvdWxkIGJlIGZp
eGVkIGluIGRtYS1oZWFwcyBqdXN0IGxpa2UgdGhpcyBwYXRjaCBkb2VzIGZvciBpb24uIElzCnBh
dGNoIGEgdmFsaWQgd2F5IHRvIGZpeCB0aGlzIHByb2JsZW0/IE9yLCBzaG91bGQgdGhpcyByYXRo
ZXIgYmUgaGFuZGxlZAppbiBkbWEtYnVmIGNvcmUgYnkgdHJhY2tpbmcgdGhlIG1hcHBlZCBzdGF0
ZSBvZiBhdHRhY2htZW50cyB0aGVyZT8KCi0tIArDr8K/wr1yamFuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
