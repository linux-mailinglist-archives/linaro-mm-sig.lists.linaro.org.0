Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A87A3D8EB6
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 15:13:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 715F263501
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 28 Jul 2021 13:13:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3865A63503; Wed, 28 Jul 2021 13:13:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77C09634E6;
	Wed, 28 Jul 2021 13:13:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7342661813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:13:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6627C634E6; Wed, 28 Jul 2021 13:13:40 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2070.outbound.protection.outlook.com [40.107.236.70])
 by lists.linaro.org (Postfix) with ESMTPS id 5B99F61813
 for <linaro-mm-sig@lists.linaro.org>; Wed, 28 Jul 2021 13:13:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hkxtlxJYMjRYwNV4xT5v6x3Ls/mOIIt1y6becji2+muULL4bjtXXDWkO1XFRqzLtZl9TKEgq2f5ymkgIe31SZp2aT7t1KvmzYnp8ZP4MRhKQwKZU1Tx0BSrFdfjfKTNKhf8WzHVAUwo/1lsuxMKO1E/dTg39jKUW8m2+VYDVT4BqHDVg/OC3qISyMOzofH549bnzYNj9049IAPUo5IyAPn4B8+VCJ8ELXmQShrV++B+OUZhd3h8YTUROxPNpDdJu6QP1caQrAQQGoty7RRj5eX7se5beqKKq4OFP+GO59jAsYJRcMDjTg1ANDLVWJ3x6TVgSHb2gVyA9RSr3nwd5sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N82mV6rA4m4gW6sClwqacQfhN31dxUKxzeYfq7TRgto=;
 b=Nuk7yB9VtNm3HhXJCbogtV3CBDVYX/AVli/iIW4CtDHE6CFpjvOpmdLEla7lK0rfoTQMEG41GfR74oYZMuQS2D+rpWkPa+lR3pZCBaaPRbbdoJwkXOdrb+YZkafpbLw+doTmDRC3eCIbprWzwcoW3YNI46Hv7AWflbFBzGHxCPoKPLKQLbysd4tEYKu5UZENpWqF37AMepIiCW2QUaapCVvEDXLFd7ombyoj2xu+TM0NYpO4oRTcKH+trDKBFmhgo/iOaiwuEuXx92cbVBn7OPFgdOCUlUgeyUqQ7KMP+HI/ZVYGNyH2mBisRFrm+5Hgj/jHk78B2IJyypOUhgKDDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N82mV6rA4m4gW6sClwqacQfhN31dxUKxzeYfq7TRgto=;
 b=Zr/Zz8GFj+JmVdAQ5d7P50kiWjT+l1JU0ddO/1CfAnSbGKVg+/pl53YUBVBSmo5Mf9HlzHCsK+o+mIYhgZn5iVNbWM52cA3JV8xKnP2GJhOgPlkSgoo+nfoywqz3889/DUZ8NhqT62v36xDRYZ2E3u5My8hm5hu76N+A/4fqvvE=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4847.namprd12.prod.outlook.com (2603:10b6:208:1ba::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Wed, 28 Jul
 2021 13:13:33 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.031; Wed, 28 Jul 2021
 13:13:33 +0000
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Rob Clark <robdclark@chromium.org>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
Date: Wed, 28 Jul 2021 15:13:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
Content-Language: en-US
X-ClientProxiedBy: AM0PR02CA0204.eurprd02.prod.outlook.com
 (2603:10a6:20b:28f::11) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:af99:e30a:2b7e:eda8]
 (2a02:908:1252:fb60:af99:e30a:2b7e:eda8) by
 AM0PR02CA0204.eurprd02.prod.outlook.com (2603:10a6:20b:28f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 13:13:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8bddc64a-376a-454f-d7e8-08d951c9801a
X-MS-TrafficTypeDiagnostic: MN2PR12MB4847:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB484732E62E037EFA805B031B83EA9@MN2PR12MB4847.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /68wkhdYgd+fS4mtNztX6NPhz6k3vN3NqDZidkvUCqtWuthW7q5QARwXB2XW9SsCEcJQRisq/pZcEGG25cMxzMGLifDT4riDrHT0hjTm1heHtuo9IU2V7TR9QJeGI4IKu31fuFl0PJ2nIeZSRr/cjwp+E9o9+3h7VXK6B2g57vWMDIGUu9FlriN2dsi/U3NuWHijFqHWr4qLlr6MfjeqtZTY//cAmtlAxk7c629bedbJYT2O3MT04jTkh7eYZJHY3B4oFOox/MSbRIdbsuwuNMFOBvdhXTun0+Cyj4z1jnnA4Y2m0FXGImNWqnU1tpA1PsW+Y9AdXujvZ3caFjaVoJWXYxewKXKrj3bBFcvbe63sCjzSW5GwnSpkGeKUlRlhyXOC6/6f3i9Z+j7KeKgPVohADO+m1rRXOtcp9SPNYTCsf1zRT051UZHs37qkz1+yQNFzeaqaCZHAkclTuxVj/QwnkkGqBLBsRY76ztD3eJVLOPD753k2ZO1epQX+ovbVCmAbGsZkVxDvdXxfR7IPfgEmqAiiipeMfFWjvLqdLEX6ItFJVnHwuhs0ZE62WVaHzsv8sjtHL+GaeSFoq5a/i8S++5L9PuVIGz+AToDz+8VdJxbLO1gTUS1cGbio0gwfk+aGqJj8lbhSx1tAum5B+gRM6muAgZuurIiclxOVWzzjL686qt59j1ZP+YckNapsFFIPXQkE5u3a2knhcySHtEjKCraKs8jEKI7fU44/ZGb1kx3lZIWaynWaEp1xbjiar/FjjJmrxelmCKnKhmQKgbTvEHH3bF7VIi21WqT/+byugwRmU0T7a4CNoZAKEFzF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(136003)(366004)(39860400002)(6486002)(4326008)(36756003)(2906002)(38100700002)(8676002)(66556008)(2616005)(83380400001)(86362001)(8936002)(45080400002)(478600001)(966005)(31686004)(186003)(66574015)(31696002)(6666004)(54906003)(5660300002)(66946007)(66476007)(110136005)(53546011)(7416002)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a05kMmFraFRZeHlVbVFtYUtEcjdEUncrbTZBNnJpMTJUVEJuaExDRG43eC94?=
 =?utf-8?B?cjBORmo5QngzRmhlcXQwL25MQ1ZsbDdRMHoxM0ZnZmlzZmZOMFNUL0pqSUxj?=
 =?utf-8?B?bENqZmNCblJzSTh2OHlCZGlKaTBEUzVFelkzQno5R1ViZVBxbnVSME51U0Nt?=
 =?utf-8?B?ODRLclhCN0x4QXVSVVZJWEk1S0RlN1dHaEVxUzRBcUwrWWlqRVgzNzA5Q2lG?=
 =?utf-8?B?Y0g5Y25ZbzZ1RzJYclFYRmJGNjdmbTBJU0tpQ0tYYUxEQ2lsa09Pa04vait6?=
 =?utf-8?B?Y3JkRUQwUDFxNnFrTTBJU0Z4ZG9EVjFBUHQ0QUNuS3MvNFlndDh3SUQyNzN5?=
 =?utf-8?B?Q2sxRW5iOEw0MWdXY1F1czRhZG5jeVZ6TTJBWnFZTHd4UWMrRVNjV0tuOWJo?=
 =?utf-8?B?S0VIWUtvR0RxNVEyRUpkbEp4MlhpN1FvNHFoWG50Z0tTenRWL3Z5cVBlc2Vp?=
 =?utf-8?B?bm9EZW9ZY0hLdlZJTFh3UkV1SWlPNFdnZkNEaGJEdTFsaTFjemVRc0FpMHhN?=
 =?utf-8?B?RDFGd01xb3U1NFZ3NmZ0NWVKVWFMVlNyZWl2MGsrdGtld21FS1lrM21jWmNB?=
 =?utf-8?B?K014Y2dTYXJtdFMyZGZRT2toU0k5dFlLVnlkQ0xGUU92MXNBMWZYemdMbGlt?=
 =?utf-8?B?WlVSM2h4ZUNzUi9OL3FWdnNnU29ucDdNQnRYK3ZsQVg4UHpNelNEUUtxcmFp?=
 =?utf-8?B?WC9aRWs1SWZQbVl0eDNVa2Z1Tkk2Q3U3dm9JMGc2SDljaWZ1Rk1CY2NMQTJw?=
 =?utf-8?B?UGEvNmJsd05zUDR4Qy9mbU5vNmJnTmU2T2dhc2o5RGZSQk9lK25xdDlwTTI5?=
 =?utf-8?B?aVBBUkpBVmpwemtYUWlObWVKbm1Ib3o2emQwOFZOTGtzenM2ZVhNaXFxZlR3?=
 =?utf-8?B?S0ZkemRWR2FnM3lKamZPTnlLbFY3UFFnVkNCelRodERvdGpJdUd3enFFWm5X?=
 =?utf-8?B?bUhIUTlpUVB5YnBaTkYzeUtrUmtRQ3JyQnJ5Q2lrRzlOV1F4RkRKS0lRRXRV?=
 =?utf-8?B?Yk5DMCsrd2IvSEN4N1lueEZXeFptOHJWRkE2WmtncElwN2NhQWllbFBiMktJ?=
 =?utf-8?B?V0NtUHB3NVhpOWhXUWVrMS9hVXlQWG9RdzN2U0I1dHA4NlVVdTJLN2I1RXRs?=
 =?utf-8?B?eVVaaWRjWVI5bU05RE5nWEM0YitKNFIyV3RjQ3pLM3JuOUJTTEk4UlhDaHRw?=
 =?utf-8?B?YlBZVjk4YUFnTVMyN1FDakNNbWd5c1ZNUHpWWnZPU0wvSVZ0dUFjeFVTamJ2?=
 =?utf-8?B?cDYxUUNhTVh0U0RIOWk0Tkc1V1NyeXg1UFBVdlQ4Z3lBMHcwTUt4LzVtTGRn?=
 =?utf-8?B?bDBqWVdFaGtFZHI0eXFKNjd5WEJwUitqeUdBVGhZK256MDZXRmMybngzTWpi?=
 =?utf-8?B?clM3bGRWR1FMZEMwUys5ZTBKallCZXhoMXlDZTZEYkFaejV2RW1TcklKd1N3?=
 =?utf-8?B?eENBSWYyOXRiZE50VWVlcDUzMGVSVS9oUzNwOThOZk8wSnJ2TlY5QW9lWURn?=
 =?utf-8?B?MWp4RERub2xKaThJRDdVaHN6OGxSczVDeE5jK2lPcFppdGJQQ1kvbUorWWJk?=
 =?utf-8?B?amhCUHREYzMvVHRlYXZ4eDRiUEh0QkYxSlFZUU1YdzhpVzRMZE11TnR5REVj?=
 =?utf-8?B?ZHZXZi9DVUdUOERCb1JYK3JUSHlkeHVVMUd2eEJWemh2TXRwWktEZWV2dmFu?=
 =?utf-8?B?N3d2bEwyR2xmZGdVUHlINW5vR0FGeGFyTVJqTTZNaFJyV21XaHhwbzdmWjhz?=
 =?utf-8?B?UzU0ei94RmJpMk5RekN4YU5xaStIUDFoVzdsb0NsQmJvUHZQbHNRdklhaDZC?=
 =?utf-8?B?eHRqbEtsTWZ4RWx4eGZZRmhYTHZybGdWVVdCQ2pLdHhoTEhTOWkvVmN1d0xG?=
 =?utf-8?Q?kwr2QWkxbmXVE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bddc64a-376a-454f-d7e8-08d951c9801a
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 13:13:33.1393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G9NLR0cpz72hr8y93UXSoRfr3b/dBcZOTArZT5r13mvdi+Crvdg0aDSw6f7JeGlK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4847
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
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
Cc: Matthew Brost <matthew.brost@intel.com>, Jack Zhang <Jack.Zhang1@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjguMDcuMjEgdW0gMTU6MDggc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPiBPbiAyMDIxLTA3
LTI4IDE6MzYgcC5tLiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMjcuMDcuMjEgdW0g
MTc6Mzcgc2NocmllYiBSb2IgQ2xhcms6Cj4+PiBPbiBUdWUsIEp1bCAyNywgMjAyMSBhdCA4OjE5
IEFNIE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnplci5uZXQ+IHdyb3RlOgo+Pj4+IE9uIDIw
MjEtMDctMjcgNToxMiBwLm0uLCBSb2IgQ2xhcmsgd3JvdGU6Cj4+Pj4+IE9uIFR1ZSwgSnVsIDI3
LCAyMDIxIGF0IDc6NTAgQU0gTWljaGVsIETDpG56ZXIgPG1pY2hlbEBkYWVuemVyLm5ldD4gd3Jv
dGU6Cj4+Pj4+PiBPbiAyMDIxLTA3LTI3IDE6MzggYS5tLiwgUm9iIENsYXJrIHdyb3RlOgo+Pj4+
Pj4+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4KPj4+Pj4+Pgo+Pj4+
Pj4+IEJhc2VkIG9uIGRpc2N1c3Npb24gZnJvbSBhIHByZXZpb3VzIHNlcmllc1sxXSB0byBhZGQg
YSAiYm9vc3QiIG1lY2hhbmlzbQo+Pj4+Pj4+IHdoZW4sIGZvciBleGFtcGxlLCB2YmxhbmsgZGVh
ZGxpbmVzIGFyZSBtaXNzZWQuwqAgSW5zdGVhZCBvZiBhIGJvb3N0Cj4+Pj4+Pj4gY2FsbGJhY2ss
IHRoaXMgYXBwcm9hY2ggYWRkcyBhIHdheSB0byBzZXQgYSBkZWFkbGluZSBvbiB0aGUgZmVuY2Us
IGJ5Cj4+Pj4+Pj4gd2hpY2ggdGhlIHdhaXRlciB3b3VsZCBsaWtlIHRvIHNlZSB0aGUgZmVuY2Ug
c2lnbmFsbGVkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSd2ZSBub3QgeWV0IGhhZCBhIGNoYW5jZSB0byBy
ZS13b3JrIHRoZSBkcm0vbXNtIHBhcnQgb2YgdGhpcywgYnV0Cj4+Pj4+Pj4gd2FudGVkIHRvIHNl
bmQgdGhpcyBvdXQgYXMgYW4gUkZDIGluIGNhc2UgSSBkb24ndCBoYXZlIGEgY2hhbmNlIHRvCj4+
Pj4+Pj4gZmluaXNoIHRoZSBkcm0vbXNtIHBhcnQgdGhpcyB3ZWVrLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
T3JpZ2luYWwgZGVzY3JpcHRpb246Cj4+Pj4+Pj4KPj4+Pj4+PiBJbiBzb21lIGNhc2VzLCBsaWtl
IGRvdWJsZS1idWZmZXJlZCByZW5kZXJpbmcsIG1pc3NpbmcgdmJsYW5rcyBjYW4KPj4+Pj4+PiB0
cmljayB0aGUgR1BVIGludG8gcnVubmluZyBhdCBhIGxvd2VyIGZyZXF1ZW5jZSwgd2hlbiByZWFs
bHkgd2UKPj4+Pj4+PiB3YW50IHRvIGJlIHJ1bm5pbmcgYXQgYSBoaWdoZXIgZnJlcXVlbmN5IHRv
IG5vdCBtaXNzIHRoZSB2YmxhbmtzCj4+Pj4+Pj4gaW4gdGhlIGZpcnN0IHBsYWNlLgo+Pj4+Pj4+
Cj4+Pj4+Pj4gVGhpcyBpcyBwYXJ0aWFsbHkgaW5zcGlyZWQgYnkgYSB0cmljayBpOTE1IGRvZXMs
IGJ1dCBpbXBsZW1lbnRlZAo+Pj4+Pj4+IHZpYSBkbWEtZmVuY2UgZm9yIGEgY291cGxlIG9mIHJl
YXNvbnM6Cj4+Pj4+Pj4KPj4+Pj4+PiAxKSBUbyBjb250aW51ZSB0byBiZSBhYmxlIHRvIHVzZSB0
aGUgYXRvbWljIGhlbHBlcnMKPj4+Pj4+PiAyKSBUbyBzdXBwb3J0IGNhc2VzIHdoZXJlIGRpc3Bs
YXkgYW5kIGdwdSBhcmUgZGlmZmVyZW50IGRyaXZlcnMKPj4+Pj4+Pgo+Pj4+Pj4+IFsxXSBodHRw
czovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0El
MkYlMkZwYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnJTJGc2VyaWVzJTJGOTAzMzElMkYmYW1wO2Rh
dGE9MDQlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDMjY5YjJkZjNlMWRjNGYw
Yjg1NmQwOGQ5NTFjOGM3NjglN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3QzAl
N0MwJTdDNjM3NjMwNzQ1MDkxNTM4NTYzJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJam9p
TUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1uMCUz
RCU3QzEwMDAmYW1wO3NkYXRhPWVZYVNPU1M1d09uZ05BZDl3dWZwNWVXQ3g1R3RBd282R2t1bHRK
Z3JqbUElM0QmYW1wO3Jlc2VydmVkPTAKPj4+Pj4+IFVuZm9ydHVuYXRlbHksIG5vbmUgb2YgdGhl
c2UgYXBwcm9hY2hlcyB3aWxsIGhhdmUgdGhlIGZ1bGwgaW50ZW5kZWQgZWZmZWN0IG9uY2UgV2F5
bGFuZCBjb21wb3NpdG9ycyBzdGFydCB3YWl0aW5nIGZvciBjbGllbnQgYnVmZmVycyB0byBiZWNv
bWUgaWRsZSBiZWZvcmUgdXNpbmcgdGhlbSBmb3IgYW4gb3V0cHV0IGZyYW1lICh0byBwcmV2ZW50
IG91dHB1dCBmcmFtZXMgZnJvbSBnZXR0aW5nIGRlbGF5ZWQgYnkgY2xpZW50IHdvcmspLiBTZWUg
aHR0cHM6Ly9uYW0xMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBz
JTNBJTJGJTJGZ2l0bGFiLmdub21lLm9yZyUyRkdOT01FJTJGbXV0dGVyJTJGLSUyRm1lcmdlX3Jl
cXVlc3RzJTJGMTg4MCZhbXA7ZGF0YT0wNCU3QzAxJTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5j
b20lN0MyNjliMmRmM2UxZGM0ZjBiODU2ZDA4ZDk1MWM4Yzc2OCU3QzNkZDg5NjFmZTQ4ODRlNjA4
ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzc2MzA3NDUwOTE1Mzg1NjMlN0NVbmtub3duJTdD
VFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01EQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJ
azFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMTAwMCZhbXA7c2RhdGE9MVprT3pMcWJpS1N5Q2l4R1ow
dTdIZCUyRmMxWW5VWnViJTJGJTJGeDdSdUVjbEZLZyUzRCZhbXA7cmVzZXJ2ZWQ9MCAoc2hhbWVs
ZXNzIHBsdWcgOikgZm9yIGEgcHJvb2Ygb2YgY29uY2VwdCBvZiB0aGlzIGZvciBtdXR0ZXIuIFRo
ZSBib29zdCB3aWxsIG9ubHkgYWZmZWN0IHRoZSBjb21wb3NpdG9yJ3Mgb3duIEdQVSB3b3JrLCBu
b3QgdGhlIGNsaWVudCB3b3JrICh3aGljaCBtZWFucyBubyBlZmZlY3QgYXQgYWxsIGZvciBmdWxs
c2NyZWVuIGFwcHMgd2hlcmUgdGhlIGNvbXBvc2l0b3IgY2FuIHNjYW4gb3V0IHRoZSBjbGllbnQg
YnVmZmVycyBkaXJlY3RseSkuCj4+Pj4+Pgo+Pj4+PiBJIGd1ZXNzIHlvdSBtZWFuICJubyBlZmZl
Y3QgYXQgYWxsICpleGNlcHQqIGZvciBmdWxsc2NyZWVuLi4uIj8KPj4+PiBJIG1lYW50IHdoYXQg
SSB3cm90ZTogVGhlIGNvbXBvc2l0b3Igd2lsbCB3YWl0IGZvciB0aGUgbmV4dCBidWZmZXIgdG8g
YmVjb21lIGlkbGUsIHNvIHRoZXJlJ3Mgbm8gYm9vc3QgZnJvbSB0aGlzIG1lY2hhbmlzbSBmb3Ig
dGhlIGNsaWVudCBkcmF3aW5nIHRvIHRoYXQgYnVmZmVyLiBBbmQgc2luY2UgdGhlIGNvbXBvc2l0
b3IgZG9lcyBubyBkcmF3aW5nIG9mIGl0cyBvd24gaW4gdGhpcyBjYXNlLCB0aGVyZSdzIG5vIGJv
b3N0IGZyb20gdGhhdCBlaXRoZXIuCj4+Pj4KPj4+Pgo+Pj4+PiBJJ2QgcGVyaGFwcyByZWNvbW1l
bmQgdGhhdCB3YXlsYW5kIGNvbXBvc2l0b3JzLCBpbiBjYXNlcyB3aGVyZSBvbmx5IGEKPj4+Pj4g
c2luZ2xlIGxheWVyIGlzIGNoYW5naW5nLCBub3QgdHJ5IHRvIGJlIGNsZXZlciBhbmQganVzdCBw
dXNoIHRoZQo+Pj4+PiB1cGRhdGUgZG93biB0byB0aGUga2VybmVsLgo+Pj4+IEV2ZW4ganVzdCBm
b3IgdGhlIGZ1bGxzY3JlZW4gZGlyZWN0IHNjYW5vdXQgY2FzZSwgdGhhdCB3b3VsZCByZXF1aXJl
IHNvbWUga2luZCBvZiBhdG9taWMgS01TIEFQSSBleHRlbnNpb24gdG8gYWxsb3cgcXVldWluZyBt
dWx0aXBsZSBwYWdlIGZsaXBzIGZvciB0aGUgc2FtZSBDUlRDLgo+Pj4+Cj4+Pj4gRm9yIG90aGVy
IGNhc2VzLCB0aGlzIHdvdWxkIGFsc28gcmVxdWlyZSBhIG1lY2hhbmlzbSB0byBjYW5jZWwgYSBw
ZW5kaW5nIGF0b21pYyBjb21taXQsIGZvciB3aGVuIGFub3RoZXIgc3VyZmFjZSB1cGRhdGUgY29t
ZXMgaW4gYmVmb3JlIHRoZSBjb21wb3NpdG9yJ3MgZGVhZGxpbmUsIHdoaWNoIGFmZmVjdHMgdGhl
IHByZXZpb3VzbHkgc2luZ2xlIHVwZGF0aW5nIHN1cmZhY2UgYXMgd2VsbC4KPj4+Pgo+Pj4gV2Vs
bCwgaW4gdGhlIGVuZCwgdGhlcmUgaXMgbW9yZSB0aGFuIG9uZSBjb21wb3NpdG9yIG91dCB0aGVy
ZS4uIGFuZCBpZgo+Pj4gc29tZSB3YXlsYW5kIGNvbXBvc2l0b3JzIGFyZSBnb2luZyB0aGlzIHJv
dXRlLCB0aGV5IGNhbiBhbHNvIGltcGxlbWVudAo+Pj4gdGhlIHNhbWUgbWVjaGFuaXNtIGluIHVz
ZXJzcGFjZSB1c2luZyB0aGUgc3lzZnMgdGhhdCBkZXZmcmVxIGV4cG9ydHMuCj4+Pgo+Pj4gQnV0
IGl0IHNvdW5kcyBzaW1wbGVyIHRvIG1lIGZvciB0aGUgY29tcG9zaXRvciB0byBoYXZlIGEgc29y
dCBvZiAiZ2FtZQo+Pj4gbW9kZSIgZm9yIGZ1bGxzY3JlZW4gZ2FtZXMuLiBJJ20gbGVzcyB3b3Jy
aWVkIGFib3V0IFVJIGludGVyYWN0aXZlCj4+PiB3b3JrbG9hZHMsIGJvb3N0aW5nIHRoZSBHUFUg
ZnJlcSB1cG9uIHN1ZGRlbiBhY3Rpdml0eSBhZnRlciBhIHBlcmlvZAo+Pj4gb2YgaW5hY3Rpdml0
eSBzZWVtcyB0byB3b3JrIHJlYXNvbmFibHkgd2VsbCB0aGVyZS4KPj4gQXQgbGVhc3QgQU1EIGhh
cmR3YXJlIGlzIGFscmVhZHkgY2FwYWJsZSBvZiBmbGlwcGluZyBmcmFtZXMgb24gR1BVIGV2ZW50
cyBsaWtlIGZpbmlzaGluZyByZW5kZXJpbmcgKG9yIHVwbG9hZGluZyBldGMpLgo+Pgo+PiBCeSB3
YWl0aW5nIGluIHVzZXJzcGFjZSBvbiB0aGUgQ1BVIGJlZm9yZSBzZW5kIHRoZSBmcmFtZSB0byB0
aGUgaGFyZHdhcmUgeW91IGFyZSBjb21wbGV0ZWx5IGtpbGxpbmcgb2Ygc3VjaCBmZWF0dXJlcy4K
Pj4KPj4gRm9yIGNvbXBvc2luZyB1c2UgY2FzZXMgdGhhdCBtYWtlcyBzZW5zZSwgYnV0IGNlcnRh
aW5seSBub3QgZm9yIGZ1bGwgc2NyZWVuIGFwcGxpY2F0aW9ucyBhcyBmYXIgYXMgSSBjYW4gc2Vl
Lgo+IEV2ZW4gZm9yIGZ1bGxzY3JlZW4sIHRoZSBjdXJyZW50IEtNUyBBUEkgb25seSBhbGxvd3Mg
cXVldWluZyBhIHNpbmdsZSBwYWdlIGZsaXAgcGVyIENSVEMsIHdpdGggbm8gd2F5IHRvIGNhbmNl
bCBvciBvdGhlcndpc2UgbW9kaWZ5IGl0LiBUaGVyZWZvcmUsIGEgV2F5bGFuZCBjb21wb3NpdG9y
IGhhcyB0byBzZXQgYSBkZWFkbGluZSBmb3IgdGhlIG5leHQgcmVmcmVzaCBjeWNsZSwgYW5kIHdo
ZW4gdGhlIGRlYWRsaW5lIHBhc3NlcywgaXQgaGFzIHRvIHNlbGVjdCB0aGUgYmVzdCBidWZmZXIg
YXZhaWxhYmxlIGZvciB0aGUgZnVsbHNjcmVlbiBzdXJmYWNlLiBUbyBtYWtlIHN1cmUgdGhlIGZs
aXAgd2lsbCBub3QgbWlzcyB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlLCB0aGUgY29tcG9zaXRvciBo
YXMgdG8gcGljayBhbiBpZGxlIGJ1ZmZlci4gSWYgaXQgcGlja3MgYSBub24taWRsZSBidWZmZXIs
IGFuZCB0aGUgcGVuZGluZyByZW5kZXJpbmcgZG9lcyBub3QgZmluaXNoIGluIHRpbWUgZm9yIHZl
cnRpY2FsIGJsYW5rLCB0aGUgZmxpcCB3aWxsIGJlIGRlbGF5ZWQgYnkgYXQgbGVhc3Qgb25lIHJl
ZnJlc2ggY3ljbGUsIHdoaWNoIHJlc3VsdHMgaW4gdmlzaWJsZSBzdHV0dGVyaW5nLgo+Cj4gKFVu
dGlsIHRoZSBkZWFkbGluZSBwYXNzZXMsIHRoZSBXYXlsYW5kIGNvbXBvc2l0b3IgY2FuJ3QgZXZl
biBrbm93IGlmIGEgcHJldmlvdXNseSBmdWxsc2NyZWVuIHN1cmZhY2Ugd2lsbCBzdGlsbCBiZSBm
dWxsc2NyZWVuIGZvciB0aGUgbmV4dCByZWZyZXNoIGN5Y2xlKQoKV2VsbCB0aGVuIGxldCdzIGV4
dGVuZCB0aGUgS01TIEFQSSBpbnN0ZWFkIG9mIGhhY2tpbmcgdG9nZXRoZXIgCndvcmthcm91bmRz
IGluIHVzZXJzcGFjZS4KCk1ha2luZyBzdWNoIGRlY2lzaW9ucyBpcyB0aGUgcmVzcG9uc2liaWxp
dHkgb2YgdGhlIGtlcm5lbCBhbmQgbm90IAp1c2Vyc3BhY2UgaW4gbXkgb3Bpbmlvbi4KCkUuZy4g
d2UgY291bGQgZm9yIGV4YW1wbGUgYWxzbyBuZWVkIHRvIHJlc2h1ZmZsZSBCT3Mgc28gdGhhdCBh
IEJPIGlzIApldmVuIHNjYW5vdXQgYWJsZS4gVXNlcnNwYWNlIGNhbid0IGtub3cgYWJvdXQgc3Vj
aCBzdHVmZiBiZWZvcmUgaGFuZCAKYmVjYXVzZSB0aGUgbWVtb3J5IHVzYWdlIGNhbiBjaGFuZ2Ug
YXQgYW55IHRpbWUuCgpSZWdhcmRzLApDaHJpc3RpYW4uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
