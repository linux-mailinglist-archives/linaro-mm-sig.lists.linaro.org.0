Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8892758CAD8
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 16:56:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 70C5B47F6D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 14:56:41 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2066.outbound.protection.outlook.com [40.107.212.66])
	by lists.linaro.org (Postfix) with ESMTPS id 8AE193F23D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 14:56:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZmVBOAPMBVfjsI4aTy8N5233BBUZbjjXuGMFcftyIZ/p0Kn0qzCJfdPOrvOdlgVgva2hBFKA6bxI/s5X+BvKynvBI5XYEckSawennxwV7a7+TyRq1hBHGtss261vpaRR50703eohO8qAWjsLD6YyZykB1Edu2zOzsMfBANc0oknEAV8vWhSEnK0RwIIBiBadJXhvPasMG1nDKsa//IcnBtye/wdHWuQrv2gcECkFiRpoVPIe8w/mUrUTYKt5IuuW+5k/47Xrx7G3xjxs6r+pNjKY8EkpxYkTIsZOX/2TG2Ttp0k+ne7fJdSCt1m2iHZvC30bkqJlNLUCpM2a9wEtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FImUiauRan1/vCCS0N6zadguU15a4w13gzxd0Vo4vBw=;
 b=bZpC1zPYHHoG+4wJ5I/hovUspzD0wzxUShC0N1BmtGPMUfqX9hRUyxUiG5/Q212HNO8jkZ4kkFjzj0nS3Ui/C3McKjxSuk1SqIZnwMg1VSbIxIcKTpr05IqoTpP7mSqP46psInlyFLUJvkVJTXemaresRO7GT/e+gr4VlVxSFY6UHqDeGr+i1mR4hECbhPceE82jmMbzPOUaoUoF+cG+XoYJtxEKXhENZqJMr2u2+p/FiuSA3YrChYTywqxiIApOo3lSxcBYUetpCRFLo+4ya+JIgTkN92RZVWN9YlN1aph7R54z/tJXbXZnEPwmP0VMkF9Y+uvKRVA5c9fqsMaVWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FImUiauRan1/vCCS0N6zadguU15a4w13gzxd0Vo4vBw=;
 b=weecJoUIJTlC5NsviJI3Auuk6pfesu95NRh3JWJ2PTo3ZZBs4Juw/eeJB5L5Jh2T575Rf1EItyGOt9cOLweugrYHZib2GhLFMawTL5+woaFObPFM/HAuZnv7f9stcnAuO0KrkRqVHrR5hagr70+n/TZyC+udfKXCfAXIw7ht7Ms=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB3648.namprd12.prod.outlook.com (2603:10b6:208:c1::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Mon, 8 Aug
 2022 14:56:34 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 14:56:33 +0000
Message-ID: <4e7448d2-7b26-e260-3d6c-7aa263a75250@amd.com>
Date: Mon, 8 Aug 2022 16:56:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20220729170744.1301044-1-robdclark@gmail.com>
 <20220729170744.1301044-2-robdclark@gmail.com>
 <3d2083aa-fc6c-6875-3daf-e5abe45fb762@gmail.com>
 <CAF6AEGvKdM3vyCvBZK=ZcdGmak7tsrP1b8ANyyaMjVfNDViqyw@mail.gmail.com>
 <973de2f8-75e4-d4c7-a13a-c541a6cf7c77@amd.com>
 <CAF6AEGuhQT6A_jh8kLWh5xMoUGc1osdewyBk-8NoprtWOHseaQ@mail.gmail.com>
 <2fc74efe-220f-b57a-e804-7d2b3880d14f@gmail.com>
 <CAF6AEGv9H+fSFKPNqwPxYUjkgj05AimpXbp-p_JL8nKLnzON=w@mail.gmail.com>
 <e2423bd7-ef73-8d43-c661-a19c80ad1a26@gmail.com>
 <CAF6AEGsoYaXe2+qug_TfT99KXuXh9Ez2L2HjQZroE6c6GSW4SQ@mail.gmail.com>
 <e90caaaa-cae9-c6d1-bfb6-dc56aa559681@amd.com>
 <CAF6AEGtWjtF7_uCYAH4uARVXgnOnX3DZ3KQahxTdAi_9Myvw0w@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGtWjtF7_uCYAH4uARVXgnOnX3DZ3KQahxTdAi_9Myvw0w@mail.gmail.com>
X-ClientProxiedBy: AS9PR05CA0043.eurprd05.prod.outlook.com
 (2603:10a6:20b:489::27) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 22ca7a8b-6b55-4f3f-4b20-08da794e2f5d
X-MS-TrafficTypeDiagnostic: MN2PR12MB3648:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ddnswpTD2CapEE9N7JLFNEO9R4EWtMPjkT6sviCpFaD8c0tj4E1OUYwOJMN/bBdL0Z7tgUgrCUceV53bYFPJpVWyL6uof9PjOb1xtxPGW4Omhk3+uL6/HWQVHiN65jyyksaZl2wE6f/m7WDb8iskMQvsDtJ6F9x6w6QctOrQYLRLswi092ke7Kq7s7/+BBxhOYQvXbCZfgde/cWs7LFSwZ6x4Er+hKRCmIcYa/+SHScljefXNc3VLpJ/mMNkno+o1ZsbA/XPeVHMmPeQicZ0mB8TG2EU9efHuiJt3BSDYEjoZujS8p3rYcoiok7dqVBzw7DXT9Hgz/9j7iGzG2ZjTq1Xb66ZPqZuUq3INyGiTxV0zs5VXRpb0dKwJcX5SbSC0lhXA9DedH7ro0qSQyBCw8CQpkVgAAFyJlIQ5qKJTbHsS68GYRKBN1R36fNcYHNrdORkryuPt5eo1fQO0j7iTLwFZuZufPNw9AeMTarQLkWeyi3RraJ31EKkHdLrcH7F1rVJvsZld46HnsUkdmEVCBCvd9rs8cCLCysP81SNcxM7KzJVzYEX+HMG/kIqp4iSTeM5MzsZDbANl5dR3O1ZgcYsBqS/+7kXrtztNqrBrPd+uKuqOcQ8lUoZVmq8gR54GaNfn+cpvCLjAT3NflzRg7GN8H711bxlOzJ3zG2RkAXEToH0jRjJmIp6h91NOZR/m4abJDHDshIMibVR4A4BTvpDJgNpkrG2A5/tnmPxYjDBZG2Ye4CVRix0tFST57xod0awXAVoCvI8CHMGzHi+V6wNM08EN4to9jTZD5yDHdj+PFpbffK+BdKlG47uT2DIpd2c59Ir83PG7UuapwINDQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(66946007)(66476007)(66556008)(8936002)(36756003)(7416002)(8676002)(4326008)(38100700002)(5660300002)(66574015)(478600001)(2616005)(186003)(6666004)(6506007)(41300700001)(6512007)(53546011)(2906002)(316002)(6916009)(54906003)(6486002)(83380400001)(31696002)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b1FWU1pma2RhOXlwbnphMlY3L3cwK20zWmZwTDVMdHBKaEdXNlYwSFdJTzFS?=
 =?utf-8?B?dlBxbDd4b2F3RmFnbWl6QUQ3U1dDN1RneHVNSlRlRC81WEZ2aWl4ZG94YmJv?=
 =?utf-8?B?SWxDb1g3SnlLSjZvNE5vWUZFbmlzcEZuVHczTFdaQld4Slgrb2VwZUZZazB5?=
 =?utf-8?B?eVhlajRiM01maS91Tmtnb05jVDNqb283UHg5R3k0ei9LRFJJZ1hhbVZHRzdw?=
 =?utf-8?B?NzFiYlAyaW9QYkdKMU9BWXBvSU9HSUdFeVVPWE9pUUx4elU1OVJjWWI0T2Za?=
 =?utf-8?B?Mzh2em44L3F0MWtzNlc0YVc1TkdqQ2pKQWU1elQ1RW5DUGRDcThOajZKNndi?=
 =?utf-8?B?MnJOUWtKd1pPVXF3cGEza0hDUVg5R1l2TnJrdmRtS1BIM3pjOTFWNDZYRWZk?=
 =?utf-8?B?RFc5WnY0WnozakMvand3a2hzbUp3QkdIdHhkS3hEbTBaZm1mWkkvNy9YZFcv?=
 =?utf-8?B?N1phVS9wdktQZ0RmWElBVTE3VFBtRXNlSHczTklNWWZiWTczM0g4b0JrTm1I?=
 =?utf-8?B?WUNUSXl6MDRxQkt1ZkdFQzdVOTRLRXVTUUdJL3ZMVGE5djJtMUp0ckhMNHQ0?=
 =?utf-8?B?c09keG9GSHR5ZTZkTXhvYVZiUFNudjFVSGhxOHlXV2FkRmhaYkp1S2lQSVdu?=
 =?utf-8?B?NmpZeXBQcEFuTGRkZ00ycHRNTkxEL3J6S1VrNlZybXZwNXJBRGhVM2lMYlAw?=
 =?utf-8?B?dnZSQm80WmM3aG13UGZiVy95bjM1T3RsYkp0SHZ4RHBkd1BYQ1pMUWUxOSti?=
 =?utf-8?B?czlkZFlJMlBiSm1rcHZuaFRTY08rR2dKWUFNMm8vTGdPeENIR3JsL2dub2cy?=
 =?utf-8?B?STNpSW9IeG9pb200MUZ0ZFRua3dFWlpUbW12UW5NY3o0am1sK0R4SnJWazlI?=
 =?utf-8?B?b0pqbDJqUnVYTTNIL3ZJeUNXQlF6SG9sRVJ6d3BJU1FiMmJyM0JGendlQXJa?=
 =?utf-8?B?bUJicGlGblpaQUNORzgrKy8vbm5TaHM4aGZzSHdjb0hrWDg2YXl2MXAxOUtr?=
 =?utf-8?B?clArcG5BK2N1R3dNMUswTVBTTUc5SHphYnYrLytUNC9HVTNhZXJMSnh3L05M?=
 =?utf-8?B?cUczWjJaY0JXZVdzVG1EUVZrc2ViL0k4eTJRNjBjaWQwNmcwdWdGbHBTODNZ?=
 =?utf-8?B?Umdack9GM0FvUVlqV0l5Wm1GZ3A5OXdiYW1QUkRCQWNGdk9MV3p2SnRSWHB1?=
 =?utf-8?B?NER6YTNuVGJUSDU1SEdhWEhhWUVuZ2tLaE5hV2xQL3FWMlNrak9jcmlLZnpL?=
 =?utf-8?B?eHNFNmZrUWpFREZUdzlhVm5jWVBhMXBicGVPVkVRRFRmdjlXVndiYjFMZ3E2?=
 =?utf-8?B?bC9zcmV1aFcrR0VEbm5ZU3NackxMRWdWcm9HbEVTM2U1UXZUZTRUeVp2dkVZ?=
 =?utf-8?B?Zy9SWGtSUzg2WUVXOVVMUnBOM3piTFNQeDlCZnAxZ3pwNG9KbjJYYzBUVkpK?=
 =?utf-8?B?a0JyS0tnQzVmdUZOSFVJVkNPNUhrYUJQZGdLR0phZWhFUnRrWWNhbTExRVJZ?=
 =?utf-8?B?aVhYdWpIZCtYZ1FJYVZWL2RvOENnZHpEVjFWL0lzY09TNC8xY1ZWNWF2T3Z6?=
 =?utf-8?B?bVpTK1ZqZStGczF3NWZGN0M3T3pYY1dVR1llMFp2UGJQQy9rSXFXUDYrTWVY?=
 =?utf-8?B?Q3RUeEZkQmhQUVlQQzJUNHZ6TkdsYWxGdStxUzZaQXFBV3c1N1ZESmY2bEJp?=
 =?utf-8?B?NnNlekxCeTc0K1dML2Mydkg1YUN4cnVPYkI1VlJxK0xNdzQyMzdzRUpXQzlC?=
 =?utf-8?B?UnpZb1VpVGluUEN5amY1RWNJNkVwRVpyTVI5MkVnUUJEZWdXdUFJM1pVdUY3?=
 =?utf-8?B?SjVjZDZhNGVvUUF1VTU2NEg5dm52WmMwSENFaDk3cC9wenhqS21wV3Jqd3pO?=
 =?utf-8?B?dnNRbUpMVklpWFU0K0gwbHAyTzNJdVZjcGFsVVVmeUZnMjBLMklZV0hLZ1NL?=
 =?utf-8?B?NnhuQURFd0hjTG5CTmYzNDBxZlNzdVVoR0MxM3pNeXcxa3lGenZ1Nzd4VURy?=
 =?utf-8?B?Z2c4RVQvSWtLSWdaOUttZ0p4dDM2WlRvSjhPeHhTQlZTK1YxL1QxOHQ0MkR6?=
 =?utf-8?B?NmhiaVdjM3NCQTRoQ0RnRklBa0dIMW9MT290MG1XaWcrOG84TVJIQ0F1d2l2?=
 =?utf-8?B?SW1iUnpnWDBFN0ZhYksxWDhGNG9KU0lHaGladDZDYldNSDdaeW1ueThzalMx?=
 =?utf-8?Q?3JAlHjlDU8CZypYNd/Rf4DS5Y0E9CkS50OLUmzNo+evE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22ca7a8b-6b55-4f3f-4b20-08da794e2f5d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 14:56:33.7118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jEIgX52vsM+Xoa1RbgTKMUHwF9ecqUmzkF5GuuEmcJr8GkDcO5e+IbPVPwWCDunE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3648
Message-ID-Hash: GRIIPISEAVILX4PF3C3WAB4AE4NSUQPK
X-Message-ID-Hash: GRIIPISEAVILX4PF3C3WAB4AE4NSUQPK
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GRIIPISEAVILX4PF3C3WAB4AE4NSUQPK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDguMDguMjIgdW0gMTU6MjYgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIE1vbiwgQXVnIDgs
IDIwMjIgYXQgNDoyMiBBTSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+IHdyb3RlOg0KPg0KPiBbU05JUF0NCj4+Pj4gSWYgdGhlIHZpcnRpby92aXJ0Z3B1IFVBUEkg
d2FzIGJ1aWxkIGFyb3VuZCB0aGUgaWRlYSB0aGF0IHRoaXMgaXMNCj4+Pj4gcG9zc2libGUgdGhl
biBpdCBpcyBtb3N0IGxpa2VseSBmdW5kYW1lbnRhbCBicm9rZW4uDQo+Pj4gSG93IGVsc2UgY2Fu
IHlvdSBlbnZpc2lvbiBtbWFwJ2luZyB0byBndWVzdCB1c2Vyc3BhY2Ugd29ya2luZz8NCj4+IFdl
bGwgbG9uZyBzdG9yeSBzaG9ydDogWW91IGNhbid0Lg0KPj4NCj4+IFNlZSB1c2Vyc3BhY2UgbWFw
cGluZ3MgYXJlIG5vdCBwZXJzaXN0ZW50LCBidXQgcmF0aGVyIGZhdWx0ZWQgaW4gb24NCj4+IGRl
bWFuZC4gVGhlIGV4cG9ydGVyIGlzIHJlc3BvbnNpYmxlIGZvciBzZXR0aW5nIHRob3NlIHVwIHRv
IGJlIGFibGUgdG8NCj4+IGFkZCByZXZlcnNlIHRyYWNraW5nIGFuZCBzbyBjYW4gaW52YWxpZGF0
ZSB0aG9zZSBtYXBwaW5ncyB3aGVuIHRoZQ0KPj4gYmFja2luZyBzdG9yZSBjaGFuZ2VzLg0KPiBJ
IHRoaW5rIHRoYXQgaXMgbm90IGFjdHVhbGx5IGEgcHJvYmxlbS4gIEF0IGxlYXN0IGZvciBob3cg
aXQgd29ya3Mgb24NCj4gYXJtNjQgYnV0IEknbSBhbG1vc3QgcG9zaXRpdmUgeDg2IGlzIHNpbWls
YXIuLiBJJ20gbm90IHN1cmUgaG93IGVsc2UNCj4geW91IGNvdWxkIHZpcnR1YWxpemUgbW11L2lv
bW11L2V0YyBpbiBhIHdheSB0aGF0IGRpZG4ndCBoYXZlIGhvcnJpYmxlDQo+IHBlcmZvcm1hbmNl
Lg0KPg0KPiBUaGVyZSBhcmUgdHdvIGxldmVscyBvZiBwYWdldGFibGUgdHJhbnNsYXRpb24sIHRo
ZSBmaXJzdCBjb250cm9sbGVkIGJ5DQo+IHRoZSBob3N0IGtlcm5lbCwgdGhlIHNlY29uZCBieSB0
aGUgZ3Vlc3QuICBGcm9tIHRoZSBQb1Ygb2YgaG9zdA0KPiBrZXJuZWwsIGl0IGlzIGp1c3QgbWVt
b3J5IG1hcHBlZCB0byB1c2Vyc3BhY2UsIGdldHRpbmcgZmF1bHRlZCBpbiBvbg0KPiBkZW1hbmQs
IGp1c3QgYXMgbm9ybWFsLiAgRmlyc3QgdGhlIGd1ZXN0IGNvbnRyb2xsZWQgdHJhbnNsYXRpb24N
Cj4gdHJpZ2dlcnMgYSBmYXVsdCBpbiB0aGUgZ3Vlc3Qgd2hpY2ggc2V0cyB1cCBndWVzdCBtYXBw
aW5nLiAgQW5kIHRoZW4NCj4gdGhlIHNlY29uZCBsZXZlbCBvZiB0cmFuc2xhdGlvbiB0byB0cmFu
c2xhdGUgZnJvbSB3aGF0IGd1ZXN0IHNlZXMgYXMNCj4gUEEgKGJ1dCBob3N0IHNlZXMgYXMgVkEp
IHRvIGFjdHVhbCBQQSB0cmlnZ2VycyBhIGZhdWx0IGluIHRoZSBob3N0Lg0KDQpPaywgdGhhdCdz
IGNhbG1pbmcuDQoNCkF0IGxlYXN0IHRoYXQncyBub3QgdGhlIGFwcHJvYWNoIHRhbGtlZCBhYm91
dCB0aGUgbGFzdCB0aW1lIHRoaXMgY2FtZSB1cCANCmFuZCBpdCBkb2Vzbid0IHJpcCBhIG1hc3Np
dmUgc2VjdXJpdHkgaG9sZSBzb21ld2hlcmUuDQoNClRoZSBxdWVzdGlvbiBpcyB3aHkgaXMgdGhl
IGd1ZXN0IHRoZW4gbm90IHVzaW5nIHRoZSBjYWNoaW5nIGF0dHJpYnV0ZXMgDQpzZXR1cCBieSB0
aGUgaG9zdCBwYWdlIHRhYmxlcyB3aGVuIHRoZSB0cmFuc2xhdGlvbiBpcyBmb3J3YXJkZWQgYW55
d2F5Pw0KDQo+IFtTTklQXQ0KPiBUaGlzIGlzIGJhc2ljYWxseSB3aGF0IGhhcHBlbnMsIGFsdGhv
dWdoIHZpYSB0aGUgdHdvIGxldmVscyBvZiBwZ3RhYmxlDQo+IHRyYW5zbGF0aW9uLiAgVGhpcyBw
YXRjaCBwcm92aWRlcyB0aGUgbWlzc2luZyBwaWVjZSwgdGhlIGNhY2hpbmcNCj4gYXR0cmlidXRl
cy4NCg0KWWVhaCwgYnV0IHRoYXQgd29uJ3Qgd29yayBsaWtlIHRoaXMuIFNlZSB0aGUgYmFja2lu
ZyBzdG9yZSBtaWdyYXRlcyBhbGwgDQp0aGUgdGltZSBhbmQgd2hlbiBpdCBpcyBiYWNrZWQgYnkg
UENJZS9WUkFNL2xvY2FsIG1lbW9yeSB5b3UgbmVlZCB0byB1c2UgDQp3cml0ZSBjb21iaW5lIHdo
aWxlIHN5c3RlbSBtZW1vcnkgaXMgdXN1YWxseSBjYWNoZWQuDQoNCj4+ICAgICAgIEJlY2F1c2Ug
b3RoZXJ3aXNlIHlvdSBjYW4ndCBhY2NvbW1vZGF0ZSB0aGF0IHRoZSBleHBvcnRlciBpcw0KPj4g
Y2hhbmdpbmcgdGhvc2UgY2FjaGluZyBhdHRyaWJ1dGVzLg0KPiBDaGFuZ2luZyB0aGUgYXR0cmli
dXRlcyBkeW5hbWljYWxseSBpc24ndCBnb2luZyB0byB3b3JrLi4gb3IgYXQgbGVhc3QNCj4gbm90
IGVhc2lseS4gIElmIHlvdSBoYWQgc29tZSBzb3J0IG9mIHN5bmNocm9ub3VzIG5vdGlmaWNhdGlv
biB0byBob3N0DQo+IHVzZXJzcGFjZSwgaXQgY291bGQgdHJpZ2dlciBhbiBpcnEgdG8gdGhlIGd1
ZXN0LCBJIHN1cHBvc2UuICBCdXQgaXQNCj4gd291bGQgbWVhbiBob3N0IGtlcm5lbCBoYXMgdG8g
YmxvY2sgd2FpdGluZyBmb3IgaG9zdCB1c2Vyc3BhY2UgdG8NCj4gaW50ZXJydXB0IHRoZSBndWVz
dCwgdGhlbiB3YWl0IGZvciBndWVzdCB2Z3B1IHByb2Nlc3MgdG8gYmUgc2NoZWR1bGVkDQo+IGFu
ZCBoYW5kbGUgdGhlIGlycS4NCg0KV2UgYmFzaWNhbGx5IGNoYW5nZSB0aGF0IG9uIGV2ZXJ5IHBh
Z2UgZmxpcCBvbiBBUFVzIGFuZCB0aGF0IGRvZXNuJ3QgDQpzb3VuZCBsaWtlIHNvbWV0aGluZyBm
YXN0Lg0KDQpUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbiBob3cgdGhpcyB3b3JrcywNCkNocmlz
dGlhbi4NCg0KPg0KPiBBdCBsZWFzdCBpbiB0aGUgY2FzZSBvZiBtc20sIHRoZSBjYWNoZSBhdHRy
aWJ1dGVzIGFyZSBzdGF0aWMgZm9yIHRoZQ0KPiBsaWZlIG9mIHRoZSBidWZmZXIsIHNvIHRoaXMg
c2NlbmFyaW8gaXNuJ3QgYSBwcm9ibGVtLiAgQUZBSUNUIHRoaXMNCj4gc2hvdWxkIHdvcmsgZmlu
ZSBmb3IgYXQgbGVhc3QgYWxsIFVNQSBody4uIEknbSBhIGJpdCBsZXNzIHN1cmUgd2hlbiBpdA0K
PiBjb21lcyB0byBUVE0sIGJ1dCBzaG91bGRuJ3QgeW91IGF0IGxlYXN0IGJlIGFibGUgdG8gdXNl
IHdvcnN0LWNhY2hlDQo+IGNhY2hlIGF0dHJpYnV0ZXMgZm9yIGJ1ZmZlcnMgdGhhdCBhcmUgYWxs
b3dlZCB0byBiZSBtYXBwZWQgdG8gZ3Vlc3Q/DQo+DQo+IEJSLA0KPiAtUg0KPg0KPj4+IEJ1dCBt
b3JlIHNlcmlvdXNseSwgbGV0J3MgdGFrZSBhIHN0ZXAgYmFjayBoZXJlLi4gd2hhdCBzY2VuYXJp
b3MgYXJlDQo+Pj4geW91IHNlZWluZyB0aGlzIGJlaW5nIHByb2JsZW1hdGljIGZvcj8gIFRoZW4g
d2UgY2FuIHNlZSBob3cgdG8gY29tZSB1cA0KPj4+IHdpdGggc29sdXRpb25zLiAgVGhlIGN1cnJl
bnQgc2l0dWF0aW9uIG9mIGhvc3QgdXNlcnNwYWNlIFZNTSBqdXN0DQo+Pj4gZ3Vlc3NpbmcgaXNu
J3QgZ3JlYXQuDQo+PiBXZWxsICJpc24ndCBncmVhdCIgaXMgYSBjb21wbGV0ZSB1bmRlcnN0YXRl
bWVudC4gV2hlbiBLVk0vdmlydGlvL3ZpcnRncHUNCj4+IGlzIGRvaW5nIHdoYXQgSSBndWVzcyB0
aGV5IGFyZSBkb2luZyBoZXJlIHRoZW4gdGhhdCBpcyBhIHJlYWxseSBtYWpvcg0KPj4gc2VjdXJp
dHkgaG9sZS4NCj4+DQo+Pj4gICAgIEFuZCBzdGlja2luZyBvdXIgaGVhZHMgaW4gdGhlIHNhbmQg
YW5kDQo+Pj4gcHJldGVuZGluZyBWTXMgZG9uJ3QgZXhpc3QgaXNuJ3QgZ3JlYXQuICBTbyB3aGF0
IGNhbiB3ZSBkbz8gIEkgY2FuDQo+Pj4gaW5zdGVhZCBhZGQgYSBtc20gaW9jdGwgdG8gcmV0dXJu
IHRoaXMgaW5mbyBhbmQgc29sdmUgdGhlIHByb2JsZW0gZXZlbg0KPj4+IG1vcmUgbmFycm93bHkg
Zm9yIGEgc2luZ2xlIHBsYXRmb3JtLiAgQnV0IHRoZW4gdGhlIHByb2JsZW0gc3RpbGwNCj4+PiBy
ZW1haW5zIG9uIG90aGVyIHBsYXRmb3Jtcy4NCj4+IFdlbGwgb25jZSBtb3JlOiBUaGlzIGlzICpu
b3QqIE1TTSBzcGVjaWZpYywgeW91IGp1c3QgYWJzb2x1dGVseSAqY2FuJ3QNCj4+IGRvIHRoYXQq
IGZvciBhbnkgZHJpdmVyIQ0KPj4NCj4+IEknbSBqdXN0IHJlYWxseSB3b25kZXJpbmcgd2hhdCB0
aGUgaGVjayBpcyBnb2luZyBvbiBoZXJlLCBiZWNhdXNlIGFsbCBvZg0KPj4gdGhpcyB3YXMgZGlz
Y3Vzc2VkIGluIGxlbmd0aHkgYmVmb3JlIG9uIHRoZSBtYWlsaW5nIGxpc3QgYW5kIHZlcnkNCj4+
IGJsdW50bHkgcmVqZWN0ZWQuDQo+Pg0KPj4gRWl0aGVyIEknbSBtaXNzaW5nIHNvbWV0aGluZyAo
dGhhdCdzIGNlcnRhaW5seSBwb3NzaWJsZSkgb3Igd2UgaGF2ZSBhDQo+PiBzdHJvbmcgY2FzZSBv
ZiBzb21lYm9keSBpbXBsZW1lbnRpbmcgc29tZXRoaW5nIHdpdGhvdXQgdGhpbmtpbmcgYWJvdXQN
Cj4+IGFsbCB0aGUgY29uc2VxdWVuY2VzLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4u
DQo+Pg0KPj4NCj4+PiBTbGlnaHRseSBpbXBsaWNpdCBpbiB0aGlzIGlzIHRoYXQgbWFwcGluZyBk
bWEtYnVmcyB0byB0aGUgZ3Vlc3Qgd29uJ3QNCj4+PiB3b3JrIGZvciBhbnl0aGluZyB0aGF0IHJl
cXVpcmVzIERNQV9CVUZfSU9DVExfU1lOQyBmb3IgY29oZXJlbmN5Li4gd2UNCj4+PiBjb3VsZCBh
ZGQgYSBwb3NzaWJsZSByZXR1cm4gdmFsdWUgZm9yIERNQV9CVUZfSU5GT19WTV9QUk9UIGluZGlj
YXRpbmcNCj4+PiB0aGF0IHRoZSBidWZmZXIgZG9lcyBub3Qgc3VwcG9ydCBtYXBwaW5nIHRvIGd1
ZXN0IG9yIENQVSBhY2Nlc3MNCj4+PiB3aXRob3V0IERNQV9CVUZfSU9DVExfU1lOQy4gIFRoZW4g
YXQgbGVhc3QgdGhlIFZNTSBjYW4gZmFpbCBncmFjZWZ1bGx5DQo+Pj4gaW5zdGVhZCBvZiBzdWJ0
bHkuDQo+Pj4NCj4+PiBCUiwNCj4+PiAtUg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
