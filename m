Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DCB249F8F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Aug 2020 15:23:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFC7866572
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Aug 2020 13:23:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D2A8F665AA; Wed, 19 Aug 2020 13:23:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3FB4619D7;
	Wed, 19 Aug 2020 13:22:24 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0D67660BD9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Aug 2020 13:22:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F29B960865; Wed, 19 Aug 2020 13:22:20 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr20077.outbound.protection.outlook.com [40.107.2.77])
 by lists.linaro.org (Postfix) with ESMTPS id 82FFD60865
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Aug 2020 13:22:18 +0000 (UTC)
Received: from AM5PR0701CA0056.eurprd07.prod.outlook.com (2603:10a6:203:2::18)
 by VI1PR08MB4511.eurprd08.prod.outlook.com (2603:10a6:803:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Wed, 19 Aug
 2020 13:22:16 +0000
Received: from AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:2:cafe::f0) by AM5PR0701CA0056.outlook.office365.com
 (2603:10a6:203:2::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.16 via Frontend
 Transport; Wed, 19 Aug 2020 13:22:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.linaro.org; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;lists.linaro.org; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT033.mail.protection.outlook.com (10.152.16.99) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Wed, 19 Aug 2020 13:22:16 +0000
Received: ("Tessian outbound bac899b43a54:v64");
 Wed, 19 Aug 2020 13:22:16 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 40791383dc47070f
X-CR-MTA-TID: 64aa7808
Received: from 97e241cfc2a8.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 087D9188-85A5-4C3E-828F-89BF29CDC413.1; 
 Wed, 19 Aug 2020 13:22:10 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 97e241cfc2a8.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 19 Aug 2020 13:22:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fL4aHVkLNMOo0UZtdpsHIq1kdbDbkjuDZy4FUuYPvAY1sEP0hjPWnowxR9duC0CmU1Ei0N9XM6yXmylkNPtfTm1z/Y+MzMU0ff9eWl7InvEofje03pIcxngL30evD63isyMOGhX/0sMxq2UVDID7OlxZL0LBCOTVl5MDpZU9SWe2vGEYnpQcZQYr8x/Q4hMhH15otbFxxFqWh3Ifgyy/pQ+bQ0jYFPyBZ0iEhK3AnKRVo6xZ/2vGuwx0qiW0D8yOEHELCzXZy4ICNQg4ZrFzQklqIIW0QeK+H146jZa74tX6qDU+3RQjogzNhMSIuCnsOSOqg6BQVOHBY56xt0eVgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ths1yTPKkYGM0/8Qcc1BcQ4a98FqWjFSwIkDNIvTLmg=;
 b=n5TirmjnvExDxul/+djRWmnJmfnczO+InB0pZuC1hTftntGM50XseLkmx7aRfGQQjgl8v3BIXsWMP7k/IS8ZVeOePlJ2NxXjaPgkBoK60jB6+QtQkpvK9UQBIJKspVdUt0YMrjMC92pzew+6DLeEI/wQ7dvbTdU12/zoG2uQmWbDZO+ouUVquANTBXAVQEGuvleP56fLHBCQ7Snqu5xF51gtAa2/HB2Ru5pvYNTdkL2E7XLKx8QqRqJ8WpxZcPykoCb7rCb7b7X8RIk6l2jj7TsZ/vmaI1URc33nptA/L4KSCBZpuu5uq3yLBHqNfJesvF0Zh8W/39NoIxbAH5hvaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Authentication-Results-Original: samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=none action=none header.from=arm.com;
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com (2603:10a6:7:36::11) by
 HE1PR0801MB1900.eurprd08.prod.outlook.com (2603:10a6:3:4d::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Wed, 19 Aug 2020 13:22:07 +0000
Received: from HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::14f5:cc22:9381:1d13]) by HE1PR08MB2890.eurprd08.prod.outlook.com
 ([fe80::14f5:cc22:9381:1d13%6]) with mapi id 15.20.3283.028; Wed, 19 Aug 2020
 13:22:07 +0000
Date: Wed, 19 Aug 2020 14:22:04 +0100
From: Brian Starkey <brian.starkey@arm.com>
To: Cho KyongHo <pullip.cho@samsung.com>
Message-ID: <20200819132204.2rki3xsczdy2cpsk@DESKTOP-E1NTVVP.localdomain>
References: <CGME20200818074547epcas2p21e0c2442873d03800c7bc2c3e76405d6@epcas2p2.samsung.com>
 <20200818080415.7531-1-hyesoo.yu@samsung.com>
 <20200818105557.svky5c7gdvk6khzu@DESKTOP-E1NTVVP.localdomain>
 <20200819034626.GB70898@KEI>
Content-Disposition: inline
In-Reply-To: <20200819034626.GB70898@KEI>
User-Agent: NeoMutt/20180716-849-147d51-dirty
X-ClientProxiedBy: LO2P265CA0008.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::20) To HE1PR08MB2890.eurprd08.prod.outlook.com
 (2603:10a6:7:36::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from DESKTOP-E1NTVVP.localdomain (217.140.99.251) by
 LO2P265CA0008.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:62::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Wed, 19 Aug 2020 13:22:05 +0000
X-Originating-IP: [217.140.99.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 779cbe6c-957b-491a-0b55-08d84442e485
X-MS-TrafficTypeDiagnostic: HE1PR0801MB1900:|VI1PR08MB4511:
X-Microsoft-Antispam-PRVS: <VI1PR08MB451131D21B8B345543F81A13F05D0@VI1PR08MB4511.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KWAvcn/YZlaHthP1aDV1SJeSKsHaopkxTtPekL7fwKHP0DuVS4QHS/IcTEeDL5EAfRN9Wxv/wJZy/VT+fgaTPWPb82DyeXCsya5+Lo5LUNI/bT7IsARgfySDZ5F2Hm7TEAvMiOS5jjv1Sqvw4TXolDNyQYw1DIF87LNOcZEgZWJCghS5IDk6DXTCG3SED8wr80TbZzS/0rab5XgYEKO2cLH3K+hb8eoYY/X1OkBBSPKKAUEoP+hfLOaZegTEwWRmT1V3HH1xkR/KIf+eXW04zYyAWgrxSLzPTpsM4BMzd5HsfJeNnKBoxVErXBIXFE5XBgmcH90tg5Q8HwdmaQwJLg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:HE1PR08MB2890.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(186003)(2906002)(8676002)(9686003)(16526019)(6916009)(316002)(26005)(83380400001)(44832011)(8936002)(6506007)(55016002)(52116002)(7696005)(956004)(478600001)(86362001)(5660300002)(4326008)(66556008)(66476007)(7416002)(66946007)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: pJTU1/fUz7pKiHECRoVxyqLso/mKrvZYGvwrJCskOD4cF/mwSOmUwKpN++lsxSJ61U8uRF09dA279FfE9n7rbA0ThKxiovEtn+/C3+tGayjMtmZmIdoLCgKcXY66fDtXOhpxWCsxTyUaD7wqqh1mfSNTm0PU6sMCSNyUXhQ6nYbJYZSnRJ8n9T8dl0i/VpmW0CSUgfX2WwOi9Z4le6/pTq6gTfQXsZPkZK5xz2IKyiNZ661Cwv5NOFaHg9zxbpueTehyG3qN8+E4GUB/HTFxs2cKKCRUklbbdsPIgtlqhHEVpWn22YRQ7dspQ+C+TJhgePomlJ6rEUP3dmU0e/8xW2d3Q8DF9xeiSaoRnvXSPrsaol2T2C4o+JpsOH3OdpjKg2ousqWGYuDQ3HSLrKIEbr8NqqQvETp8LoVMkTKxUAcvBxJ1/uy9dpWp7321IxIpOHRgDn5H1e4MOfa/ioDvwwsPEyvJjO9FaD8NSrz3B+qunlBj8C35GHIOd1MS73rkEdCsLfIw/VqbY4WY2uk+u3urgYxKmJZU1n5cMYgAbnVB4tOHDDZ++VFiYh4UCrQKXz7BwkHVZPNV0t5TkTbZ3BqK8Vxumq3nrCHUhGZ9QTnGE/npUpXi6N5NGCFwa5dL8jNCUSkIkcFIbFftIGLNuQ==
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1900
Original-Authentication-Results: samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: c4451903-a581-4239-3669-08d84442ded8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RHnXh8R2707A13synxuZfo5+07u68DwwvMcNmAH1qgB2FHiDgXcl4mA8Zqb98Tldo7LDlVRIQ/pupSi0tmAmnccRcvF0JCmMJWYZgJd/Td64Jhq+Z3aY8Trk6gdU7f7UBDIfQ7G1RvDa+HDRTJ1yIOL9uuoddNI4lk1ttUtUZCgz0m2xO/vlV5UYPgmr2Uw8BcwXnxaBchK44pu/VNPTSDbanLS1b8Y3g9jmynNuwplfkaKJJ4KSNSEZM7vHUNJMjLtNiVw5JZTsOKj19gymeBzzzIF+4K6D80Ycyb2narc7RFT6d+btdHgBtuGqBo6ENxuC5ojfU0XaRPa9+wYM1c+Ey8fiRY1kbnkM0vrRaw5f1zGezCgbqCoJ2oxlG77m5/1N3pH1BMmoYxsqO/8T/w==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(346002)(136003)(376002)(396003)(39860400002)(46966005)(47076004)(26005)(478600001)(36906005)(316002)(2906002)(6862004)(6506007)(7696005)(16526019)(186003)(356005)(4326008)(82310400002)(81166007)(83380400001)(82740400003)(55016002)(1076003)(44832011)(70586007)(70206006)(336012)(956004)(9686003)(8936002)(5660300002)(8676002)(86362001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2020 13:22:16.4660 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 779cbe6c-957b-491a-0b55-08d84442e485
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4511
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 benjamin.gaignard@linaro.org, Hyesoo Yu <hyesoo.yu@samsung.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, robh+dt@kernel.org, john.stultz@linaro.org,
 nd@arm.com, surenb@google.com, akpm@linux-foundation.org, vbabka@suse.cz,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, minchan@kernel.org,
 joaodias@google.com, iamjoonsoo.kim@lge.com, christian.koenig@amd.com
Subject: Re: [Linaro-mm-sig] [PATCH 0/3] Chunk Heap Support on DMA-HEAP
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

SGkgS3lvbmdIbywKCk9uIFdlZCwgQXVnIDE5LCAyMDIwIGF0IDEyOjQ2OjI2UE0gKzA5MDAsIENo
byBLeW9uZ0hvIHdyb3RlOgo+IEkgaGF2ZSBzZXJpb3VzbHkgY29uc2lkZXJlZCBDUEEgaW4gb3Vy
IHByb2R1Y3QgYnV0IHdlIGRldmVsb3BlZCBvdXIgb3duCj4gYmVjYXVzZSBvZiB0aGUgcG9vbCBp
biBDUEEuCgpPaCBnb29kLCBJJ20gZ2xhZCB5b3UgY29uc2lkZXJlZCBpdCA6LSkKCj4gVGhlIGhp
Z2gtb3JkZXIgcGFnZXMgYXJlIHJlcXVpcmVkIGJ5IHNvbWUgc3BlY2lmaWMgdXNlcnMgbGlrZSBO
ZXRmbGl4Cj4gYXBwLiBNb3Jlb3ZlciByZXF1aXJlZCBudW1iZXIgb2YgYnl0ZXMgYXJlIGRyYW1h
dGljYWxseSBpbmNyZWFzaW5nCj4gYmVjYXVzZSBvZiBoaWdoIHJlc29sdXRpb24gdmlkZW9zIGFu
ZCBkaXNwbGF5cyBpbiB0aGVzZSBkYXlzLgo+IAo+IEdhdGhlcmluZyBsb3RzIG9mIGZyZWUgaGln
aC1vcmRlciBwYWdlcyBpbiB0aGUgYmFja2dyb3VuZCBkdXJpbmcKPiBydW4tdGltZSBtZWFucyBy
ZXNlcnZpbmcgdGhhdCBhbW91bnQgb2YgcGFnZXMgZnJvbSB0aGUgZW50aWVyIGF2YWlsYWJsZQo+
IHN5c3RlbSBtZW1vcnkuIE1vcmVvdmVyIHRoZSBnYXRoZXJlZCBwYWdlcyBhcmUgc29vbiByZWNs
YWltZWQgd2hlbmV2ZXIKPiB0aGUgc3lzdGVtIGlzIHN1ZmZlcnJpbmcgZnJvbSBtZW1vcnkgcHJl
c3N1cmUgKGkuZS4gY2FtZXJhIHJlY29yZGluZywKPiBoZWF2eSBnYW1lcykuCgpBcmVuJ3QgdGhl
c2UgdHdvIHRoaW5ncyBpbiBjb250cmFkaWN0aW9uPyBJZiB0aGV5J3JlIGVhc2lseSByZWNsYWlt
ZWQKdGhlbiB0aGV5IGFyZW4ndCAicmVzZXJ2ZWQiIGluIGFueSBkZXRyaW1lbnRhbCB3YXkuIEFu
ZCBpZiB5b3UgZG9uJ3QKd2FudCB0aGVtIHRvIGJlIHJlY2xhaW1lZCwgdGhlbiB5b3UgbmVlZCB0
aGVtIHRvIGJlIHJlc2VydmVkLi4uCgpUaGUgYXBwcm9hY2ggeW91IGhhdmUgaGVyZSBhc3NpZ25z
IHRoZSBjaHVuayBvZiBtZW1vcnkgYXMgYSByZXNlcnZlZApDTUEgcmVnaW9uIHdoaWNoIHRoZSBr
ZXJuZWwgaXMgZ29pbmcgdG8gdHJ5IG5vdCB0byB1c2UgdG9vIC0gc2ltaWxhcgp0byB0aGUgQ1BB
IHBvb2wuCgpJIHN1cHBvc2UgaXQncyBhIGJhbGFuY2UgZGVwZW5kaW5nIG9uIGhvdyBtdWNoIHlv
dSdyZSB3aWxsaW5nIHRvIHdhaXQKZm9yIG1pZ3JhdGlvbiBvbiB0aGUgYWxsb2NhdGlvbiBwYXRo
LiBDUEEgaGFzIHRoZSBwb3RlbnRpYWwgdG8gZ2V0IHlvdQpmYXN0ZXIgYWxsb2NhdGlvbnMsIGJ1
dCB0aGUgZG93bnNpZGUgaXMgeW91IG5lZWQgdG8gbWFrZSBpdCBhIGxpdHRsZQptb3JlICJncmVl
ZHkiLgoKQ2hlZXJzLAotQnJpYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
