Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 524501ACD9C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 18:26:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5614866072
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2020 16:26:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 40BC266073; Thu, 16 Apr 2020 16:26:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B03BE66049;
	Thu, 16 Apr 2020 16:26:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3AC8D66033
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 16:26:11 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1E6F966049; Thu, 16 Apr 2020 16:26:11 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2052.outbound.protection.outlook.com [40.107.22.52])
 by lists.linaro.org (Postfix) with ESMTPS id 98B2C66033
 for <linaro-mm-sig@lists.linaro.org>; Thu, 16 Apr 2020 16:26:09 +0000 (UTC)
Received: from AM6P191CA0074.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8a::15)
 by VI1PR08MB4016.eurprd08.prod.outlook.com (2603:10a6:803:ed::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Thu, 16 Apr
 2020 16:26:07 +0000
Received: from AM5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:8a:cafe::27) by AM6P191CA0074.outlook.office365.com
 (2603:10a6:209:8a::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Thu, 16 Apr 2020 16:26:07 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT062.mail.protection.outlook.com (10.152.17.120) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.18 via Frontend Transport; Thu, 16 Apr 2020 16:26:06 +0000
Received: ("Tessian outbound a45624f5910b:v50");
 Thu, 16 Apr 2020 16:26:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fa3ba1870b24abd5
X-CR-MTA-TID: 64aa7808
Received: from 5aae0455c5e3.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 21E994C9-E8E4-41D2-8AC2-F7CDD84DA639.1; 
 Thu, 16 Apr 2020 16:26:00 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 5aae0455c5e3.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 16 Apr 2020 16:26:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lGs5soOMZg1HYdXl2Iu3khPYqyWpeh3JDNAKZdJBt80epV1OwSeJ/ZC5PkJAJ/Y1dCrA+chauJ5ZlZLUjXts6DqO52eCICaeyrn2va22CXABVvx7SpdrS9df84hQKO6mDlJY6Fy4kz7X6FG/DcAobfU1N9pmIwkho0jl0gtOCI2kopyzQ8bh02ZJ6qVqrFvbIJOJxQ7lzSaY8HHe1qxTijOOGtom5L3kaVDgs5Iep6QEqbYmrTxLSJrR/8ixvx2UrednqQJUa197hqEOeU62lduAy5E3gxyEYfaPtLXBcDZ945opte3z+uW9Vtn/hiznDjJ53EHmU7P+RxppMCdyCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3BdR1s27uZzmOVlrwwjDDfw72acBDdM/TH3EcGetR4=;
 b=IAxii/XU/sU/GeIBenOpPoVRU3gr/Qq8ZgyulYkJfcMNU0gBSzmXyWn/4mHDi2QOVwWAgiCwGGeYUf/PLaPQsOEl8UVLZS3Y5elgjPs+Jlk1SaTSVDQHOgVuow+FP/11FoeI5NC3dkingD3cnPu/w1u0RJjNJBhe6RQ+IZjMATtKUg5dl8TJvHfLQ19mhGyiFhGLeoUduIXFgZ1hpRjD/sb9kjhvWSLNIZM/ggIGbod4OCNfNyinLNecBH9BqHnouWA6qB+8ri4OHlSZ5PHxCrbXLaj1PdJQLaZONAFu0+WitmdIlwa9pdLAZMJcFLAg54Dwt6aR/6JGYN4sPSSEww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com (2603:10a6:803:c1::32)
 by VI1PR08MB3821.eurprd08.prod.outlook.com (2603:10a6:803:b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Thu, 16 Apr
 2020 16:25:58 +0000
Received: from VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a]) by VI1PR08MB3885.eurprd08.prod.outlook.com
 ([fe80::c198:5f6d:b7d5:d80a%7]) with mapi id 15.20.2921.027; Thu, 16 Apr 2020
 16:25:58 +0000
Date: Thu, 16 Apr 2020 18:25:54 +0200
From: =?iso-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200416162554.GA34684@e123356-lin.trondheim.arm.com>
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200416094955.GM1163@kadam>
Content-Disposition: inline
In-Reply-To: <20200416094955.GM1163@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1::31) To VI1PR08MB3885.eurprd08.prod.outlook.com
 (2603:10a6:803:c1::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from e123356-lin.trondheim.arm.com (217.140.106.39) by
 LO2P123CA0067.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 16:25:56 +0000
X-Originating-IP: [217.140.106.39]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 90a87100-7563-4083-c040-08d7e222dd81
X-MS-TrafficTypeDiagnostic: VI1PR08MB3821:|VI1PR08MB3821:|VI1PR08MB4016:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB401616DCDF8298F69677BBC790D80@VI1PR08MB4016.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-Forefront-PRVS: 0375972289
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:VI1PR08MB3885.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(366004)(396003)(4326008)(16526019)(186003)(33656002)(2906002)(956004)(1076003)(66946007)(81156014)(8676002)(316002)(7416002)(66476007)(5660300002)(66556008)(86362001)(54906003)(7696005)(52116002)(478600001)(6916009)(8936002)(55016002)(26005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Zv8Nc5HFYTPJ9KYPU0GGQdfTY7ArLUJ8Sqej2v7WL/m1fnegNmK0S2LNPeMGb7fPX9QO5paJy2q3eH22jafSoGQvP5Trv+RJ6RkinYBYbYKj0XLrkIfNfIKF0VqYNEBgOm2301/eGKlFeYSu2pj68BqI9aOMfot7cORvma7FxUYN9q8SCw5PvgrBBVNY7IOihDlZVQ3+yzThPL6eHI2+if9esGlm+9mOLmqw7T8Q7cQxUox/ZPaAwLOOWDPpCGxzDGHsVA+VB2U2JWF3TjBVz3xSOe4Fu2siX0948Zk9Jkv6UvAhuu1EPkRx6KYA36zHIBYwxWpr7HbHnQ88oUJqnFi6Bt9dK1OfsOrrxEhMgEmCLsfgWMhI0wLpm80mK2U4cuRjc1X/Afcycz9Ca+o4YW6SwZla8igjrCLlE6c6kzewaevuA6dMYQwXjL6Nb1eb
X-MS-Exchange-AntiSpam-MessageData: 4jV8i4ahR/9jmwAtTANWLh4TicU8nrLMmeJUs2AH7NjrYsxyUf+CYAEdJMTGe1mm4/nd18rvBFZF4SgScsQ1GalUOd/sm35gmCZ2WpNuv8v9Krze370ARXYqX+mM3WcWSphRc1mPo+KeiW8HAZ2XCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3821
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Orjan.Eide@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE; SFTY:;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(46966005)(55016002)(16526019)(70586007)(356005)(81166007)(26005)(5660300002)(186003)(2906002)(36906005)(70206006)(478600001)(316002)(26826003)(107886003)(1076003)(956004)(6862004)(8676002)(7696005)(81156014)(33656002)(54906003)(4326008)(82740400003)(336012)(8936002)(47076004)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 06983a84-bf67-482f-f2ff-08d7e222d837
X-Forefront-PRVS: 0375972289
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: krT/RkQlEbbXjleIqc7Hwlg25QxTxU+xk5zkBUXGJpB07/mDgi+XmYvx5EU198wZmSWjoT1KJi1IaNcI47+q2Nla6Sd23umSrv414i2wqBYh5kaPv1EGfkYTq+ESlmlqnz9cm71MCTejCjns7n7WN7n/845nliXOTb+BiAPWQBtcJak4TVoCNkkvJ45XkwPK5BMUNHpxHixDv6qIW2XeOziobrFm/3Emrp0FNhj0kgF9WIndOMpq0D0mgjx97osRM9rDUQu15qPZLl/7U71bXIWxEI0/GixnNnpunJ+Zu0ivyT+M1/El0JiU7HFeWSjUfcEyTJSLdopbbqCMO2etWibC6STql43FXJhMKt1zvM7Y1sjMR8vZQxsCXE6Ql4JY3xKJ7exQ8Py8ZpwF4dqHc1Q7SbEAYE/1iMPYcKBUcVu4u7Ewci1Uq0fJniFS1P05Z1EJWRjnp1MM5T0CPrphmgaYIxQOyAmvrQFNJKvwF+s9au71buW6Zm2HIZxVSX5nlpHUw6770tfNbrXNcNq7+g==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 16:26:06.8107 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 90a87100-7563-4083-c040-08d7e222dd81
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4016
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Lecopzer Chen <lecopzer.chen@mediatek.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>, nd@arm.com,
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

T24gVGh1LCBBcHIgMTYsIDIwMjAgYXQgMTI6NDk6NTZQTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBUdWUsIEFwciAxNCwgMjAyMCBhdCAwNDoxODo0N1BNICswMjAwLCDDmHJqYW4g
RWlkZSB3cm90ZToKPiA+IEBAIC0yMzgsNiArMjQyLDEwIEBAIHN0YXRpYyB2b2lkIGlvbl91bm1h
cF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaG1lbnQsCj4gPiAgCQkJ
ICAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSwKPiA+ICAJCQkgICAgICBlbnVtIGRtYV9kYXRh
X2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gPiAgewo+ID4gKwlzdHJ1Y3QgaW9uX2RtYV9idWZfYXR0
YWNobWVudCAqYSA9IGF0dGFjaG1lbnQtPnByaXY7Cj4gPiArCj4gPiArCWEtPm1hcHBlZCA9IGZh
bHNlOwo+IAo+IFBvc3NpYmx5IGEgc3R1cGlkIHF1ZXN0aW9uIGJ1dCBoZXJlIHdlJ3JlIG5vdCBo
b2xkaW5nIGEgbG9jay4gIElzCj4gY29uY3VycmVuY3kgYW4gaXNzdWU/CgpUaGFua3MgZm9yIHRh
a2luZyBhIGxvb2suCgpIZXJlIGFuZCBpbiBpb25fbWFwX2RtYV9idWYoKSwgd2hlcmUgbWFwcGVk
IGlzIHNldCwgdGhpcyBzaG91bGQgYmUgc2FmZS4KVGhlIGNhbGxlcnMgbXVzdCBzeW5jaHJvbml6
ZSBjYWxscyB0byBtYXAvdW5tYXAsIGFuZCBlbnN1cmUgdGhhdCB0aGV5CmFyZSBjYWxsZWQgaW4g
cGFpcnMuCgpJIHRoaW5rIHRoZXJlIG1heSBiZSBhIHBvdGVudGlhbCBpc3N1ZSBiZXR3ZWVuIHdo
ZXJlIG1hcHBlZCBpcyBzZXQgaGVyZSwKYW5kIHdoZXJlIGl0J3MgcmVhZCBpbiBpb25fZG1hX2J1
Zl97YmVnaW4sZW5kfV9jcHVfYWNjZXNzKCkuIENvaGVyZW5jeQppc3N1ZXMgdGhlIG1hcHBlZCBi
b29sIHdvbid0IGJsb3cgdXAsIGF0IHdvcnN0IHRoZSBjb250ZW50cyBvZiB0aGUKYnVmZmVyIG1h
eSBiZSBpbnZhbGlkIGFzIGNhY2hlIHN5bmNocm9uaXphdGlvbiBtYXkgaGF2ZSBiZWVuIHNraXBw
ZWQuClRoaXMgaXMgc3RpbGwgYW4gaW1wcm92ZW1lbnQgYXMgYmVmb3JlIGl0IHdvdWxkIGVpdGhl
ciBjcmFzaCBvciBzeW5jIHRoZQp3cm9uZyBwYWdlIHJlcGVhdGVkbHkuCgpUaGUgbWFwcGVkIHN0
YXRlIGlzIHRpZWQgdG8gdGhlIGRtYV9tYXBfc2coKSBjYWxsLCBzbyB3ZSB3b3VsZCBuZWVkIHRh
a2UKdGhlIGJ1ZmZlci0+bG9jayBhcm91bmQgYm90aCBkbWFfbWFwX3NnIGFuZCBzZXR0aW5nIG1h
cHBlZCB0byBiZSBzdXJlCnRoYXQgdGhlIGJ1ZmZlciB3aWxsIGFsd2F5cyBoYXZlIGJlZW4gc3lu
Y2VkLgoKPiA+ICsKPiA+ICAJZG1hX3VubWFwX3NnKGF0dGFjaG1lbnQtPmRldiwgdGFibGUtPnNn
bCwgdGFibGUtPm5lbnRzLCBkaXJlY3Rpb24pOwo+ID4gIH0KPiA+ICAKPiA+IEBAIC0yOTcsNiAr
MzA1LDggQEAgc3RhdGljIGludCBpb25fZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYsCj4gPiAgCj4gPiAgCW11dGV4X2xvY2soJmJ1ZmZlci0+bG9jayk7Cj4g
PiAgCWxpc3RfZm9yX2VhY2hfZW50cnkoYSwgJmJ1ZmZlci0+YXR0YWNobWVudHMsIGxpc3QpIHsK
PiA+ICsJCWlmICghYS0+bWFwcGVkKQo+ID4gKwkJCWNvbnRpbnVlOwo+ID4gIAkJZG1hX3N5bmNf
c2dfZm9yX2NwdShhLT5kZXYsIGEtPnRhYmxlLT5zZ2wsIGEtPnRhYmxlLT5uZW50cywKPiA+ICAJ
CQkJICAgIGRpcmVjdGlvbik7Cj4gPiAgCX0KCi0tIArDmHJqYW4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
