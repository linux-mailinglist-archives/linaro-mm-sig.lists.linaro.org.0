Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AD730EE2E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 09:17:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1F0F860EE1
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Feb 2021 08:17:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 10B0B66758; Thu,  4 Feb 2021 08:17:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B786E66759;
	Thu,  4 Feb 2021 08:16:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BE3EA66756
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 08:16:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B0D8A66759; Thu,  4 Feb 2021 08:16:43 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2080.outbound.protection.outlook.com [40.107.236.80])
 by lists.linaro.org (Postfix) with ESMTPS id C982266756
 for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Feb 2021 08:16:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Km+BV/Vd48YdES4Dr0B6atESWXrpDxxqrPkuqlOAonMSsYiNZjTVm4w5PvOoEC1urZZYtuSm/rCxpQaqkjiDBzDXtLvN4845ut6dvmcjGDxhVJZkvrdTa/ZOUntx+soC8ToIYy2sFskFcCmm8+ZCI/acrMry00SUodfBP79BQ0mN22Xe0iYm6spqAr+eHxydESENJZXpv82H7ggBNfC1/zM9ONjsV6kk7SRd167rs4zaTgKp1ZT8LvIHXs3JKxH3AMWFyyL9+Qf3nASV21tnn35Yo5xh2W80R77cV4owzBZ/DABkN8v5SP6YDCizrJwceqCstFZxx0xots+0sNflIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5YA8rfWzdX4Xqt2zKyCwtuidKecY3Wi3nxre6h7sYMc=;
 b=bV6GNRJ2Sx8qGRaIO7Re28CMoF1Ods9Mpou7E3HMTfU7hp3dBfxasDHqPgvnjGqa9PRQnWBA8goCwSXtyehhhmfeNktfgoTbgxI4ekL5eOSakFOSWaFApgrVP997i6u+12zZRvp/Uhsq01nn4oJmwKXTtHHYQ3+uh21oPz4bwq2ng/PyYrUSv0h35kUBAFWgg8vcheWJyPeIz3DnS6AUjq0iUmV8ImJvNxYLFTb5MKoKGvTQyn7QBx96Hv2iuXDTL+cfNpbRkQWqCkl3kIAVJZOspAXr8Fe+EVahkGWEmS6O6S2e1g+VjkyNwJPFUhBmQ3mqCRBgPdPjH9EWKRB6DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4520.namprd12.prod.outlook.com (2603:10b6:208:26f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Thu, 4 Feb
 2021 08:16:39 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::44f:9f01:ece7:f0e5%3]) with mapi id 15.20.3805.024; Thu, 4 Feb 2021
 08:16:39 +0000
To: Suren Baghdasaryan <surenb@google.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20210203003134.2422308-1-surenb@google.com>
 <20210203015553.GX308988@casper.infradead.org>
 <CAKMK7uHnNdjOYX5Rhj=uGMz7hSz12JhgkZJCfiqgkpjXnMfL4A@mail.gmail.com>
 <CAJuCfpG4GkVbeW=bB+Qrm5GPrZAwg0_rmyG05iwQmL7GrWAYHw@mail.gmail.com>
 <CAKMK7uHi+mG0z0HUmNt13QCCvutuRVjpcR0NjRL12k-WbWzkRg@mail.gmail.com>
 <CAKMK7uETu_m+=MHyPmqBbEP__qjMF_wmr4c2BiVTPcwE8c+5Mg@mail.gmail.com>
 <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <ced1c1be-e731-946e-e9ce-919520fe935a@amd.com>
Date: Thu, 4 Feb 2021 09:16:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAJuCfpHC6P5cJh-1hv=vjGHCCkM6mA_p19H6tCZmCDxhTuASkQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
X-ClientProxiedBy: AM0PR10CA0130.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::47) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
 (2a02:908:1252:fb60:be8a:bd56:1f94:86e7) by
 AM0PR10CA0130.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::47) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.17 via Frontend Transport; Thu, 4 Feb 2021 08:16:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: da2081e2-9b20-400b-4e6b-08d8c8e53295
X-MS-TrafficTypeDiagnostic: MN2PR12MB4520:
X-Microsoft-Antispam-PRVS: <MN2PR12MB45204D167705331452E2FAE283B39@MN2PR12MB4520.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 36/egyZdwo7iUIUvAt5F/1TS0k1hDVQqUP9xDFgEgNZbx4+EitjVU/b0xCg+uhItlgckzzT1dj+ckkOnJj1xveeHuW21EjWbtSLZlJU/ZHeAfZ0cTz9mDg0b74wNM4LE+LBU9xGGlRKn2uqlTQZie+Ujzytu0HbyHD5AMa8FbFJHOSFCOLQ7ah9MM9gEieG1+v/YHvvk1f7QutWrUkUyE7c5SLRKtncYSkofEHhaEYiVI1hW9hX7XWhOEF8gyGpSJGaO8xWA+OAHfxHubN+sJC5L2EClbPxS3f13tKmWMj1bXtF+gl3F0j3mgu18S7ukorhbdsM+obPVVU+Ule3V8OC7T9Rht5gedIV84G4fAt9b4pkA1IR726TdNmBuD0o0o7GP1fxLNUhAF5zy0kW57FyOsSHB72lzDrLrFmNlIxEyN7Gi77CKGr4/vKq/8+GxP1I4sXhnRV4nz+7Ed3rbamAMCwfPTNBPbNePBwT8/pUa1YRkA2S3Tx5G0LzKckWV6yxMEsIsR5SzFVumLz/fbBTeK1iZHY9D/Ae9FSrry11m/tIaSbQWz9jnGjYIwG/Gou4ubgaZzPb8TsThkmJ+YvUvUk43dmfjQAtRGF4dwBs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(31696002)(186003)(6666004)(5660300002)(52116002)(66476007)(86362001)(36756003)(478600001)(2616005)(16526019)(4326008)(6486002)(316002)(83380400001)(8936002)(31686004)(8676002)(110136005)(66946007)(7416002)(2906002)(54906003)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NDdsT2ZvVS9MaTNhZ0o1UndzZUZjRW5rZ3JXb2xFYXZ6NFRVanJNM3d2MUNL?=
 =?utf-8?B?Sys0MGtCOW1tTW9hZTNXT0d4Vm52TWpjdlZoNzdNUkw4dmFSdWJ3MUREUnMv?=
 =?utf-8?B?N0VpbElRbXRDQUtpNGJ6QUtWWHh0VEl4cURlS3BoWXM1SW44T0VONVNJVm1w?=
 =?utf-8?B?NEJtaWExdnZjMGY1R014YUxUQXNKbW8vWFlOYWR3dkdkREVVTTZaMHlnWVlv?=
 =?utf-8?B?UG51bE9XU2tscWtPV3lKTk0yRjNocHROdWRrTUY4c1NNTmUwb0F6Q0I3YnJ0?=
 =?utf-8?B?UDl3bFQ1L2JrUUR6WkZFaDRGanRRVEorcDFhaDlGUS9qSlVoMFpmVmdmK2Zs?=
 =?utf-8?B?NVpyRU5pK3FyUlZXeHJhcVVEczUxaXEzYlBZaG1nUmFTcytpbVA4OFA5d1Ra?=
 =?utf-8?B?OERybEpIbzczVVUvNHVnQmVnWXE0NEc1aEFVcVdPMDEvZG0yRURBQkMvclJn?=
 =?utf-8?B?OTQxQjNMN1ZXeXRRWWJtQ3hzNU56R1lVdHpyeFVySVZmMEkvbnFZKzg0bkFz?=
 =?utf-8?B?T0VSK1NuRnBzSjYrcktRUTFkNVE1Q1NRWHREZk1wdzF5U1dWMVFxQkdmVEdp?=
 =?utf-8?B?b1haUWJ1Z0ZiTnRNZnZuU0kvaUl5aTI3TWxMa0hPZGQ2ZkVxMi9mT3EyVlBn?=
 =?utf-8?B?eCs5cDdabjRHOE0wTVFXVlpqbjVPSlZGeS9HWFZ0UjAzcWJkak5jVlFISTVz?=
 =?utf-8?B?dHgyZnExNC9IKzFiT3laZ3dNSzRxSWJFOWdLdFJIT200ZHhqRmdvVnBYQS82?=
 =?utf-8?B?Q1ErVkpTeDV4Y0dKT2M1S2FlL3hpR1dRT29XWWU1MmlBRTJXbTB5dHA4NGxF?=
 =?utf-8?B?OGo3QWVJSFpvVi9kY0ZhTzJELzFCRTF2MER5SnFoVFhaUE1tcmtieHRuaE1V?=
 =?utf-8?B?OThIM1JJcW1TRHQ1RDJZakFVSWtqdzhqZG5EaFcrbldUakgxa21WZ3AxYmJT?=
 =?utf-8?B?NnZFRlg4VTJBUGFpZ0xEd1E1WkdXVEtTQ2hac01vblRXTXU4eEwrTFo2c0ZU?=
 =?utf-8?B?QmJWa0xoWFRtYnIwc3dYckw3WGlxajl1M1FQbXEvaHBLYWwwUCtkNDIydFJk?=
 =?utf-8?B?aFkzZm1KM2ZVRytPSE5JcG11b1J0dkN3WFNpOHZZZWdyTm1EcnJUMWxXRmI2?=
 =?utf-8?B?TnR0elJ4dHAyVFA4UnFVWXJYVFdtbFVpR01RL3B3d1VSOUhwd0ptMVpzcFJ0?=
 =?utf-8?B?d3NyblpnUlBFSDhHT3RuV1ZFME1wZllVTFRWdFVYeWtqQ0h5RHhxZHpVWHI3?=
 =?utf-8?B?RU14enZTZVFMMld6OWdKUWJEY2hNamxOUk11eG5OQnJzTXQ2b2JhL0E4Tk1y?=
 =?utf-8?B?NmkwV1VTS1B6OXM5TWF6QmwzT1l4bXlVSEpGekNFcmhadDluNk9lSFRPeXBi?=
 =?utf-8?B?a09zZVZGRFprTGZUWXVoZUtSMFBYMTZwQ0tQaHlMS24rRHRLbDlqQllPZjRH?=
 =?utf-8?B?UUlnL3FubzVQY2hKWTNnRWJkRjZkalBqUGZkc0ZwQ0dLRFRsM2k5SktiYXlI?=
 =?utf-8?B?ajR2MVFvQS9xc2VZL2RCTEUzSEN4dm13TmlNSzZGNU51Y3BRdHYxZkxQd0lx?=
 =?utf-8?B?aWErUFlOUngrYzhoSHBwck9tTk5UR3Y0cG96NVU4VElBaHY4VnAzU2lOUTJR?=
 =?utf-8?B?RENmL1JQUWYybWVtUHhZK3F1VXN4UmRuK0kwaGhvV1JYYVNoWGU4Z3FyeWlC?=
 =?utf-8?B?V2d4Ukg3ZG5Xdi9NVmxCSjk4czhuU2poUVVLeThvT0xjRFJTdzVvUDVyTGJh?=
 =?utf-8?B?WEVJTGNlUitKNWJkNEsyZGR6aXNHMlorN0JYaFZsbE1rMzE0VDdZNTFkbzNY?=
 =?utf-8?B?VmYyd0ZsZFlBd3VCOUJuOE52dW5jQ2p2b1pIOEZmSk54Qlp2VlREU0dsbFBt?=
 =?utf-8?Q?YaBIQBh9Tk5Fc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da2081e2-9b20-400b-4e6b-08d8c8e53295
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2021 08:16:39.6905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bV2aDlLF80vyeCOLaMX9iN2vT70tGipmbr2ZN6sztIt/4dqEGhN8gnnaUmrI4JeE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4520
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Christoph Hellwig <hch@infradead.org>, Sandeep Patil <sspatil@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 Robin Murphy <robin.murphy@arm.com>, James Jones <jajones@nvidia.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Minchan Kim <minchan@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Liam Mark <lmark@codeaurora.org>, Chris Goldsworthy <cgoldswo@codeaurora.org>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Android Kernel Team <kernel-team@android.com>,
 Brian Starkey <Brian.Starkey@arm.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

QW0gMDMuMDIuMjEgdW0gMjI6NDEgc2NocmllYiBTdXJlbiBCYWdoZGFzYXJ5YW46Cj4gW1NOSVBd
Cj4+PiBIb3cgbWFueSBzZW1pLXVucmVsYXRlZCBidWZmZXIgYWNjb3VudGluZyBzY2hlbWVzIGRv
ZXMgZ29vZ2xlIGNvbWUgdXAgd2l0aD8KPj4+Cj4+PiBXZSdyZSBhdCB0aHJlZSB3aXRoIHRoaXMg
b25lLgo+Pj4KPj4+IEFuZCBhbHNvIHdlIF9jYW5ub3RfIHJlcXVpcmVkIHRoYXQgYWxsIGRtYS1i
dWZzIGFyZSBiYWNrZWQgYnkgc3RydWN0Cj4+PiBwYWdlLCBzbyByZXF1aXJpbmcgc3RydWN0IHBh
Z2UgdG8gbWFrZSB0aGlzIHdvcmsgaXMgYSBuby1nby4KPj4+Cj4+PiBTZWNvbmQsIHdlIGRvIG5v
dCB3YW50IHRvIGFsbCBnZXRfdXNlcl9wYWdlcyBhbmQgZnJpZW5kcyB0byB3b3JrIG9uCj4+PiBk
bWEtYnVmLCBpdCBjYXVzZXMgYWxsIGtpbmRzIG9mIHBhaW4uIFllcyBvbiBTb0Mgd2hlcmUgZG1h
LWJ1ZiBhcmUKPj4+IGV4Y2x1c2l2ZWx5IGluIHN5c3RlbSBtZW1vcnkgeW91IGNhbiBtYXliZSBn
ZXQgYXdheSB3aXRoIHRoaXMsIGJ1dAo+Pj4gZG1hLWJ1ZiBpcyBzdXBwb3NlZCB0byB3b3JrIGlu
IG1vcmUgcGxhY2VzIHRoYW4ganVzdCBBbmRyb2lkIFNvQ3MuCj4+IEkganVzdCByZWFsaXplZCB0
aGF0IHZtX2luc2VyX3BhZ2UgZG9lc24ndCBldmVuIHdvcmsgZm9yIENNQSwgaXQgd291bGQKPj4g
dXBzZXQgZ2V0X3VzZXJfcGFnZXMgcHJldHR5IGJhZGx5IC0geW91J3JlIHRyeWluZyB0byBwaW4g
YSBwYWdlIGluCj4+IFpPTkVfTU9WRUFCTEUgYnV0IHlvdSBjYW4ndCBtb3ZlIGl0IGJlY2F1c2Ug
aXQncyByYXRoZXIgc3BlY2lhbC4KPj4gVk1fU1BFQ0lBTCBpcyBleGFjdGx5IG1lYW50IHRvIGNh
dGNoIHRoaXMgc3R1ZmYuCj4gVGhhbmtzIGZvciB0aGUgaW5wdXQsIERhbmllbCEgTGV0IG1lIHRo
aW5rIGFib3V0IHRoZSBjYXNlcyB5b3UgcG9pbnRlZCBvdXQuCj4KPiBJTUhPLCB0aGUgaXNzdWUg
d2l0aCBQU1MgaXMgdGhlIGRpZmZpY3VsdHkgb2YgY2FsY3VsYXRpbmcgdGhpcyBtZXRyaWMKPiB3
aXRob3V0IHN0cnVjdCBwYWdlIHVzYWdlLiBJIGRvbid0IHRoaW5rIHRoYXQgcHJvYmxlbSBiZWNv
bWVzIGVhc2llcgo+IGlmIHdlIHVzZSBjZ3JvdXBzIG9yIGFueSBvdGhlciBBUEkuIEkgd2FudGVk
IHRvIGVuYWJsZSBleGlzdGluZyBQU1MKPiBjYWxjdWxhdGlvbiBtZWNoYW5pc21zIGZvciB0aGUg
ZG1hYnVmcyBrbm93biB0byBiZSBiYWNrZWQgYnkgc3RydWN0Cj4gcGFnZXMgKHNpbmNlIHdlIGtu
b3cgaG93IHRoZSBoZWFwIGFsbG9jYXRlZCB0aGF0IG1lbW9yeSksIGJ1dCBzb3VuZHMKPiBsaWtl
IHRoaXMgd291bGQgbGVhZCB0byBwcm9ibGVtcyB0aGF0IEkgZGlkIG5vdCBjb25zaWRlci4KClll
YWgsIHVzaW5nIHN0cnVjdCBwYWdlIGluZGVlZCB3b24ndCB3b3JrLiBXZSBkaXNjdXNzZWQgdGhh
dCBtdWx0aXBsZSAKdGltZXMgbm93IGFuZCBEYW5pZWwgZXZlbiBoYXMgYSBwYXRjaCB0byBtYW5n
bGUgdGhlIHN0cnVjdCBwYWdlIHBvaW50ZXJzIAppbnNpZGUgdGhlIHNnX3RhYmxlIG9iamVjdCB0
byBwcmV2ZW50IGFidXNlIGluIHRoYXQgZGlyZWN0aW9uLgoKT24gdGhlIG90aGVyIGhhbmQgSSB0
b3RhbGx5IGFncmVlIHRoYXQgd2UgbmVlZCB0byBkbyBzb21ldGhpbmcgb24gdGhpcyAKc2lkZSB3
aGljaCBnb2VzIGJleW9uZyB3aGF0IGNncm91cHMgcHJvdmlkZS4KCkEgZmV3IHllYXJzIGFnbyBJ
IGNhbWUgdXAgd2l0aCBwYXRjaGVzIHRvIGltcHJvdmUgdGhlIE9PTSBraWxsZXIgdG8gCmluY2x1
ZGUgcmVzb3VyY2VzIGJvdW5kIHRvIHRoZSBwcm9jZXNzZXMgdGhyb3VnaCBmaWxlIGRlc2NyaXB0
b3JzLiBJIAp1bmZvcnR1bmF0ZWx5IGNhbid0IGZpbmQgdGhlbSBvZiBoYW5kIGFueSBtb3JlIGFu
ZCBJJ20gY3VycmVudGx5IHRvIGJ1c3kgCnRvIGRpZyB0aGVtIHVwLgoKSW4gZ2VuZXJhbCBJIHRo
aW5rIHdlIG5lZWQgdG8gbWFrZSBpdCBwb3NzaWJsZSB0aGF0IGJvdGggdGhlIGluIGtlcm5lbCAK
T09NIGtpbGxlciBhcyB3ZWxsIGFzIHVzZXJzcGFjZSBwcm9jZXNzZXMgYW5kIGhhbmRsZXJzIGhh
dmUgYWNjZXNzIHRvIAp0aGF0IGtpbmQgb2YgZGF0YS4KClRoZSBmZGluZm8gYXBwcm9hY2ggYXMg
c3VnZ2VzdGVkIGluIHRoZSBvdGhlciB0aHJlYWQgc291bmRzIGxpa2UgdGhlIAplYXNpZXN0IHNv
bHV0aW9uIHRvIG1lLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPiBUaGFua3MsCj4gU3VyZW4uCj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
