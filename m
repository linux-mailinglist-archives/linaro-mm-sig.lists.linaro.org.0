Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C163449DDCD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 10:22:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E96E2401DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Jan 2022 09:22:12 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2061.outbound.protection.outlook.com [40.107.244.61])
	by lists.linaro.org (Postfix) with ESMTPS id CFA36401D4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Jan 2022 09:22:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHH4yiFAHMCoxQa8nvvcBVn+iUlZCBJ+sJNcOOLlgXmwLYrAo2Tk+PUpyr9uQmmgTgdHi5O3cZay/wcpJfbNR4CJLzTIGogAYUVOflQYnT02FRp8kbE/TVG+4Zyl1iA0ClY+okWH4i4nYlr9kVF5Tx/ANRijWGDtmYc1Ake6BwNd9Pz67Bw89HnuPfw9OILRqKCHq9t0BKxytyYVng1cOyH4l9HJZby6qMQRZQoUnB7xRMSozurvKplTTVbO8kdaoLLRARigseJJo4fi+X2LWgoQSMQi+w0Zg3jgqAhFWWAAPJGyUlrEmHTDoK4uiFa4jPG8HYFuh3TGB69c7FdjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8XAeANsy2vye/dYqaXLbEJeK6KI0DqVk+iuW449v0ug=;
 b=b65S1O5dorABcUBQWe9EWcS6BJ/A7I59jgMcxSG9+GqBnA4rh2J7bCKrCBPEf4Fwwhh0Y70j+Hh8b+ueca6dgKGwxW0Oc2/q9mAT+mfRPoG87OOuDN5EvFEmUqfgZWeNtLK5QUYzvqxfyVEJjfFmacE+Q+M5Q7IRZRQnEAe6hOj72i6gGS3mWRTvjGcFQRCsCpHB2TYQPgpvrm5p11X8cRC9OAH1fi5tnZ7GQnFmBIHxyP9+T3k0/rSRQ6NC5SfFdOAHGDi77C5wlI/TQZN05LS2oFYVVZcj8XmjK91Z8u1LZR4K2m1y/NjeuxGwZrere7UAymCCGJeLZHM3xq6erQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8XAeANsy2vye/dYqaXLbEJeK6KI0DqVk+iuW449v0ug=;
 b=UQO94nd884qJD4sUqYhYgmEvRAHjmZB8QbcrLgAU8cggDO6ck5Q0nm3++9UyTQsugv3R13swizyhNd5ClbRvfBKVGaBsqfz2pc19UN3mMfQJzRQ2GfdWpr9HvbKVQGq7VGbTD+tqM8LAuCgqPs6UNFTFwXzcZ9hAt6+afWLExs0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SN1PR12MB2366.namprd12.prod.outlook.com (2603:10b6:802:25::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Thu, 27 Jan
 2022 09:22:00 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d8e7:e6b0:d63c:4a21%5]) with mapi id 15.20.4909.019; Thu, 27 Jan 2022
 09:22:00 +0000
Message-ID: <69c260e4-f4b8-e51c-4930-e7aaf9bec2b9@amd.com>
Date: Thu, 27 Jan 2022 10:21:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <20220127081810.6zt6cyib4s7kpa6f@ldmartin-desk2>
 <3c6a9126-bf88-0f29-425f-36748271c179@amd.com>
 <20220127091247.3uqi5zhesqtecbsw@ldmartin-desk2>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220127091247.3uqi5zhesqtecbsw@ldmartin-desk2>
X-ClientProxiedBy: AM6PR08CA0027.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::15) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbea7cc7-9770-4edb-63d8-08d9e17678c6
X-MS-TrafficTypeDiagnostic: SN1PR12MB2366:EE_
X-Microsoft-Antispam-PRVS: 
	<SN1PR12MB2366A90CD19D50EC264C559E83219@SN1PR12MB2366.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QOc820VNC3d6mW/Lsz0bRVsqxEKAdjGSwrkC1wnlk1nEslNDHaf6B6/JRHJ+zsK3NHnMJmymXJyUEc4tKQP5Mz3fXRNJEjhMikNGhNJBFHGL3KX/9qyTtn2S406NaEhBarjGU/IviOksNzpns0tq5T6WR3mbSGJFoJjNc3vbvzOMJZnOfWqloJQfmyT8DuHFNJ91koJ8sBBih3ukJd5+9g/uA3ZZf/8GFkHKUo5zz39Rt6SJHr/jboTEMlilRgd068D3P/NUzDY+FDQSJncEtm6zoL6K8jhBxLsP3igPyYEFBzA030yWfxr5pmiESVfHxkV+c65JcD9MATEL7b3kcBEwyMLi7z1BUtJrtfYVq6lfESAWDezxjIWo6IhNvzrWhrT10aJeVtqVqe3b4hDegKRL3PdwBc9eNs0fY0b4uSGHAcJjonZJQocUM+LO6zOogzAG/2OHHBzCrAr2A3v9c2IF187XieBMmL4F6cNl+vXXrL1/urvngaFpJW61yq7TMGKjRvE98LxzggeiTTiiQKGj2oXuqtZVZaZRHafq4o/axdYOpuKjqCLzHiJQ2odIHB0fq/1qS1KjaSiEOhD0YnHnL0x9IAKsLnCy+Mw5jLSAUofi593OFPRH87JqgCh3gpfN3DRhMherV5BT/iMBP3IUwupvsb+aMZvmpokmG9NZ6RlzL3yb7v6LDLSQJvOYZOOT2vubqStgA2JWHGd1XT3m0Bt2z+HREGVgkbq9f0OJKaZYHrazNRtK4j2G7I7F705yD1bBOsfG53584RlwNFe0bFlfpiDjhFFuab3R2YKH4eP3m/H9dAW5xU042YUa8bD8PnSNUOJ7C0F9RdRZFw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(31696002)(31686004)(5660300002)(45080400002)(86362001)(508600001)(66556008)(2616005)(316002)(66476007)(4326008)(66574015)(6512007)(8936002)(36756003)(83380400001)(6666004)(2906002)(6916009)(26005)(6486002)(66946007)(6506007)(186003)(38100700002)(8676002)(966005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VVhEZ2VTWHZPTkFYNmE0VzhlTDM5ek5odnJzQ1lYNDBVUkZlTWI2Y29KYXBW?=
 =?utf-8?B?aHMrbnlOSkRvU1NmS2dhVG80Tkt6cnVEWTBSZHdNd2czOWdGdjl1RFZDSUI3?=
 =?utf-8?B?bjk0cW5acEZ0MkFqZGlUalBZOGc4bjd1M1dZV0YyWmxvQ05kWmtyVUR0ZTlL?=
 =?utf-8?B?YzVxM2ovMGN1TU42RW5hUkx0Yk11d2VMbXZmZW9HWTNrQmU2U3dibDAva0VN?=
 =?utf-8?B?U2R5cDVZUDNMeHNWcmwycU93NDBSU3I5U2x3YmtGRW1jeFloRWZxTldpcXhm?=
 =?utf-8?B?a0FjcVhqamdjcFJLRzhSeUx5MWpVcFVleVZYd2hBT1Y3MkJBd083Y1pSTFI2?=
 =?utf-8?B?aVdvSlBHVitSMTNwcEtKakRrbjNWZVFyV1NpTDA1SFJVc3RIc0hNSGNZcFJY?=
 =?utf-8?B?bTlLOG9pNm5KZ2gvaU1lVzJXc1JiUmlJRlUwTkMvSzEwcGVEMXhxR3RYK2pB?=
 =?utf-8?B?bEdWUUUzelRiRGUxTXUrdjdUZ2dQYlA0UU5NalJFOGUrZkUxN2xuZkpLdmlk?=
 =?utf-8?B?YVlPWU1uNllUZTcwZFlNdzJLMmtNbnoraW5tRFZCYWUrM01YRjVMM3ZhUzBN?=
 =?utf-8?B?UzlCaUQvK0JNeHpNMEtYcGwzTFFTeGF4dVMzUnpqOVZRVmJMT1p3T3M5eEFT?=
 =?utf-8?B?NFlWei9nTVZKK1ZhVU1oeFRKdEkwaGxhNVFPMFpaSnVWeFdENmpra2JlbmpY?=
 =?utf-8?B?V1JySTh2R0IrVFBQNy95enI3ZlZCRnpnWWdsTFZKcmxjSTU4eEp6bG5PMDJE?=
 =?utf-8?B?NFdzVm93YnVOYmFCYytac0FYWStERUY2UTdHdWNkbXBLWFpqMjRQYTJqbldK?=
 =?utf-8?B?M204RFBjaytVRkQwR3VFMThwb0V1ZTJUaDl3SGtwNTcxQUg5aHpzcW50WU95?=
 =?utf-8?B?UnJiUVFXWFJ6V0Q5ODExNndKRUpqMmR0aUtnVVFzQk1ZVkpFeWxGbFc3N2di?=
 =?utf-8?B?R0lHQUQ0TTNLRkIzdDQrNkZWQkVvdjNod2hLRmZVeDlMZlBmS3pwRlZnd2Ex?=
 =?utf-8?B?MWxzTGxYdkplWGRnV0VBb25IWDY3SlZFUVQ3cm5ldndlNm5kelNMR0U2Z3A4?=
 =?utf-8?B?MmFiNm9vZG9Ma0ZhK1FQdG5QSnRkM2hLbjhLa1RYd05MRWs0V1A0YmZYa1F6?=
 =?utf-8?B?QlNuK0wycDNFSFIycEZPR3pVNitIRk5NS0tJS055R0tvdFBJYXFJd0dYcDVy?=
 =?utf-8?B?b2NDM1YyeDFsdDJvTU1tclVUQlVzWlA4NDZGYlgxN0NpWEZNUmR4dDMrT0k2?=
 =?utf-8?B?NWcxdkFXcDROZnhBTVlvRHFWUTJXdnRzNFRpaC9OZW1oVmNOTEF2S053dEdu?=
 =?utf-8?B?RzlMTXlkaExwL0tEUVp5Q0lwQXJqUHYrV1o3NHRlYWtJUlV1WUVQNzhDY2hD?=
 =?utf-8?B?ajkvbUY4bUVrV21SWkZqYWxSa1cxTGhOODhscXQ1VzdCZ3d5RmxMdXVpRnNo?=
 =?utf-8?B?RDJLWmh1d3Q4bGp4b2wzaVFJVmZqZ0JTNnBWcHUvMFRLNnpib2lmUEw2ZGJq?=
 =?utf-8?B?cGp2T1FTMlVjYVJUSkh3bmpTYVhqSlpTMy9JM004MUlodzJwWVhnOVFyWk5I?=
 =?utf-8?B?THFLRlJ6YStVUlNuMm12RnIvMXJhdmxXQStiemJNWGFBeCtpS1FtY2hWSkhu?=
 =?utf-8?B?Z2hXVlYzRlVrOXpNNUdMVVpLTFRaUVA2dVI2cFhyb3BIMFIxc3BhSUdER3dz?=
 =?utf-8?B?UUtNeDVmaEFIVXZJL1haRFVUc0dUaVV0YXNIVUs3NEZOclNQYTBDYndSb25G?=
 =?utf-8?B?N2dobjVZWE1MSTV2Y1FoUmFPTDlCRWVzTDFNSDV5MDVpbitvbTB3OFpzeVJz?=
 =?utf-8?B?bWxvd2M5MmpCWXR3bCtDV1FXT3N0YVVDSjVTVVlReFhQRmhWQTMyamFJeWtX?=
 =?utf-8?B?Qys3SG84QjFrdEFjdmFoeG5ramN5QmphM1lMUVV2c3NMdThWdHpqWHR1WS9K?=
 =?utf-8?B?Mnh4ckdwQ3pNNUY5Q2RCVVBjdWYxQk9US0tTc01ENmJXRkNJREtybzVGYnc0?=
 =?utf-8?B?UGtNeitkV25NTXRxbytZTHI1N2hMdEN1cWpTYitncXEyank3c2xMck9DM1BE?=
 =?utf-8?B?R21yZkMySysyYjM0UDdTQXRGd1JJUUZZMFdRQnQxbUwvMXJUQk55RFBkUGJ1?=
 =?utf-8?Q?eoZw=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbea7cc7-9770-4edb-63d8-08d9e17678c6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2022 09:22:00.1107
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KHgUFnTKoTnyWRGq7+9xg/9BXvbTeuxG+1QM+X/yGAu48+rSzg359Z8CB0MrG1/9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2366
Message-ID-Hash: FPDKHZGG4CUUKG6CP5Z7P6GX2GKDYJN4
X-Message-ID-Hash: FPDKHZGG4CUUKG6CP5Z7P6GX2GKDYJN4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize second map
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FPDKHZGG4CUUKG6CP5Z7P6GX2GKDYJN4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDEuMjIgdW0gMTA6MTIgc2NocmllYiBMdWNhcyBEZSBNYXJjaGk6DQo+IE9uIFRodSwg
SmFuIDI3LCAyMDIyIGF0IDA5OjU1OjA1QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+PiBBbSAyNy4wMS4yMiB1bSAwOToxOCBzY2hyaWViIEx1Y2FzIERlIE1hcmNoaToNCj4+PiBP
biBUaHUsIEphbiAyNywgMjAyMiBhdCAwOTowMjo1NEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmln
IHdyb3RlOg0KPj4+PiBBbSAyNy4wMS4yMiB1bSAwODo1NyBzY2hyaWViIEx1Y2FzIERlIE1hcmNo
aToNCj4+Pj4+IE9uIFRodSwgSmFuIDI3LCAyMDIyIGF0IDA4OjI3OjExQU0gKzAxMDAsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+Pj4gQW0gMjYuMDEuMjIgdW0gMjE6MzYgc2NocmllYiBM
dWNhcyBEZSBNYXJjaGk6DQo+Pj4+Pj4+IFtTTklQXQ0KPj4+Pj4gaHVtbi4uLiBub3Qgc3VyZSBp
ZiBJIHdhc8KgIGNsZWFyLiBUaGVyZSBpcyBubyBpbXBvcnRlciBhbmQgDQo+Pj4+PiBleHBvcnRl
ciBoZXJlLg0KPj4+Pg0KPj4+PiBZZWFoLCBhbmQgZXhhY3RseSB0aGF0J3Mgd2hhdCBJJ20gcG9p
bnRpbmcgb3V0IGFzIHByb2JsZW0gaGVyZS4NCj4+Pj4NCj4+Pj4gWW91IGFyZSB1c2luZyB0aGUg
aW50ZXIgZHJpdmVyIGZyYW1ld29yayBmb3Igc29tZXRoaW5nIGludGVybmFsIHRvIA0KPj4+PiB0
aGUgZHJpdmVyLiBUaGF0IGlzIGFuIGFic29sdXRlbHkgY2xlYXIgTkFLIQ0KPj4+Pg0KPj4+PiBX
ZSBjb3VsZCBkaXNjdXNzIHRoYXQsIGJ1dCB5b3UgZ3V5cyBhcmUganVzdCBzZW5kaW5nIGFyb3Vu
ZCBwYXRjaGVzIA0KPj4+PiB0byBkbyB0aGlzIHdpdGhvdXQgYW55IGNvbnNlbnN1cyB0aGF0IHRo
aXMgaXMgYSBnb29kIGlkZWEuDQo+Pj4NCj4+PiBzL3lvdSBndXlzL3lvdS8gaWYgeW91IGhhdmUg
dG8gYmxhbWUgYW55b25lIC0gSSdtIHRoZSBvbmx5IHMtby1iIGluDQo+Pj4gdGhlc2UgcGF0Y2hl
cy4gSSdtIHNlbmRpbmcgdGhlc2UgdG8gX2J1aWxkIGNvbnNlbnN1c18gb24gd2hhdCBtYXkgYmUg
DQo+Pj4gYSBnb29kDQo+Pj4gdXNlIGZvciBpdCBzaG93aW5nIGEgcmVhbCBwcm9ibGVtIGl0J3Mg
aGVscGluZyB0byBmaXguDQo+Pg0KPj4gV2VsbCBhIGNvdmVyIGxldHRlciB3b3VsZCBoYXZlIGJl
ZW4gaGVscGZ1bCwgbXkgaW1wcmVzc2lvbiB3YXMgdGhhdCANCj4+IHlvdSBoYXZlIGEgbGFyZ2Vy
IHNldCBhbmQganVzdCB3YW50IHRvIHVwc3RyZWFtIHNvbWUgbWlub3IgRE1BLWJ1ZiANCj4+IGNo
YW5nZXMgbmVjZXNzYXJ5IGZvciBpdC4NCj4NCj4gSSBtaXNzZWQgYWRkaW5nIHRoaXMgc2VudGVu
Y2UgdG8gdGhlIGNvdmVyIGxldHRlciwgYXMgbXkgaW1wcmVzc2lvbiANCj4gd2FzIHRoYXQNCj4g
ZG1hLWJ1Zi1tYXAgd2FzIGFscmVhZHkgdXNlZCBvdXRzaWRlIGludGVyLWRyaXZlciBmcmFtZXdv
cmsuIEJ1dCB0aGVyZQ0KPiBpcyBhY3R1YWxseSBhIGNvdmVyIGxldHRlcjoNCj4NCj4gaHR0cHM6
Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJG
JTJGbG9yZS5rZXJuZWwub3JnJTJGYWxsJTJGMjAyMjAxMjYyMDM3MDIuMTc4NDU4OS0xLWx1Y2Fz
LmRlbWFyY2hpJTQwaW50ZWwuY29tJTJGJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29l
bmlnJTQwYW1kLmNvbSU3Q2IzNmRlZjRhNmViZDQ4Nzk3MzFjMDhkOWUxNzUzY2NkJTdDM2RkODk2
MWZlNDg4NGU2MDhlMTFhODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzc4ODcxNTkzMzE5OTE2MSU3
Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16
SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YT1nd1cwNU9h
VXElMkZ4bEJXblklMkZQdVBmbDBZRGRLcDVWVGJsbGFTbW40NW5FOCUzRCZhbXA7cmVzZXJ2ZWQ9
MCANCj4NCj4NCj4gQW5kIGxvb2tpbmcgYXQgaXQgbm93LCBpdCBzZWVtcyBJIG1pc3NlZCBhZGRp
bmcgVGhvbWFzIFppbW1lcm1hbm4gdG8gQ2MuDQo+DQo+Pg0KPj4gTm93IEkga25vdyB3aHkgcGVv
cGxlIGFyZSBidWdnaW5nIG1lIGFsbCB0aGUgdGltZSB0byBhZGQgY292ZXIgDQo+PiBsZXR0ZXJz
IHRvIGFkZCBtb3JlIGNvbnRleHQgdG8gbXkgc2V0cy4NCj4+DQo+Pj4NCj4+PiBGcm9tIGl0cyBk
b2N1bWVudGF0aW9uOg0KPj4+DQo+Pj4gwqAqIFRoZSB0eXBlIDpjOnR5cGU6YHN0cnVjdCBkbWFf
YnVmX21hcCA8ZG1hX2J1Zl9tYXA+YCBhbmQgaXRzIA0KPj4+IGhlbHBlcnMgYXJlDQo+Pj4gwqAq
IGFjdHVhbGx5IGluZGVwZW5kZW50IGZyb20gdGhlIGRtYS1idWYgaW5mcmFzdHJ1Y3R1cmUuIFdo
ZW4gDQo+Pj4gc2hhcmluZyBidWZmZXJzDQo+Pj4gwqAqIGFtb25nIGRldmljZXMsIGRyaXZlcnMg
aGF2ZSB0byBrbm93IHRoZSBsb2NhdGlvbiBvZiB0aGUgbWVtb3J5IHRvIA0KPj4+IGFjY2Vzcw0K
Pj4+IMKgKiB0aGUgYnVmZmVycyBpbiBhIHNhZmUgd2F5LiA6Yzp0eXBlOmBzdHJ1Y3QgZG1hX2J1
Zl9tYXAgDQo+Pj4gPGRtYV9idWZfbWFwPmANCj4+PiDCoCogc29sdmVzIHRoaXMgcHJvYmxlbSBm
b3IgZG1hLWJ1ZiBhbmQgaXRzIHVzZXJzLiBJZiBvdGhlciBkcml2ZXJzIG9yDQo+Pj4gwqAqIHN1
Yi1zeXN0ZW1zIHJlcXVpcmUgc2ltaWxhciBmdW5jdGlvbmFsaXR5LCB0aGUgdHlwZSBjb3VsZCBi
ZSANCj4+PiBnZW5lcmFsaXplZA0KPj4+IMKgKiBhbmQgbW92ZWQgdG8gYSBtb3JlIHByb21pbmVu
dCBoZWFkZXIgZmlsZS4NCj4+Pg0KPj4+IGlmIHRoZXJlIGlzIG5vIGNvbnNlbnN1cyBhbmQgYSBi
ZXR0ZXIgYWx0ZXJuYXRpdmUsIEknbSBwZXJmZWN0bHkgDQo+Pj4gZmluZSBpbg0KPj4+IHRocm93
aW5nIGl0IG91dCBhbmQgdXNpbmcgdGhlIGJldHRlciBhcHByb2FjaC4NCj4+DQo+PiBXaGVuIFRo
b21hcyBaaW1tZXJtYW5uIHVwc3RyZWFtZWQgdGhlIGRtYV9idWZfbWFwIHdvcmsgd2UgaGFkIGEg
DQo+PiBkaXNjdXNzaW9uIGlmIHRoYXQgc2hvdWxkbid0IGJlIGluZGVwZW5kZW50IG9mIHRoZSBE
TUEtYnVmIGZyYW1ld29yay4NCj4+DQo+PiBUaGUgY29uc2Vuc3VzIHdhcyB0aGF0IGFzIHNvb24g
YXMgd2UgaGF2ZSBtb3JlIHdpZGVseSB1c2UgZm9yIGl0IHRoaXMgDQo+PiBzaG91bGQgYmUgbWFk
ZSBpbmRlcGVuZGVudC4gU28gYmFzaWNhbGx5IHRoYXQgaXMgd2hhdCdzIGhhcHBlbmluZyBub3cu
DQo+Pg0KPj4gSSBzdWdnZXN0IHRoZSBmb2xsb3dpbmcgYXBwcm9hY2g6DQo+PiAxLiBGaW5kIGEg
ZnVua3kgbmFtZSBmb3IgdGhpcywgc29tZXRoaW5nIGxpa2UgaW9tZW1fLCBraW9tYXBfIG9yIA0K
Pj4gc2ltaWxhci4NCj4NCj4gaW9zeXNfbWFwPw0KDQpXb3JrcyBmb3IgbWUuDQoNCj4NCj4+IDIu
IFNlcGFyYXRlIHRoaXMgZnJvbSBhbGwgeW91IGRyaXZlciBkZXBlbmRlbnQgd29yayBhbmQgbW92
ZSB0aGUgDQo+PiBkbWFfYnVmX21hcCBzdHJ1Y3R1cmUgb3V0IG9mIERNQS1idWYgaW50byB0aGlz
IG5ldyB3aGF0ZXZlcl8gcHJlZml4Lg0KPg0KPiBzaG91bGQgdGhpcyBiZSBhIGZvbGxvdyB1cCB0
byB0aGUgZHJpdmVyIHdvcmsgb3IgYSBwcmVyZXF1aXNpdGU/DQoNClByZXJlcXVpc2l0ZS4gU3Ry
dWN0dXJhbCBjaGFuZ2VzIGxpa2UgdGhpcyBhbHdheXMgc2VwYXJhdGUgdG8gdGhlIA0KYWN0dWFs
bHkgd29yayBzd2l0Y2hpbmcgb3ZlciB0byB0aGVtIGJlY2F1c2UgdGhlIGxhdGVyIG5lZWRzIGEg
bXVjaCANCmZld2VyIGF1ZGllbmNlIGZvciByZXZpZXcuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4u
DQoNCj4NCj4gdGhhbmtzDQo+IEx1Y2FzIERlIE1hcmNoaQ0KPg0KPj4gMy4gUGluZyBUaG9tYXMs
IExLTUwsIG1lIGFuZCBwcm9iYWJseSBhIGNvdXBsZSBvZiBvdGhlciBjb3JlIHBlb3BsZSANCj4+
IGlmIHRoaXMgaXMgdGhlIHJpZ2h0IGlkZWEgb3Igbm90Lg0KPj4gNC4gV29yayBvbiBkcm9wcGlu
ZyB0aGUgbWFwIHBhcmFtZXRlciBmcm9tIGRtYV9idWZfdnVubWFwKCkuIFRoaXMgaXMgDQo+PiBi
YXNpY2FsbHkgd2h5IHdlIGNhbid0IG1vZGlmeSB0aGUgcG9pbnRlcnMgcmV0dXJuZWQgZnJvbSAN
Cj4+IGRtYV9idWZfdm1hcCgpIGFuZCBoYXMgYWxyZWFkeSBjYXVzZSBhIGZldyBwcm9ibGVtcyB3
aXRoIA0KPj4gZG1hX2J1Zl9tYXBfaW5jcigpLg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3Rp
YW4uDQo+Pg0KPj4+DQo+Pj4gTHVjYXMgRGUgTWFyY2hpDQo+Pg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
