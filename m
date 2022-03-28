Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1FA4E9973
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 16:26:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBF653EE71
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Mar 2022 14:26:55 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2042.outbound.protection.outlook.com [40.107.237.42])
	by lists.linaro.org (Postfix) with ESMTPS id F2D783EBBA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Mar 2022 14:26:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLU4dMFj1ZD2g49vAIw1oG2gnK1yBteweuzhpPPdX/Y0dhcgX8E4FLZ/WYy2RT7MZXOcjxGyRV5gDdlzb947y3R7gfd0JHvFDaQyrLCJQ/RfWUJbQroPoLz8it1hQ/KgXx4OcvLGhCcEqp+jAR0vdtls0EfDO/XfK8XOuGAw3xi5fC7gWHjGSAc+ALLmFPiBx/IoxoU9AW1lOT68MDVZoBg3Nc0qhK5s+mgj6lMfBiEIw5K4uZVcnuL6L/RYyCmlx+JqIq0VussYG0zPmT36qSk9TT04oOF4kQp/3uKNjl6bsLiMpJW7iY1sfP5SyWKUtGRa2rt2x8D/f/PS9zsgfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVy6cTt2HMdMOXVyRU70O5hP0O/d1bFzcfKl8REYjeE=;
 b=DumS2puhcazJkNq4fkIrbbyP7v6fEvksAlsQglTfksIa7eOyNcrMEqviiixiJAG++pceUAKTZ8yLT0UA5KYqXX8TJLsV/GJ8nVkCMyjhGQ7nr+Lq0INtngLq4A0/cfifd+DZLv8l2SfXPKPp3vRkxcv6slmYn8o2SjdkfLxjPcdAcrIWmyJ5qHNaX24Dskv7RXbBZ5C+4/sENGfAeniMAEO+tZZKtL2kKARO/wOwaw4qJi2l8a6Ga9awoKPac/XHqG6AMMw+kmOlxZ9mvV2pgXAQBG/cyZ9xTazevhbIjUT1LfIOsHuKuX5/ofprmbNTjHhhnzdgxkemotdYQw8DIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OVy6cTt2HMdMOXVyRU70O5hP0O/d1bFzcfKl8REYjeE=;
 b=LfwOIfLqITQJykIVxo4PQsAgZDhUi/hWsV4JjZJblNxYsajHINz3W0r06RlL/orNS6u5odjEK07pBvVrBklWTwNz8ns1pWpMFMZqK0BeA/S5praxD+dGEanIrb0EUsHJQ6c6JyntkZQD9LsFCrMlynFcmdBz0/OwmJYyfUsqfj0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MN2PR12MB4831.namprd12.prod.outlook.com (2603:10b6:208:1b9::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Mon, 28 Mar
 2022 14:26:50 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::404f:1fc8:9f4c:f185%6]) with mapi id 15.20.5102.023; Mon, 28 Mar 2022
 14:26:50 +0000
Message-ID: <33e990e7-b6fc-d9f8-5dee-4a809ec80d6c@amd.com>
Date: Mon, 28 Mar 2022 16:26:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220311110244.1245-1-christian.koenig@amd.com>
 <Yj3e0QjbnPoG7n4I@intel.com> <35cc3bd5-c0ab-0bd1-9603-4971234fbcd6@amd.com>
 <338d0623-1161-c958-101f-dc7d8ef12f99@gmail.com>
 <YkHEutP7ylbVgJjf@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <YkHEutP7ylbVgJjf@phenom.ffwll.local>
X-ClientProxiedBy: AS8PR05CA0016.eurprd05.prod.outlook.com
 (2603:10a6:20b:311::21) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72f741c4-5e3d-435f-8fa4-08da10c6ff26
X-MS-TrafficTypeDiagnostic: MN2PR12MB4831:EE_
X-Microsoft-Antispam-PRVS: 
	<MN2PR12MB4831A335F432BDDCCC70F196831D9@MN2PR12MB4831.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5jGipElsyBSHg1xcOtQCiWmKU3hV7YklWGjDrVRVB9NcTPGIZlGw+XgZY4S3DQ5nGSgKGZNK9Fv8K8tD2y038XRpNRQNnMdLoii6OsloRXXwv7hccQDv54fNjRAlWVeXZapVHIMWzKjFxFWWbuofoftaanKHhMM50UtO5qhPcBDuLJJq2YaXVVMNvk8DjKRThjV42WksceJ7E05mTWd/kxnt/0s4DsO7MS9f/ZAIVc+Yunk5HZN7WjU/5Eim7CA+nxxkjxYuD0sLzLOvU6ojXUsDwnzpiJfBZkQieDTsA0XlSUK8dsVwfMLLLuuTiTjlovhaG7a1Ao8TYpGYp1oglpphVRK5/LvKfwmj65Q9n350oR/P8Nwmt1SxzFpN9A7vA4sMpevc0EqZDwqN04Z7oDTYfg7k2CkdyM0o/Rc7YUEvz9BmsQchYgqPTEjFMK0pRL8L5KXt3vDyNLKOcNugzjnr7FCpQ7oZL8Ua7L57gGgvZ0OQra6fmOKqoFk9zq6q09XeEhf11x8WTgeLcOqcs0Q+QrRd4r6/UnpfWyEDml9vrdOfRfq0wT1OliyrKCbIP2l+seTp+B3cFBWJaQQOVvMvdOyPJ2Vmui/Nth5aOah2yiSXGydUqRzyJjk/D+GHZQuzKV9YsSkGluDqiQ1yyGtLQ7xWoJeXNen20MoSzVO+0gyh5cabQtPYdOeLYzBlLDhmB1FXGrGQpOCeqbcK1yV2ir17a+ji1yUrIXhs7uduyQeAdKQYRxASP6KXDjZCcnkbDaD6Ac4Upw34077aq51jkLhSCO1JM/JnpatVvf3CmJEENN60IRgyI6svY7Ql
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(2616005)(186003)(66574015)(6512007)(6506007)(6666004)(508600001)(45080400002)(83380400001)(6486002)(966005)(66946007)(7416002)(316002)(66476007)(8676002)(4326008)(8936002)(31686004)(38100700002)(5660300002)(66556008)(36756003)(2906002)(54906003)(110136005)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SGxDVEdJaVllNjVYVDZEUkhQNW5PWmQ5bmF4VTRJeExOdHpScU5mWkkyb2xV?=
 =?utf-8?B?ZzI4cHdBZ0F4SnYzRnJOeFkwaGY3azgzV2dPaHRjTWdLRDR4Y2hhSWdkRVdS?=
 =?utf-8?B?UlhnbWErdXZtT1pVSHhTVmtFaG5ka2Q5cmdSSlRoSjVWQ1RBa1AxMUQrY1Fz?=
 =?utf-8?B?RlNwSmc2c0pxSW41QzV6d0dSclEzYktGS0h0Z3JMMUVCalhQZWxvejJnVytZ?=
 =?utf-8?B?LzVmcERXdkZnR2l2UnJ4K0FFUmlienhVQmZXTGVDdzZSZjNiMGUyWUNVd3Ro?=
 =?utf-8?B?VUI0YWNwU09aR21iMSs1VDJYMmltWXM4SUVlWDlsWTlLMXB5eXRjbEVOYlRS?=
 =?utf-8?B?SWZyT3dyRmFyUDBmU1pnWWl4RVMwcGhjczhMbEp4SkZ0bnRJVlRlclYwMTFH?=
 =?utf-8?B?M3VBNURFQzM2Um13aEV2NkJ2eGdLS2drTjVobXcyb3UzY1dGUHhBWldyMHdD?=
 =?utf-8?B?bnNmNjRDTXJrMUliTlNaczIxVmozdDdGSHUwckpUTmw2MWZoakVPVVR6cGw0?=
 =?utf-8?B?TEVIRkxUdjh5eEpldHJjUjNodmV3VW43QmJQbERmVTNvLzJUTkVUdSthQm1F?=
 =?utf-8?B?WHAzL3owZGZqR0Q5d2toQXJuODRXQldvTXR0VHFOQzdhVjJ0T3JwY2ovWkkw?=
 =?utf-8?B?OWtQNkppTWxhNmV5OG1XRWFnZWRSRjFxdkh5cTZIUHBBNGJTTEZEWkI0RlZO?=
 =?utf-8?B?V2N2eWM0SHlweVN0cDRESGgzVDlQMU90clRVcmFtck12WGlNbE5SQ095L1l4?=
 =?utf-8?B?VFRsbENZWGFkWTBVbDBiWGtVY1VzamVDMURnQTJTdnZ4YlBvZStPZ3J1Q3Nm?=
 =?utf-8?B?d1cxR1ZYcWxKTFdseWttdWRwZnozR2Rrc3lIL1RyZjg1THdNZk9Pd1RKRlN3?=
 =?utf-8?B?ZGFsRzVuVGxaTXRjcDl5T0lrVks1d2JldFUxNyttNmRhYlZBUGFxQ0sxdjk4?=
 =?utf-8?B?d0FlZmF5bHo3OHNVZWFlQ0NvL3c4a2pRQ0tRYWh6cy9WQXZRK1FtQUdrdU9M?=
 =?utf-8?B?bTVILzZkZXVlcGRLa1BzU0llTUpIcmZJM3FKVTZsYnE0YUFQVFNGVWp0OGp6?=
 =?utf-8?B?MlFqM1dlKzdrL0FaT0Z5QXFJbnJKa0xZR3RjTVUzbW1UWUdhdzV0dGF0Tmha?=
 =?utf-8?B?Tnh3RW4xaWtEYkxTSVRkWUc5YXNtRnRFY0laN0JqeXdOWENQTlR3SmZLY0NQ?=
 =?utf-8?B?WTArWU5PVCtPa252RDl1M0NuMjEydUtRdWZYNmxEOE1mazhDOURGWEhuTkVy?=
 =?utf-8?B?MjdjMU5lZEJDSVBtSWQzYllhMTlrY05nVnVhZUVxVmJZWk1kMmdIMU1pbXVU?=
 =?utf-8?B?VFoxcVUzd1haS2ZGOXRCbHd3QkV5d3poZmZuTXQ4MVY2dUNReU83RExERzkv?=
 =?utf-8?B?VGtxWWcvMDh2MEE4R09SVmw5OGpFSDhkOEswNk1VL1BmNFp2UThkNElpK1ZF?=
 =?utf-8?B?OTV3TGwwUUFkRmtyWDFiNDVsZkJ0d1dxUC83TmF4OG5tcUxObFEvMURiRnpr?=
 =?utf-8?B?MERMNzEwZjVDSFpFcVcxSUhUaGh5SHFkb3RhVHcxbE1ZMjBqcDJpMzd3bjRx?=
 =?utf-8?B?VnBEWHNRbkRBdHk5MXVnQmRCWlJqajh0czBQRkdLaTUyQXZnaGdGc2J1VG9X?=
 =?utf-8?B?amJaVDkyc3R6YjVjOGcxL3pHRFowd2ZoR3BvZkFZMlp5WnhScVNOTHZxQW1X?=
 =?utf-8?B?LzlYZzdkdWs0Sjh4QXlPbUxEVGdiaG5ZTkxzbzI5dTRBdDZSaUltQ1QvWm45?=
 =?utf-8?B?b2Exa2NIL2NjV1B0Sm9ZS2RBcmxCUG5FcTIraXA0b2duRUJuTitCVDN6ZHNG?=
 =?utf-8?B?NVZLVmZnL0VISFF1ZFhQMU9NZ2RnNmJobHR4ZFlyeE9xUHo5ZytZckdIMU1n?=
 =?utf-8?B?V0lSNlVTcVM4NXl5MlRjK2hQVXRuQXROWFA3K2lVZU1KSlI2cVNidEMwUFRH?=
 =?utf-8?B?eFFiZ1U0dXhzajRIa2g4Ymxsc1hVNnByc3R3VW5EdlhzdjBJY1JLZmRRMDFJ?=
 =?utf-8?B?bGRmdXB0QzA1NlhLZG51QzJrbCtiVEx3VzNiSklzMTdiS01ucVJNS1l2WkdI?=
 =?utf-8?B?SkJ6OFRMOGVIdk9YQXp1Z0VmMXZ1YlczVEdieVpCcWFZeG9YMTJBY0o4V1Jy?=
 =?utf-8?B?eDVleU5GZ1IyTmp0ay9xc2ladjVkUWh6a21pNlhKeUxLRmZjdkRlMVNId0Zi?=
 =?utf-8?B?WXovVG5iT0gxdkRYVWhGN045czBHbTFVaUErbmZNSm8yZS84V3piUUFRMitm?=
 =?utf-8?B?elRLUjRMN2kyK3phcnlld1F4Y1gvN3Z4dyt2WjhmUE1tZzNXaHRUaURwbkJD?=
 =?utf-8?B?Mm1wNlJnTk94M1ZWWUJlWlVSb1hjRjZ4ZVBoNDA1Z3c5dnlCWmlTMEk5N1BQ?=
 =?utf-8?Q?/DPf/qpHE0ZqGsGX8t/sRd2HyCrNuPG6PQjysAdCYuubL?=
X-MS-Exchange-AntiSpam-MessageData-1: GQ9dLROHxR2rCw==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f741c4-5e3d-435f-8fa4-08da10c6ff26
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2022 14:26:50.0070
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hrSruUMCfMCyIxxihqnIAwzcCB0ZkiHL7dJvaj0c5MnmQZoAk1VtlNm++OhmRX4P
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4831
Message-ID-Hash: WIKV7HFWEZMJBXVMM4ODVC4DWI7E6DDE
X-Message-ID-Hash: WIKV7HFWEZMJBXVMM4ODVC4DWI7E6DDE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, gustavo@padovan.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf: add dma_fence_unwrap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WIKV7HFWEZMJBXVMM4ODVC4DWI7E6DDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjguMDMuMjIgdW0gMTY6MjIgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBNb24sIE1h
ciAyOCwgMjAyMiBhdCAxMjoyODozMVBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gSGkgVmlsbGUgJiBEYW5pZWwsDQo+Pg0KPj4gQW0gMjUuMDMuMjIgdW0gMTY6Mjggc2Nocmll
YiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4+IEFtIDI1LjAzLjIyIHVtIDE2OjI1IHNjaHJpZWIgVmls
bGUgU3lyasOkbMOkOg0KPj4+PiBPbiBGcmksIE1hciAxMSwgMjAyMiBhdCAxMjowMjo0M1BNICsw
MTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+Pj4gQWRkIGEgZ2VuZXJhbCBwdXJwb3Nl
IGhlbHBlciB0byBkZWVwIGRpdmUgaW50bw0KPj4+Pj4gZG1hX2ZlbmNlX2NoYWluL2RtYV9mZW5j
ZV9hcnJheQ0KPj4+Pj4gc3RydWN0dXJlcyBhbmQgaXRlcmF0ZSBvdmVyIGFsbCB0aGUgZmVuY2Vz
IGluIHRoZW0uDQo+Pj4+Pg0KPj4+Pj4gVGhpcyBpcyB1c2VmdWwgd2hlbiB3ZSBuZWVkIHRvIGZs
YXR0ZW4gb3V0IGFsbCBmZW5jZXMgaW4gdGhvc2UNCj4+Pj4+IHN0cnVjdHVyZXMuDQo+Pj4+Pg0K
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPj4+PiBPbmUgb2YgdGhlIGRtYS1idWYgcGF0Y2hlcyB0b29rIGRvd24gSW50ZWwg
Q0kuIExvb2tzIGxpa2UgZXZlcnkNCj4+Pj4gbWFjaGluZSBvb3BzZXMgaW4gc29tZSBzeW5jX2Zp
bGUgdGhpbmcgbm93Og0KPj4+PiA8MT5bwqAgMjYwLjQ3MDAwOF0gQlVHOiBrZXJuZWwgTlVMTCBw
b2ludGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOg0KPj4+PiAwMDAwMDAwMDAwMDAwMDEwDQo+Pj4+
IDwxPlvCoCAyNjAuNDcwMDIwXSAjUEY6IHN1cGVydmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVs
IG1vZGUNCj4+Pj4gPDE+W8KgIDI2MC40NzAwMjVdICNQRjogZXJyb3JfY29kZSgweDAwMDApIC0g
bm90LXByZXNlbnQgcGFnZQ0KPj4+PiA8Nj5bwqAgMjYwLjQ3MDAzMF0gUEdEIDAgUDREIDANCj4+
Pj4gPDQ+W8KgIDI2MC40NzAwMzVdIE9vcHM6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBOT1BUSQ0K
Pj4+PiA8ND5bwqAgMjYwLjQ3MDA0MF0gQ1BVOiAwIFBJRDogNTMwNiBDb21tOiBjb3JlX2hvdHVu
cGx1ZyBOb3QgdGFpbnRlZA0KPj4+PiA1LjE3LjAtQ0ktQ0lfRFJNXzExNDA1KyAjMQ0KPj4+PiA8
ND5bwqAgMjYwLjQ3MDA0OV0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29ycG9yYXRpb24gSmFzcGVy
IExha2UNCj4+Pj4gQ2xpZW50IFBsYXRmb3JtL0phc3Blcmxha2UgRERSNCBTT0RJTU0gUlZQLCBC
SU9TDQo+Pj4+IEpTTFNGV0kxLlIwMC4yMzg1LkQwMi4yMDEwMTYwODMxIDEwLzE2LzIwMjANCj4+
Pj4gPDQ+W8KgIDI2MC40NzAwNThdIFJJUDogMDAxMDpkbWFfZmVuY2VfYXJyYXlfZmlyc3QrMHgx
OS8weDIwDQo+PiBJJ3ZlIGxvb2tlZCBpbnRvIHRoaXMgYW5kIHRoZSByb290IGNhdXNlIHNlZW1z
IHRvIGJlIHRoYXQgdGhlIG5ldyBjb2RlDQo+PiBkb2Vzbid0IGhhbmRsZSBkbWFfZmVuY2VfYXJy
YXlzIHdpdGggemVybyBlbGVtZW50cy4NCj4+DQo+PiBUaGF0IGlzIHJhdGhlciBlYXN5IHRvIGZp
eCwgYnV0IGEgZG1hX2ZlbmNlX2FycmF5IHdpdGggemVybyBudW1iZXIgb2YNCj4+IGVsZW1lbnRz
IGlzIG1vc3QgbGlrZWx5IGEgYnVnIGJlY2F1c2UgdW5kZXIgdGhlIHdyb25nIGNpcmN1bXN0YW5j
ZXMgaXQgY2FuDQo+PiBjcmVhdGUgYSBkbWFfZmVuY2UgaW5zdGFuY2Ugd2hpY2ggd2lsbCBuZXZl
ciBzaWduYWwuDQo+Pg0KPj4gSSd2ZSBzZW5kIG91dCBhIHBhdGNoIG9uIEZyaW5kYXkgKFtQQVRD
SF0gZG1hLWJ1ZjogV0lQIGRtYV9mZW5jZV9hcnJheV9maXJzdA0KPj4gZml4KSB3aGljaCBhdm9p
ZHMgdGhlIGNyYXNoIGFuZCBwcmludHMgYSB3YXJuaW5nIGlmIGFueWJvZHkgdHJpZXMgdG8gY3Jl
YXRlDQo+PiBhIGRtYV9mZW5jZV9hcnJheSB3aXRoIHplcm8gbGVuZ3RoLg0KPj4NCj4+IENhbiB5
b3UgdGVzdCB0aGlzPw0KPiBJdCdzIGluIGRybS10aXAgbm93IChpbiB0aGUgZml4dXAgYnJhbmNo
KSBzbyBkcm0tdGlwIHJlc3VsdHMgc2hvdWxkIGhhdmUNCj4gdGhlIHJlc3VsdCBzb29uaXNoOg0K
Pg0KPiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cHMlM0ElMkYlMkZpbnRlbC1nZngtY2kuMDEub3JnJTJGdHJlZSUyRmRybS10aXAlMkZpbmRl
eC5odG1sJmFtcDtkYXRhPTA0JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3QzBh
ZmM3NGI1ZGYwYzRlYTM4NGFmMDhkYTEwYzY3MmZhJTdDM2RkODk2MWZlNDg4NGU2MDhlMTFhODJk
OTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzg0MDc0MjI3Mzc5MjM1NiU3Q1Vua25vd24lN0NUV0ZwYkda
c2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dp
TENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YT1TTDJDdU1nTTZsQ1NPaERUdnMlMkZhRmc2
elJsYzdGM1glMkJOa2Y2R3VHTUdYSSUzRCZhbXA7cmVzZXJ2ZWQ9MD8NCg0KSG93IGRvIEkgZmlu
ZCBzb21ldGhpbmcgaW4gdGhlcmU/IElzIHRoZXJlIGEgc2VhcmNoIGZ1bmN0aW9uIG92ZXIgYWxs
IA0KdGhlIHRlc3QgcmVzdWx0cz8NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IENoZWVy
cywgRGFuaWVsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
