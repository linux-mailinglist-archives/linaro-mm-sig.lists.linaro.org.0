Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD6473ECA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Dec 2021 09:54:10 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98D9862168
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Dec 2021 08:54:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 856AF620D9; Tue, 14 Dec 2021 08:54:07 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 691E960E41;
	Tue, 14 Dec 2021 08:54:04 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C326560501
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Dec 2021 08:54:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B7BFC60E41; Tue, 14 Dec 2021 08:54:02 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2062.outbound.protection.outlook.com [40.107.244.62])
 by lists.linaro.org (Postfix) with ESMTPS id 9ECC060501
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Dec 2021 08:54:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5hk1X8VlkNS9dGMRxbpbh99SeMOTOmrEUe32+fgR83b+4PXiIrQq3b8n38TTkfQCa2jXxL8z1LoPynHp6gQRnGqK4lpLOM8tstBIobJZGVF+P3WWyus1xw8xn0gU4yaKHdLIEqJsgkUw73i/N5vrDnUA70DFmjVmnsF603aPe+6dt15p522vIl2fNSK8O4ZZIFhr/OixiWB4k0Xi9qeU8/+HP2JazW+8wQ1XyN9meHG0wv/Cc/5LfI09YaSaCq0q5G4u2sYcAz5OdE2MqcsQL5oiR9KgPfTwXryAYWxn6GKo03I5k+VIsnQSEAZU1w+cePB59cnTYRSIEZHnNLoLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B4QjqZJxxEXwnjWMthS/5VhLYxHk318ynpG8zZIbfhA=;
 b=aD+UYUC5L3rKRlh19BzbNSYQbyA+UdDUjEGMplp6brxBdTDsC/SD0E89xdRnwgBqla6NYdUDab59dya196jPZKL1LlQI/lVTZnAxIUegXjC81bnmxL1hrMsKgWBwAYy3dXO8jz/RFDSuBSItf6TSDEkAiHlTa9XkWDq0clD9JwsVhag0G8/m2pX5Gxi41g0s0YRhuJG3Mtr7XxpKa3+1B0IY27QKF83JCkvezqWiqMoQGwvT1fXHFbYYmX6NjyRteN35SloXgAwMSHBmpfyvd6sWerdwO4g4tq6niHyVQtrDPTvTwkpMFo6gVafD43pBoEYTjO3WH7BTnsdDzEtHTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4QjqZJxxEXwnjWMthS/5VhLYxHk318ynpG8zZIbfhA=;
 b=TpXyxJiI8Dbl5KGHFn17hExQhyKyQBLil6LCK9mjMGKkVOZPV6L13GdpWZPk7j/1vwQInqS6DJdm/eZUNAA8N2R5QU3co0PUnh/g20UXMHpV4/l90EtF0qsvRX3lBT8RRfRa2ZQa/XL2VTLtHSnbAuM03asj3FJnumPNSPdwf24=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14) by MWHPR12MB1678.namprd12.prod.outlook.com
 (2603:10b6:301:b::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Tue, 14 Dec
 2021 08:53:57 +0000
Received: from MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4]) by MWHPR1201MB0192.namprd12.prod.outlook.com
 ([fe80::d16c:a6d5:5d2e:f9d4%12]) with mapi id 15.20.4778.018; Tue, 14 Dec
 2021 08:53:57 +0000
To: Shunsuke Mie <mie@igel.co.jp>
References: <20211122110817.33319-1-mie@igel.co.jp>
 <CANXvt5oB8_2sDGccSiTMqeLYGi3Vuo-6NnHJ9PGgZZMv=fnUVw@mail.gmail.com>
 <20211207171447.GA6467@ziepe.ca>
 <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
 <20211210124204.GG6467@ziepe.ca>
 <880e25ad-4fe9-eacd-a971-993eaea37fc4@amd.com>
 <20211210132656.GH6467@ziepe.ca>
 <d25b2895-63b6-158d-ff73-f05e437e0f91@amd.com>
 <CANXvt5rzmEnF3Gph4U6NT-XzJhV6zqyay1g7dHkTgH=Aqc6Geg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <51bcad64-8df8-b9a3-0aef-d88eb70fdbba@amd.com>
Date: Tue, 14 Dec 2021 09:53:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <CANXvt5rzmEnF3Gph4U6NT-XzJhV6zqyay1g7dHkTgH=Aqc6Geg@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AS9PR06CA0165.eurprd06.prod.outlook.com
 (2603:10a6:20b:45c::12) To MWHPR1201MB0192.namprd12.prod.outlook.com
 (2603:10b6:301:5a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 48504754-f042-4ebd-5184-08d9bedf43da
X-MS-TrafficTypeDiagnostic: MWHPR12MB1678:EE_
X-Microsoft-Antispam-PRVS: <MWHPR12MB16780CA9FA2D355C5C05C29483759@MWHPR12MB1678.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2FtiD7LfdK0RmjFlTHgHLvp79R/gIK7FFErAArqNtoEPNDr2i7Tu2icg9iLLZ+NLm1XgOgWdkmyOGR22gnnM5avl7WPzHOcZ0D1kAGJ9km87KwQexk+wJER9hfbWeyREW+Se17UIbvSJqr1VQMpFTr8l4/FE3zCi8VIXsUCH3ZenLz51TeSWOFYSHSzZfBg2vlDW+t9uM2NANVx0ne6ea8lHrRk6+dkQ5+DR1zHKaWgpchv3SwsASAcXmQNkfTdKqET3eyknGFe/nXy03rldwcheVXnRCe4P2VLcnEkEPAgty1r27tKlt7f0uS8JTiX3s3EQKf/LWCNpyevqyg6m3jkzQIeG3QO/xwvz87Jl4mk3UEX05WSM73qaNUw3NaCe5o46fFSb78jshl9xfEMb1qTuKA93q7dTRiR1Ot1UXxgMYXD0MF7yPot16cwDHdGk4WAF2LX6WBnvdP/F+AZh7vQMVeWDs1WPa7CeEg/g7c/GRpfyITaIert1Qv7RS/H6Yx0W4ul7nFKZc5YlHUX2nPnwVocsFxbK39RKK4mxMVLyc4Zg6Bcdg26xVJgmaOTaEZKLY02T4LdJxYTlDIFips3kVfhjS6BWooFF+FEeBQIJOgDSKm6F5c5b1XJtarpa8lP34nSftOtcPUdXspxUzdxLJyu3ZPSiY0lJfGVQyFnshm8w4IupXDDDNx5kZjyTe2uas3xXGi9dIMQbv8oBp1BNlAF4SZiBVVCtR+Xuifkdl/VhPyvGAVgnyBvgDWLr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1201MB0192.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(6916009)(316002)(6666004)(66556008)(36756003)(54906003)(66946007)(508600001)(66476007)(2906002)(83380400001)(38100700002)(6512007)(6506007)(4326008)(7416002)(31696002)(8676002)(86362001)(6486002)(26005)(186003)(2616005)(5660300002)(31686004)(66574015)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3pLeTExY3ZvWUNRaTY0NXdlMnRZajFKV1hkdmtDTUxLL2YxTGlGY3ZlN1dr?=
 =?utf-8?B?RjRyRytiZGtaUXIyVFNycGJVOE1lak5lUmdZS21WYzgyc2N3N3JyU0RIY1hN?=
 =?utf-8?B?MGxJRDBmU1BSNTRHZTFOZ0tDQkdnbmlRZ0xFcTJWdnA2UDhFTXJHQkEwMWZW?=
 =?utf-8?B?L2RlaXZLVjEzVldNb05ib3pRc081V0NPRncyUzFDMDgxZEZpNjlIdk1pbVFL?=
 =?utf-8?B?L3h4QzZTR1VSbHRucmN1aUsyY095a2NCckEyME8yWmVSTWZ5dFZNd3Z1YzVI?=
 =?utf-8?B?ZC9taS9tOUJNM3NyZnpqL2h6OHdWTTRtR3dQc21OZTgyd3FlRWd4M3Z0aDlL?=
 =?utf-8?B?T0s0RWhnaml2L2tEQm1BbFpsTWJicmx0VnRwT1FDTlRrNGxZVWNJMnVMRFM5?=
 =?utf-8?B?RVNrcmJFWGhPWWpnRU5jVDBuUEV5OXlrOWpFWVF4RllXK3UyVVR4RVJvcGhV?=
 =?utf-8?B?Z0ViR05mbEkzMkVZblkvRzAySjJzYkdDblJkWVlzSTVyUEVqd01teDBpM3B5?=
 =?utf-8?B?NkhUNStpSEYyUC9Va2REdC9oZDFSQzQ1TXM4UTgvdER5YWRxZUJWbERFVjRv?=
 =?utf-8?B?cXVDNFJic1V3aUdSZVA3NXRrQ1ovalJ6U2R6anhqSGpTcDRPTWZybG5UZFkz?=
 =?utf-8?B?azJ6Yi93bUk4VmREZjZQOXBnRUZnTkc2czhqMEdyWDZjNUZrYmxReVdOWXZm?=
 =?utf-8?B?RWU2N1VDZnZGSlhhNXJlVlJ1L240WkxMTGtma1BYT1BvaTlSZUtrWWZLY0VF?=
 =?utf-8?B?OFUwaFptOU5kQzR3ZkVWT0RqYm1QSkh2cnBRM3pzZnJnV0pKRkxkMzZEOXA2?=
 =?utf-8?B?cTZjeWxjTlFUQWlGeXpyNFpuaHhYYjN2aFJ1bEo1dEhMZ242TGlxZXV5ck9Z?=
 =?utf-8?B?dWlmVjl3OGpQMmdRRk96aTV2bGtjMjVKQTN6K3ZJVzkrQ1NtZkFQMkRCbUMx?=
 =?utf-8?B?ZERER3ZXaW9jYXVOVGlxUlVVdjFmdURvYTdZdlYxQnlLMjFxUnYvRExuZVdE?=
 =?utf-8?B?d05WdjJjdVZoVS8yTzJTKzZEZFRSVHMveFJYYThPS3JIMXl0eUxZRm8xaWNJ?=
 =?utf-8?B?RUZ5bzBYUDFxRmpCcGJaOGtjOWFhZkF1YnFhMDBLbUlLc2R4c3FRcXNJUWRP?=
 =?utf-8?B?MlBrVXo4K2t3UExkNjBIdWJteHo1WWVDQ0tkQWRTYmp6MmwraVNkdUVra1or?=
 =?utf-8?B?cHM4ZTdjb3FOZStRQURSaWwzWDNUU0FVVnRMUzlMQysrcnBBc1NjRVQxdjJB?=
 =?utf-8?B?bkZMMXZRbG8zd0RBZTNIN09RNEM4d2hoY3hrL1BKZjIzcHQyamNGNFJXa0tP?=
 =?utf-8?B?Um9uTHRxTUtrVUFHSVVSb216UnkzSkhxVkJrYWJuQTZjdlI3aThScWl2Tmd1?=
 =?utf-8?B?NDZKWHJmK3ZpOWwwd28rVUtuM040TG5wanlYNzJ4M3E0UkpMd0hvTElnWVFa?=
 =?utf-8?B?MllOUGdFbnQ0VGhBRTBjNVFHRU90NVJGQW9mVndkUGw1Y2dubVNmeTkxdkxL?=
 =?utf-8?B?ZnpHMnc1VlVsNlIvMzc2ZFVYRlJzc0V3d3JUem1ZNkhqZm5zVnMvTk0zMHdk?=
 =?utf-8?B?L0U0bTFpa1lNZzcxMVA5VWxJcERseDh5ZmI1SEptQnNJdlJ5OHg3eXN4SERV?=
 =?utf-8?B?SWZ5K3EvOFhsT1JSaWtpV20wMW5Ka1llTFhkSnBEb2FzR2diZiszSUQvSkxB?=
 =?utf-8?B?ejdTc2wxc2RwU0hGdzd4UkQ1Mk95NzRMNGUzRWZqbm1tTHljZklDK2VMektx?=
 =?utf-8?B?Vy90Zm5CdnlzbGNnK2lSUG9vTFIzd3JZbFUvNmdvcGlZYnRWZThmQTNjMXli?=
 =?utf-8?B?cm9MZldSeUIwV09EQ2FUVXNpNXFCZUE1QTJsSzdwVmRwcERzZ2cwMklRc1Iv?=
 =?utf-8?B?ODIxOEFlWWxBQ2NZb1ErU2JGbUMybWpzTDBZaUFPS1FDNUhGRjVyREJ2QVNp?=
 =?utf-8?B?WU5aU0J6OTlKTEdBOFFSS2JHbG9MTzh5NHhhS1htUlo5d1N5ZzgwWFdzazVt?=
 =?utf-8?B?dkxWYlRtbU5wSlRMMStNK2ZLRHo1Y1JBNmRiSE9POCtnTjZScTAyQ2ZZUUY5?=
 =?utf-8?B?NFdpOXkwSEhib2MzVmRQUEd3ZEtJSlZrZzFjYTBMdmwvSDZNYTFvMEl0elpP?=
 =?utf-8?Q?Dg+w=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48504754-f042-4ebd-5184-08d9bedf43da
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1201MB0192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2021 08:53:57.6870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ScayXQET05Ytt1iHx6H0HVoiilR0QRd2GhVDN0r4KEzHoEE5MqB9f1KRSjmEbnX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR12MB1678
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
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
Cc: Damian Hobson-Garcia <dhobsong@igel.co.jp>,
 Takanari Hayama <taki@igel.co.jp>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Tomohito Esaki <etom@igel.co.jp>,
 linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Doug Ledford <dledford@redhat.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, Sean Hefty <sean.hefty@intel.com>,
 Maor Gottlieb <maorg@nvidia.com>, Jianxin Xiong <jianxin.xiong@intel.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTIuMjEgdW0gMTI6MTggc2NocmllYiBTaHVuc3VrZSBNaWU6Cj4gMjAyMeW5tDEy5pyI
MTDml6Uo6YeRKSAyMjoyOSBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ogo+PiBBbSAxMC4xMi4yMSB1bSAxNDoyNiBzY2hyaWViIEphc29uIEd1bnRob3JwZToKPj4+
IE9uIEZyaSwgRGVjIDEwLCAyMDIxIGF0IDAxOjQ3OjM3UE0gKzAxMDAsIENocmlzdGlhbiBLw7Zu
aWcgd3JvdGU6Cj4+Pj4gQW0gMTAuMTIuMjEgdW0gMTM6NDIgc2NocmllYiBKYXNvbiBHdW50aG9y
cGU6Cj4+Pj4+IE9uIEZyaSwgRGVjIDEwLCAyMDIxIGF0IDA4OjI5OjI0UE0gKzA5MDAsIFNodW5z
dWtlIE1pZSB3cm90ZToKPj4+Pj4+IEhpIEphc29uLAo+Pj4+Pj4gVGhhbmsgeW91IGZvciByZXBs
eWluZy4KPj4+Pj4+Cj4+Pj4+PiAyMDIx5bm0MTLmnIg45pelKOawtCkgMjoxNCBKYXNvbiBHdW50
aG9ycGUgPGpnZ0B6aWVwZS5jYT46Cj4+Pj4+Pj4gT24gRnJpLCBEZWMgMDMsIDIwMjEgYXQgMTI6
NTE6NDRQTSArMDkwMCwgU2h1bnN1a2UgTWllIHdyb3RlOgo+Pj4+Pj4+PiBIaSBtYWludGFpbmVy
cywKPj4+Pj4+Pj4KPj4+Pj4+Pj4gQ291bGQgeW91IHBsZWFzZSByZXZpZXcgdGhpcyBwYXRjaCBz
ZXJpZXM/Cj4+Pj4+Pj4gV2h5IGlzIGl0IFJGQz8KPj4+Pj4+Pgo+Pj4+Pj4+IEknbSBjb25mdXNl
ZCB3aHkgdGhpcyBpcyB1c2VmdWw/Cj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIGNhbid0IGRvIGNvcHkg
ZnJvbSBNTUlPIG1lbW9yeSwgc28gaXQgc2hvdWxkbid0IGJlIGNvbXBhdGlibGUKPj4+Pj4+PiB3
aXRoIHRoaW5ncyBsaWtlIEdhdWRpIC0gZG9lcyBzb21ldGhpbmcgcHJldmVudCB0aGlzPwo+Pj4+
Pj4gSSB0aGluayBpZiBhbiBleHBvcnQgb2YgdGhlIGRtYS1idWYgc3VwcG9ydHMgdm1hcCwgQ1BV
IGlzIGFibGUgdG8gYWNjZXNzIHRoZQo+Pj4+Pj4gbW1pbyBtZW1vcnkuCj4+Pj4+Pgo+Pj4+Pj4g
SXMgaXQgd3Jvbmc/IElmIHRoaXMgaXMgd3JvbmcsIHRoZXJlIGlzIG5vIGFkdmFudGFnZXMgdGhp
cyBjaGFuZ2VzLi4KPj4+Pj4gSSBkb24ndCBrbm93IHdoYXQgdGhlIGRtYWJ1ZiBmb2xrcyBkaWQs
IGJ1dCB5ZXMsIGl0IGlzIHdyb25nLgo+Pj4+Pgo+Pj4+PiBJT01FTSBtdXN0IGJlIHRvdWNoZWQg
dXNpbmcgb25seSBzcGVjaWFsIGFjY2Vzc29ycywgc29tZSBwbGF0Zm9ybXMKPj4+Pj4gY3Jhc2gg
aWYgeW91IGRvbid0IGRvIHRoaXMuIEV2ZW4geDg2IHdpbGwgY3Jhc2ggaWYgeW91IHRvdWNoIGl0
IHdpdGgKPj4+Pj4gc29tZXRoaW5nIGxpa2UgYW4gWE1NIG9wdGltaXplZCBtZW1jcHkuCj4+Pj4+
Cj4+Pj4+IENocmlzdGlhbj8gSWYgdGhlIHZtYXAgc3VjY2VlZHMgd2hhdCBydWxlcyBtdXN0IHRo
ZSBjYWxsZXIgdXNlIHRvCj4+Pj4+IGFjY2VzcyB0aGUgbWVtb3J5Pwo+Pj4+IFNlZSBkbWEtYnVm
LW1hcC5oIGFuZCBlc3BlY2lhbGx5IHN0cnVjdCBkbWFfYnVmX21hcC4KPj4+Pgo+Pj4+IE1NSU8g
bWVtb3J5IGlzIHBlcmZlY3RseSBzdXBwb3J0ZWQgaGVyZSBhbmQgYWN0dWFsbHkgdGhlIG1vc3Qg
Y29tbW9uIGNhc2UuCj4+PiBPa2F5IHRoYXQgbG9va3Mgc2FuZSwgYnV0IHRoaXMgcnhlIFJGQyBz
ZWVtcyB0byBpZ25vcmUgdGhpcwo+Pj4gY29tcGxldGVseS4gSXQgc3R1ZmZzIHRoZSB2YWRkciBk
aXJlY3RseSBpbnRvIGEgdW1lbSB3aGljaCBnb2VzIHRvIGFsbAo+Pj4gbWFubmVyIG9mIHBsYWNl
cyBpbiB0aGUgZHJpdmVyLgo+Pj4KPj4+ID8/Cj4+IFdlbGwsIHllcyB0aGF0IGNhbiBnbyBib29t
IHByZXR0eSBxdWlja2x5Lgo+IFNvcnJ5LCBJIHdhcyB3cm9uZy4gVGhlIGRtYV9idWZfbWFwIHRy
ZWF0cyBib3RoIGlvbWVtIGFuZCB2YWRkciByZWdpb24sIGJ1dAo+IHRoaXMgUkZDIG9ubHkgc3Vw
cG9ydHMgdmFkZHIuIEFkdmFudGFnZSBvZiB0aGUgcGFydGlhbCBzdXBwb3J0IGlzIHdlIGNhbiB1
c2UgdGhlCj4gdmFkZHIgZG1hLWJ1ZiBpbiBSWEUgd2l0aG91dCBjaGFuZ2luZyBhIHJ4ZSBkYXRh
IGNvcHkgaW1wbGVtZW50YXRpb24uCgpXZWxsIHRoYXQgaXMgbW9zdCBsaWtlbHkgbm90IGEgZ29v
ZCBpZGVhLgoKRm9yIGV4YW1wbGUgYnVmZmVycyBmb3IgR1BVIGRyaXZlcnMgY2FuIGJlIHBsYWNl
ZCBpbiBib3RoIE1NSU8gbWVtb3J5IAphbmQgc3lzdGVtIG1lbW9yeS4KCklmIHlvdSBkb24ndCB3
YW50IHRvIHByb3Zva2UgcmFuZG9tIGZhaWx1cmVzIHlvdSAqTVVTVCogYmUgYWJsZSB0byAKaGFu
ZGxlIGJvdGggaWYgeW91IHdhbnQgdG8gdXNlIHRoaXMuCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+
Cj4gQW4gZXhhbXBsZSBvZiBhIGRtYS1idWYgcG9pbnRpbmcgdG8gYSB2YWRkciBpcyBzb21lIGdw
dSBkcml2ZXJzIHVzZSBSQU0gZm9yCj4gVlJBTSBhbmQgd2UgY2FuIGdldCBkbWEtYnVmIGZvciB0
aGUgcmVnaW9uIHRoYXQgaW5kaWNhdGVzIHZhZGRyIHJlZ2lvbnMuCj4gU3BlY2lmaWNhbGx5LCB0
aGUgZ3B1IGRyaXZlciB1c2luZyBncHUvZHJtL2RybV9nZW1fY21hX2hlbHBlci5jIGlzIG9uZSBz
dWNoCj4gZXhhbXBsZS4KPgo+PiBOb3Qgc3VyZSB3aGF0IHRoZXkgd2FudCB0byB1c2UgdGhpcyBm
b3IuCj4gSSdkIGxpa2UgdG8gdXNlIFJETUEgd2l0aCBSWEUgZm9yIHRoYXQgbWVtb3J5IHJlZ2lv
bi4KPgo+IEJlc3QsCj4gU2h1bnN1a2UKPj4gQ2hyaXN0aWFuLgo+Pgo+Pj4gSmFzb24KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3Rz
LmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
