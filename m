Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BA026C38A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 16:15:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 050AA618C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Sep 2020 14:15:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E8801666D4; Wed, 16 Sep 2020 14:15:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3035D665D5;
	Wed, 16 Sep 2020 14:14:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 35E7E616DE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 14:14:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1EA5B665D5; Wed, 16 Sep 2020 14:14:29 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2044.outbound.protection.outlook.com [40.107.94.44])
 by lists.linaro.org (Postfix) with ESMTPS id 32148616DE
 for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Sep 2020 14:14:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPckStrmAvqrF9qczfWbKFzrUEJu3fxdVkIn4CGR0h8MJiIZ5/MdH9OmLc7+CNmXTWqFEolhY4+7p4kRHCbqHr32NR6vlnKQsrLnRoc9FvEHwDm9OkDQm6uhLKOqZhO/5T9/ZniUdljJZdGMxUtpeapUu6zOXFuSaHJ3Y6CcW0ObotPdBMdepu5I8TuuXS6RZTk333HYRnljSaqEy1xBZuqigetXJxpRiiKWpw0Hp1soNUj33/AOQUzSVlByy23C7kUSunb408UwklDE84mdoffrXlTdVDUIfnVyhyLV1ekYI3AKToMYODruvaCP71v3nbdoK+o9l8AyXjqGciGuag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rez1AarHQgPeuHFvhBkKF/WjIJALwOz78hL2C0zvC4c=;
 b=RQCVNMhsFp+llnR2YtuzczBRIfcC2tC8mcIUN1wIVjuvGm+3IxZWxDdmI3SNS8bo3yzVoMgP3/phXrMD+FJrpJAtt2xumUm9oem8g4yU1XDilNx8oDGXUUz/Ocy04PMJBCB1HzAX9Hdqg1eVb/lYmGxCDM78X4ZvFPEUzKKdLqosmDadVk6ST24qwnXAiCfJBUiBWWeawRWllYFXfx5g+GkvD3WBK+lJHRKaSesK4mqVYWzxmmQOWtNReJ+Yi8hgwqnJLi8/HxzKI/qVDvxQ7KLcxfD3fZtu8CAEIo+zBcR5e9WbwK+3fyuC5vBt2+pxA/pP5jL1+rX8Hw1+l4qbAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4438.namprd12.prod.outlook.com (2603:10b6:208:267::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Wed, 16 Sep
 2020 14:14:24 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::f8f7:7403:1c92:3a60%6]) with mapi id 15.20.3391.014; Wed, 16 Sep 2020
 14:14:24 +0000
To: Jason Gunthorpe <jgg@ziepe.ca>, akpm@linux-foundation.org,
 sumit.semwal@linaro.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org
References: <20200914132920.59183-1-christian.koenig@amd.com>
 <40cd26ae-b855-4627-5a13-4dcea5d622f6@gmail.com>
 <20200914140632.GD1221970@ziepe.ca>
 <9302e4e0-0ff0-8b00-ada1-85feefb49e88@gmail.com>
 <20200916095359.GD438822@phenom.ffwll.local> <20200916140710.GA8409@ziepe.ca>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <8db2474f-ecb7-0e17-5f5b-145708fe44d5@amd.com>
Date: Wed, 16 Sep 2020 16:14:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20200916140710.GA8409@ziepe.ca>
Content-Language: en-US
X-ClientProxiedBy: AM0PR02CA0099.eurprd02.prod.outlook.com
 (2603:10a6:208:154::40) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR02CA0099.eurprd02.prod.outlook.com (2603:10a6:208:154::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13 via Frontend
 Transport; Wed, 16 Sep 2020 14:14:22 +0000
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 74d6b4a9-dd56-4ec4-e1e7-08d85a4acfff
X-MS-TrafficTypeDiagnostic: MN2PR12MB4438:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4438DA0A247D2BFDA26BBD8783210@MN2PR12MB4438.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ubN5pZ7Gk9tchSXD73JfxeDr5XZBdWSGuN+CDmFy3a5Lp/lnOsw6/DYKuzAHx88F5xXY8OZp3qVBbLQs/koyrdpmOKbqhZBVaGoXyRjJoQ4vJzwSVt5kBtEoDDKNC3973CfUMXDfBazsGqMWF5cX9x+XrVaX4k/ig+tO0ufPMcZgHYy7l5Szpun80fB646HJ6Eh7+4uklXiOko2OyGb7S+W+lKd2vqmrtqVCHWPFwQS8NGRhvdfl0homPVrfa7tJNDXhFnkJnOdDZ5vsTgE+Xx4yMNCij6O/Dl9zPmeDaQPyUDzS0QzmauxuAle2H+/IamtKfK9bI0LkJqjVr7pumf0S4GSLfwgAy8WaNT0wfAjtv5gG1fB3Ii6mvAjnTA3S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(478600001)(36756003)(8936002)(8676002)(6486002)(6666004)(31686004)(31696002)(2616005)(5660300002)(86362001)(66476007)(316002)(2906002)(66556008)(66946007)(16526019)(83380400001)(186003)(52116002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: IrNcftLaojgvOQV/gpCVeEmJsz26wCk1QiPA99h6t+vMuuGH3SudJ62veDV3JUnJmokHRCMLfuQX8U4aQiGg7zzqLa2cf2WRxUiIZXjpYOp7FcQVlgegzIrT+tbYeY8WLfYZtbxLg6rXDJ6xtLUWusSTJfKI7sgf75toYtTufMzAOY3R4iFqU5F9F60zfxtcNT3SrzLfbQLlyL45YmJVe+3D6Zxtyx3LPsZ8RrR3OjLZIzENnT6/oEEL5iHkCLgFHvvT+uwM8HPuMf1Y2JgdUm7VL+JG23zur2k/+0OggRawg88jM/P0jv6V022DwwfuujRRePw3a0cEXQDix7z3gJdMFJB32AYxU9gVCQa53v7LVWC/8sxoEhqP9gIyuVjZk8An5qyR0zzVESUMr8qufkaPt7BS1Ss61VvXFLHfXqqZ65spedHXAQysZhq6qR5RPEWXARFAc+IasBRIquKkUJT2oTF694+3Chys/ai6qr5pX9FZb2BkesJJwaEDZVad7ZMAoLnH0mMO5kfhpHV6OWZw2HoguOl+T/ymMLMAmwjryJJgKBYdcnMMUD6xGPyuibQdYfWKZYWR1H6ChUDc48ms+Z+1c2174wZf6DWOdmfXUIq/EkIqkZrGy+tO7wISaN5TZR6VTY2060BDc2vVfpxH24K6qU9LoeOhV0gIrSEd1UMtMdbvHETm8C7htZJe+r4gg424knabrjEbdYZWvg==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74d6b4a9-dd56-4ec4-e1e7-08d85a4acfff
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2020 14:14:23.9056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2t5AgoaBMnnoRyOLqXfqqk6kHxdRciQrBcNfPC0xsGD4GG12Lxa1yzMSNcMXHTIS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4438
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] Changing vma->vm_file in dma_buf_mmap()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTYuMDkuMjAgdW0gMTY6MDcgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6Cj4gT24gV2VkLCBT
ZXAgMTYsIDIwMjAgYXQgMTE6NTM6NTlBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPgo+
PiBCdXQgd2l0aGluIHRoZSBkcml2ZXIsIHdlIGdlbmVyYWxseSBuZWVkIHRob3VzYW5kcyBvZiB0
aGVzZSwgYW5kIHRoYXQKPj4gdGVuZHMgdG8gYnJpbmcgZmQgZXhoYXVzdGlvbiBwcm9ibGVtcyB3
aXRoIGl0LiBUaGF0J3Mgd2h5IGFsbCB0aGUgcHJpdmF0ZQo+PiBidWZmZXIgb2JqZWN0cyB3aGlj
aCBhcmVuJ3Qgc2hhcmVkIHdpdGggb3RoZXIgcHJvY2VzcyBvciBvdGhlciBkcml2ZXJzIGFyZQo+
PiBoYW5kbGVzIG9ubHkgdmFsaWQgZm9yIGEgc3BlY2lmaWMgZmQgaW5zdGFuY2Ugb2YgdGhlIGRy
bSBjaGFyZGV2IChlYWNoCj4+IG9wZW4gZ2V0cyB0aGVpciBvd24gbmFtZXNwYWNlKSwgYW5kIG9u
bHkgZm9yIGlvY3RscyBkb25lIG9uIHRoYXQgY2hhcmRldi4KPj4gQW5kIGZvciBtbWFwIHdlIGFz
c2lnbiBmYWtlIChidXQgdW5pcXVlIGFjcm9zcyBhbGwgb3BlbiBmZCBvbiBpdCkgb2Zmc2V0cwo+
PiB3aXRoaW4gdGhlIG92ZXJhbGwgY2hhcmRldi4gSGVuY2UgYWxsIHRoZSBwZ29mZiBtYW5nbGlu
ZyBhbmQgcmUtbWFuZ2xpbmcuCj4gQXJlIHRoZXkgc3RpbGwgdW5pcXVlIHN0cnVjdCBmaWxlcz8g
SnVzdCB3aXRob3V0IGEgZmRubz8KClllcywgZXhhY3RseS4KCj4+IEhlbmNlIHdoeSB3ZSdkIGxp
a2UgdG8gYmUgYWJsZSB0byBmb3J3YXJkIGFsaWFzaW5nIG1hcHBpbmdzIGFuZCBhZGp1c3QgdGhl
Cj4+IGZpbGUgYW5kIHBnb2ZmLCB3aGlsZSBob3BlZnVsbHkgZXZlcnl0aGluZyBrZWVwcyB3b3Jr
aW5nLiBJIHRob3VnaHQgdGhpcwo+PiB3b3VsZCB3b3JrLCBidXQgQ2hyaXN0aWFuIG5vdGljZWQg
aXQgZG9lc24ndCByZWFsbHkuCj4gSXQgc2VlbXMgcmVhc29uYWJsZSB0byBtZSB0aGF0IHRoZSBk
bWEgYnVmIHNob3VsZCBiZSB0aGUgb3duZXIgb2YgdGhlCj4gVk1BLCBvdGhlcndpc2UgbGlrZSB5
b3Ugc2F5LCB0aGVyZSBpcyBhIGJpZyBtZXNzIGF0dGFjaGluZyB0aGUgY3VzdG9tCj4gdm1hIG9w
cyBhbmQgd2hhdCBub3QgdG8gdGhlIHByb3BlciBkbWEgYnVmLgo+Cj4gSSBkb24ndCBzZWUgYW55
dGhpbmcgb2J2aW91c2x5IGFnYWluc3QgdGhpcyBpbiBtbWFwX3JlZ2lvbigpIC0gd2h5IGRpZAo+
IENocml0aWFuIG5vdGljZSBpdCBkb2Vzbid0IHJlYWxseSB3b3JrPwoKVG8gY2xhcmlmeSBJIHRo
aW5rIHRoaXMgbWlnaHQgd29yay4KCkkganVzdCBoYWQgdGhlIHNhbWUgIklzIHRoYXQgbGVnYWw/
IiwgIldoYXQgYWJvdXQgc2VjdXJpdHk/IiwgZXRjLi4gCnF1ZXN0aW9ucyB5b3UgcmFpc2VkIGFz
IHdlbGwuCgpJdCBzZWVtcyBsaWtlIGEgc291cmNlIG9mIHRyb3VibGUgc28gSSB0aG91Z2h0IGJl
dHRlciBhc2sgc29tZWJvZHkgbW9yZSAKZmFtaWxpYXIgd2l0aCB0aGF0LgoKQ2hyaXN0aWFuLgoK
Pgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNp
Zwo=
