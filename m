Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD8A3F03BF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 14:31:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FB356056A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Aug 2021 12:31:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A511E6050C; Wed, 18 Aug 2021 12:31:48 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D53D96073C;
	Wed, 18 Aug 2021 12:31:44 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4A8336050C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 12:31:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4812F6073C; Wed, 18 Aug 2021 12:31:43 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2042.outbound.protection.outlook.com [40.107.92.42])
 by lists.linaro.org (Postfix) with ESMTPS id 3C6BF6050C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Aug 2021 12:31:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KzMmHWeiTk5J29GapkDCb4ae97s9r5409fNgMQNbP9mPx3kQ8EbMCKBS//niou1jWQDZicacOpqKKJdKAGtOd5f4bkWd/Fa9IHRqHNjK8Ls6bkrWHu9R6v7U8ohq+h3zOEVDTpBLvtpTxDpUDTv8RRZ4cBRZTyyvT4Bz8UgvHKpEG7yTQ2nABJUwKVL/QxSxlEocILQzOTHD9kSA8pEC1BYGBhLZo4SvDoJsXhtwa5sIV4UBqA8aq4md5Tc2KI58N+woyZn7t/3b7JXc3+DdbN4/LfD8udEeXvoKY56c0haksF3xqinVgLKJFjX/RZ7TiMn9FHUkn7fl3PXGHqfzeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nb3IqgKNak/8G7n6WmYfmGRa/R+U47j6uAVrdTSfS0k=;
 b=aTCCoAZI7EJg7XLkPU65L0lEKdIR1MCOC5nd88g3CLrN09r5HoZYDiVUekFb+06q37bQPZsm1UUX4juPu0xqJxDyFtABCoMm+S3GwZwWgbgn77lUOb8bB/6wTnNxyr5Z7ol4pxwqbury/cqKAljAih/MpugCVdxnAszqjWIdi87aS9dPC4c8cHDIp/8BegO1NuA9hV3fE9v5Yz8uGRoMen83rF15e9ygIW9ukZz7oBx1CnsABmxA+/CvYeB8URc6FtkHxJf3cprTri3HIpRhnlDoKhaDXrNZMkWmVzjqwv1kIXOj9sOPpeUZMUUNZDFWLOZxzsTDzLL+18HviHBsyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nb3IqgKNak/8G7n6WmYfmGRa/R+U47j6uAVrdTSfS0k=;
 b=YiOU5AL6qo85+/4AOWYyYdW1+G4lF6ufYdzRvEZCrhVWGeaHGgfUmS1M1x0ydflBy+jCq288CIOAu5rbgRyHu3VEyMXRdme1JPu9lS9GAPQ2qUNHcr6G4wHsryekHJOEG0icK8P/IVCC+uN7PUrQWVDDBBZRDadYYSaCRk9QplQ=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by BL0PR12MB4930.namprd12.prod.outlook.com (2603:10b6:208:1c8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Wed, 18 Aug
 2021 12:31:39 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::dce2:96e5:aba2:66fe%6]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 12:31:39 +0000
To: "Sa, Nuno" <Nuno.Sa@analog.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
References: <20210818115810.274084-1-nuno.sa@analog.com>
 <9a63b45f-6fec-6269-ae16-8604b08514de@amd.com>
 <SJ0PR03MB6359C318092E0CB99D28D85099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <ed0bf7fd-de49-f94a-3eda-0c1fac50153a@amd.com>
Date: Wed, 18 Aug 2021 14:31:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <SJ0PR03MB6359C318092E0CB99D28D85099FF9@SJ0PR03MB6359.namprd03.prod.outlook.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR10CA0104.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::21) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.31.55.180] (165.204.72.6) by
 AM0PR10CA0104.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Wed, 18 Aug 2021 12:31:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43c76f56-194d-4e54-5279-08d962442099
X-MS-TrafficTypeDiagnostic: BL0PR12MB4930:
X-Microsoft-Antispam-PRVS: <BL0PR12MB4930EE6C7D789DE5FBC90B2783FF9@BL0PR12MB4930.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aUkuhhDuBmuwLtR3xknUpyQOCVJ1bDEqNlXmZJSZII+PGCJuh76cDL9xhD1F9C9vB9RBhYfGEgBPq5aIlsKH9LTDklcWfel+zzv2DPmBNokRQ9+FvhIly2ebsGzydjBruNlBFxFT1fOmoRJe6TLQpqN5acN2HVswBaVyqGyi6eChSnzJsG5cmRoy5j9i+BB0Kq41WigmYeJOqz1nig9p7YxmxKoDET8lo6e7DMiiits+8AXLFwE6w9euLQZidsH/YSb+YkQLkl0nnU1UhlYEsD6yRiB7T9ulh+w22KpPQHKAXBusqTR8kj4NchE1yt21rledMaWgFBhU04Jq2+PFTSsXwfLsqJvg7ZFjFcde6hQE8k/xmmGiufVnDjC0QH0w9qghJ5XZZGQGBrbrmpjuZc5ZKW0odRcm+bsEX4TK0gaSafp8kyEwyMDv8qyx1Hrhg+pukP/oEqi1CD8M6yOrn4rdxAdLrsIY/i/nXFDbMP+Tf7CBzNrNu2MitSiF6ZLm5xZqWrp+JNzjV9yopmFNoAnP94RJZib21VTE63QDUG87X66aKuDSVbOFZYtMGev0CPeoAxOLLx25BaNB8AxwYQzVAxbOG/RALehQDbZOy5bof4IrkSReuRlvALWxDtYZwAm5A9SsSrDV83tHCMi0Bao/6bTPlHLoPXpywilMaJsLIsfxmOIODhRieLMjpok+nQK3EMpMpy2KD7JSYPUkmSVE8mq3vUondBE6MNRW5xw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(346002)(366004)(39860400002)(376002)(53546011)(6486002)(5660300002)(8936002)(316002)(6666004)(26005)(36756003)(186003)(86362001)(478600001)(66574015)(4326008)(66556008)(54906003)(8676002)(38100700002)(956004)(66476007)(2616005)(31696002)(110136005)(66946007)(16576012)(83380400001)(31686004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3RCak5iRkw1YTZMc2Rac1Zab1laNkVrRDdCZ1VEemxSY2M2d2hTVGt3MFRs?=
 =?utf-8?B?Sm1LSFdTQTdiZzlySzZpN2hHWnZORy80azVCaWp6YzUzaVJVWTNkZi8zQnAy?=
 =?utf-8?B?cUQ1UEFvUFZScU5wbHRLOUpuaG9tdHVHZ1lDUmhDcnlUS3ozTTBRM2c0NTdC?=
 =?utf-8?B?K1krSWxkUVh5cS9EV3R1aW4yS0QrQUM1djFtMHRPZ2xOa01tcWM3Ly9jampq?=
 =?utf-8?B?a2RMN3hnL1BGQTVqaE9kaFhDanQvQmVNRW1aSVJ6d2JnbEo1NGZPenBtVGZP?=
 =?utf-8?B?V1pNQzR3YXlVWG9YWDlUVDM4VXpla1BrOUZDOW9hQmlMb2R2Q2NBOTRiT1Ra?=
 =?utf-8?B?Nm0yanpKZG9GYm92MjVVZldPNW1YVWQ1QkRQUStUdisrb08yVVgzaVMzczN2?=
 =?utf-8?B?Q0VoSTZ0NHY0SDczcmI3c2VXa0JGeFc2NEc2cTFrNVVkelphRzI2cXFIbkd5?=
 =?utf-8?B?cCs0ZDltUllIT1c2blBlY2dHOTk2bnVTN1ZjZVArOFR1ZWg0NmQzeHFBaHh2?=
 =?utf-8?B?bDhXNU9zcE1FYjEvL01iUHBHQzR3UFBCenNJcVdSUzRPL0NTdmxlNDdzSUUz?=
 =?utf-8?B?T2tibDVuNXV2L0xhWGRuaWJKRkppM2VvdUFrWC9HelNjSFh4QURkUERJWWpj?=
 =?utf-8?B?eFpXOUUxQVQva1FqaXZIQ0d6UFdDbFZXU2tJY0xON0lJUWlONTB1N1NVcXNz?=
 =?utf-8?B?TmJjNlB0dWhwWncxakFTK2FHUmU4SmMwNUdHL2p0RUZpSE9YUGlTWmZRa1VC?=
 =?utf-8?B?SExJUUxNMk40MVhiK1VDcSt6OHA5a3phN3I3TFRGQ3Q4RmhQVXNqaFlhaU9X?=
 =?utf-8?B?MVZyV2UvRHhwTWc4em9FYUlHUlE1MVFtbkVTbTZIb2ZoYnI2bjdEcHVlOWtp?=
 =?utf-8?B?TldpcU1DY2xpZ3BVOEpJbVhvS3dWaDFEdkZHbEpkTHpySTFFMDlya0JQVTNQ?=
 =?utf-8?B?L2ZWRWJnbG4vcTZvcXFVQ25VR3FZWE1uSDNiZkNuZFAvaG9KUHFUL012MzJ4?=
 =?utf-8?B?ek40bTFXdzFVa2pURDlQWVJ1cCtoVHVpUGlNNksxTkp1bzF5c2dRZ3dxYStw?=
 =?utf-8?B?Lzc4ZU9wdkViTG5pRjA2cFdMYXJZZHdVUTg3WHRsbUZ2YUdLZnZUSzdBZWxi?=
 =?utf-8?B?UnZvSEdnMHNiTm5qVmNEMi9vaE50MExJSXlhNXVEc2JHd0tvT0ljU1c2SmRZ?=
 =?utf-8?B?TGFFeVZsTlREaVlaeERVL0NGeHpXTWYvR3NEWi91MDhtMENUdHgreVFnT1l5?=
 =?utf-8?B?Uy96d0FQV0U5czlrOFdXNjNLOXl2RkVUbFJ6ZjRoMkh1WWNrZXJRNUs2ZTRi?=
 =?utf-8?B?M3pCazhhVzBDakNkV281ZXpPUkVVekNjRTM2RS9zd1BNc0JqSEJWUGk1YUhp?=
 =?utf-8?B?dFlFSjJhSnFRN291a2JGMHFxcEtaMFYvNlNOR2FTWVFpdGZiN2E0cjZuOHhQ?=
 =?utf-8?B?NE8zMUJYbFFUNlFXdGx0a3BkUTByTXFHM2E5TkIvZ1JPd3N4TnJ6QkQwQVhR?=
 =?utf-8?B?RVFLRnZoNHpTNmFYdWRYWFBETFN5WGdWM293ZUl0V3cxRUphdVBFY3FOQzYw?=
 =?utf-8?B?c1JxUWJ4My9Hc0lldUZFUzBkUHpqaUtOSWJKeGQyNUttQmJiYmoyc01IUkpM?=
 =?utf-8?B?bEF4b00wQmg1YUsvaUUzbFBSeHNLenliNk9JUTc5T0lsZjdZTUlzUWxORThv?=
 =?utf-8?B?N1dpOFNBRkZScDF1dGdjM0xKQzNRd215R3hJb2xwbHV0enUvZjNxZCtSZFM2?=
 =?utf-8?Q?HmpI3OQkX3hy6pq+qwn9HcKT4vIEhtvTZL5iYCE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43c76f56-194d-4e54-5279-08d962442099
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2021 12:31:39.5222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SbAGM14DJChoBp2SNL8aEOAMQ6yfvBnhV7x+NW6QdHsFufL/HwvUJZXIAQMKMbSq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4930
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: return -EINVAL if dmabuf
 object is NULL
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Clark <rob@ti.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTguMDguMjEgdW0gMTQ6MTcgc2NocmllYiBTYSwgTnVubzoKPj4gRnJvbTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+PiBTZW50OiBXZWRuZXNkYXksIEF1
Z3VzdCAxOCwgMjAyMSAyOjEwIFBNCj4+IFRvOiBTYSwgTnVubyA8TnVuby5TYUBhbmFsb2cuY29t
PjsgbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOwo+PiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnOyBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IFJvYiBDbGFy
ayA8cm9iQHRpLmNvbT47IFN1bWl0IFNlbXdhbAo+PiA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+
Cj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRtYS1idWY6IHJldHVybiAtRUlOVkFMIGlmIGRtYWJ1
ZiBvYmplY3QgaXMKPj4gTlVMTAo+Pgo+PiBbRXh0ZXJuYWxdCj4+Cj4+IFRvIGJlIGhvbmVzdCBJ
IHRoaW5rIHRoZSBpZihXQVJOX09OKCFkbWFidWYpKSByZXR1cm4gLUVJTlZBTAo+PiBoYW5kbGlu
Zwo+PiBoZXJlIGlzIG1pc2xlYWRpbmcgaW4gdGhlIGZpcnN0IHBsYWNlLgo+Pgo+PiBSZXR1cm5p
bmcgLUVJTlZBTCBvbiBhIGhhcmQgY29kaW5nIGVycm9yIGlzIG5vdCBnb29kIHByYWN0aWNlIGFu
ZAo+PiBzaG91bGQKPj4gcHJvYmFibHkgYmUgcmVtb3ZlZCBmcm9tIHRoZSBETUEtYnVmIHN1YnN5
c3RlbSBpbiBnZW5lcmFsLgo+IFdvdWxkIHlvdSBzYXkgdG8ganVzdCByZXR1cm4gMCB0aGVuPyBJ
IGRvbid0IHRoaW5rIHRoYXQgaGF2aW5nIHRoZQo+IGRlcmVmZXJlbmNlIGlzIGFsc28gZ29vZC4u
CgpObywganVzdCBydW4gaW50byB0aGUgZGVyZWZlcmVuY2UuCgpQYXNzaW5nIE5VTEwgYXMgdGhl
IGNvcmUgb2JqZWN0IHlvdSBhcmUgd29ya2luZyBvbiBpcyBhIGhhcmQgY29kaW5nIAplcnJvciBh
bmQgbm90IHNvbWV0aGluZyB3ZSBzaG91bGQgYnViYmxlIHVwIGFzIHJlY292ZXJhYmxlIGVycm9y
LgoKPiBJIHVzZWQgLUVJTlZBTCB0byBiZSBjb2hlcmVudCB3aXRoIHRoZSByZXN0IG9mIHRoZSBj
b2RlLgoKSSByYXRoZXIgc3VnZ2VzdCB0byByZW1vdmUgdGhlIGNoZWNrIGVsc2V3aGVyZSBhcyB3
ZWxsLgoKQ2hyaXN0aWFuLgoKPgo+IC0gTnVubyBTw6EKPgo+PiBDaHJpc3RpYW4uCj4+Cj4+IEFt
IDE4LjA4LjIxIHVtIDEzOjU4IHNjaHJpZWIgTnVubyBTw6E6Cj4+PiBPbiB0b3Agb2Ygd2Fybmlu
ZyBhYm91dCBhIE5VTEwgb2JqZWN0LCB3ZSBhbHNvIHdhbnQgdG8gcmV0dXJuIHdpdGggYQo+Pj4g
cHJvcGVyIGVycm9yIGNvZGUgKGFzIGRvbmUgaW4gJ2RtYV9idWZfYmVnaW5fY3B1X2FjY2Vzcygp
JykuCj4+IE90aGVyd2lzZSwKPj4+IHdlIHdpbGwgZ2V0IGEgTlVMTCBwb2ludGVyIGRlcmVmZXJl
bmNlLgo+Pj4KPj4+IEZpeGVzOiBmYzEzMDIwZTA4NmIgKCJkbWEtYnVmOiBhZGQgc3VwcG9ydCBm
b3Iga2VybmVsIGNwdSBhY2Nlc3MiKQo+Pj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8u
c2FAYW5hbG9nLmNvbT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8
IDMgKystCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLQo+PiBidWYuYwo+Pj4gaW5kZXggNjNkMzIyNjFiNjNmLi44ZWM3ODc2
ZGQ1MjMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+PiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+PiBAQCAtMTIzMSw3ICsxMjMxLDggQEAgaW50
IGRtYV9idWZfZW5kX2NwdV9hY2Nlc3Moc3RydWN0Cj4+IGRtYV9idWYgKmRtYWJ1ZiwKPj4+ICAg
IHsKPj4+ICAgIAlpbnQgcmV0ID0gMDsKPj4+Cj4+PiAtCVdBUk5fT04oIWRtYWJ1Zik7Cj4+PiAr
CWlmIChXQVJOX09OKCFkbWFidWYpKQo+Pj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+Pgo+Pj4gICAg
CW1pZ2h0X2xvY2soJmRtYWJ1Zi0+cmVzdi0+bG9jay5iYXNlKTsKPj4+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
