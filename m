Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4D358C76D
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 13:22:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6314947F53
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Aug 2022 11:22:15 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2059.outbound.protection.outlook.com [40.107.94.59])
	by lists.linaro.org (Postfix) with ESMTPS id 0E9A0402D3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Aug 2022 11:22:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CEurGpclVMR1f+mdjHzrQ3Xbl547aoYf79C/WSAlbITN1R29tnTdNTOwhl0yVV95Cmx5DdfFk0BB4kP/au9Kqucyf/ZUXUPTktg0TgCe5o0++1O5awLG8l3rsd75sGRyh71hIvVO0ckZ7APTWFs+52ZrBtb51E+SvZkSGw1zAgc33yNITpV1fIBzjnuk4RPPio/ujt9LrdYkz5jg5IPp59wxeYWTf+G4+vVTgchEU1G6FnxwudJ+Hh+jKa4V/qlLKa+fSuLHfYxui2fNLzTJgPHVmtZlSj7SXhdr0vMm4Hiyf3/vm7PNCSahR3wseTagbjgDn7lwbtUyn1xQaYRJ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N1pYY4L4lxeqK+M8JVfyILMs+mNm/4PFxSEZhbnyBWg=;
 b=REWcTixEJapObYhz9R5usXJ3VgmUhFcib0OUyk9rsFtOj8yDDLi6yaGkT4EAZYSMs2wOnq31hdtuxPZoBo399DoJwNLD/mLKDGanabEQyMsSgMmLnTS+eadrAdfZA6eSrsZTj+YWmwKQ09KKigicG1tEG4E0UDkU+rZytRwbx00hFhzOD7Oir/fBbU9RkyuZv/p3xBFxpB7aOo0uSlPBT5D+6VxGeBagCyKJRJoIHFdbNhoF1qAS8SUmSjJjVwckp4ZXYkjCpPxhR3SYTY31/VIpPZ62SeHnfCsW4KwvQeQsQVPmD4IacVLALo/3PYCLEU09lswSsrDxFG+FpDp8lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N1pYY4L4lxeqK+M8JVfyILMs+mNm/4PFxSEZhbnyBWg=;
 b=JvPAmtlIQNvHdR1JtNEoNHe8VRfxP7uaLtw5e+Smu1j3v+YWyCwuPjI4zAAbRS7zXwZUjVuSUOI7s/CX/GPuA7j+P9P88stbKZVBwjziNIWBlx8drLbJ6fG9n4NC9NhurId2iZIoGanDB9uyaEuJDGsN8aHi1FlexyubIB04iHw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by BN7PR12MB2836.namprd12.prod.outlook.com (2603:10b6:408:32::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Mon, 8 Aug
 2022 11:22:10 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 11:22:10 +0000
Message-ID: <e90caaaa-cae9-c6d1-bfb6-dc56aa559681@amd.com>
Date: Mon, 8 Aug 2022 13:22:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
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
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGsoYaXe2+qug_TfT99KXuXh9Ez2L2HjQZroE6c6GSW4SQ@mail.gmail.com>
X-ClientProxiedBy: FR0P281CA0008.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a0dc593-2441-4ce0-305c-08da79303c22
X-MS-TrafficTypeDiagnostic: BN7PR12MB2836:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FRuzS8RIIomTQ7ecKyK4TFQU+sqedQxKNQlQXRyMrgcSGFYNvVUQHe4AnY4v52iG5S95WYCIGOSqGiWZX8+vIr1aBXJtOwo3rzU94DaqIOy6R/34ehJ6CyiL6kdnqGb7NW4TUncUwP6oczkq6/Sollx4/jU2AY+nf5NfQ7dSKsLlN4TxL2bmjZxQolYH+aWrtDHd6EleNsfvMbPhnkr4/evCq+4GV5ny916qB97FNsJZIT5YoxQHUt5HNoe6qlb6WBWVYuhd5Jz0i7+E3snHpJb4cfM7fnASRt5TWzjIdkZpMHKI8CZw4IOxj4zGka+CfanmwRzaiGENin9124FdBoiOFgj26Ah6D0LC3+l5Guf86HmEp8tCdnEO8uJ1I+j4Qcf6Y2eDt93cPs2SPyrYf5kDPAyKhR27qLkrp5NXi0ej+W0l/uhEyuCz2ifsvtNdSlQLf81SXzgbFCUf4llv7IRWnKaYgEDXm1Ki6L9aGyCwC9zBT32hxbtHEvvi2BrQkY5JuGCv7D/it+7s48v8GCNZP3WnHUL8XsRfgyhIHm049ElSViayQwG0p2TuV0XhQXfAu6Nq0DMd2d1imp3AiZt/Rbw9IDXG2ZhVHmZ0cFPVMsjliiTkGsW8tvMi9xfhJnkfN5tKv258B1Wxl0o0Wb1bf8BzCPz3EAfOFN+kSVJJgHx3vLAJkZOCCazcQ1zxaWza2ctNRUWh7Y5jDknPJhgLmuBXcy+iX//yWgw/9PEfDBEMeJOEEqNnk0TpV/DKOPk8qxxvMTPOQZZyM7MHPdElFvr2o05AC1OkTO6HEVgZ6OwwNmAcbgcN2mT174TqU/d9c1KA40GRyVSGZ8HPnGWg8cp3qXksehQ4GT7I+j4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(39860400002)(396003)(366004)(346002)(136003)(7416002)(966005)(38100700002)(6486002)(5660300002)(8936002)(53546011)(186003)(66574015)(6506007)(6512007)(86362001)(31696002)(83380400001)(478600001)(2616005)(6666004)(2906002)(45080400002)(316002)(66556008)(41300700001)(66476007)(31686004)(66946007)(36756003)(8676002)(4326008)(110136005)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OWtsK1RPbVFQRHdpZEEyZWZWTVEzcW1KY0d5L0pXd3BTZkNuWlIrbkJUdU5I?=
 =?utf-8?B?WWFBc2hVVnM2ZVBVWWtTNHVZQWw5Ymp5OWROY2M5bVh4TjVLQkgzcHp5T3hN?=
 =?utf-8?B?WG40R0p3R3lKVjRGbjAwdnFnOXFwTVRFa1FvMXArZGV3MUNmbkp2YnRLNWZL?=
 =?utf-8?B?RHc5Z2lROGUyTHdYZEh4ZmRyVlpDN1lPME9MZW9lV3lQQTFzZ3dWSHIrWits?=
 =?utf-8?B?QWZrb3BLakNRWVljaTVZOE1yR0dlK2NjZE1oVm1XMFN5L0JGTTEwUFNrajRk?=
 =?utf-8?B?ajJBSFZ3aEZRdG8zQXpDQU9Mc3kxcWsrNFZKQmpzVlMzcVRMNE1tQWVGdkdj?=
 =?utf-8?B?amN4VUpQbldJNW5jN1cvSFJDcmhXbmtNbjlZWmMyc09IOGFpZ2xnamNKemNE?=
 =?utf-8?B?ZTFnd1B5Nmxmak5Tb2h3TzhZUkpVMGFWZDA0VmR1Sy8wb2c2aTEwRjROSnJy?=
 =?utf-8?B?ZStMc3QrWU1OYlRnR2NjaFFlU2dLRjY1YlRmYklXVEpvRDRxS3J1NHZEeERq?=
 =?utf-8?B?YUhzVklnU1lTQVlaYy90cjhsNEJkWjBiOFhFNkExNjlmdmZ5OG5LVDR4V0Fw?=
 =?utf-8?B?Rmh4am0rZm9sV3cvV2UzYlEyZ3FFQVdyUTF1QXI3WDBCVU1lN2FXUTZ5ZHlR?=
 =?utf-8?B?Unl6Z3lld2xmeXFRaHBwSFh4ckNCMW9uKzlhenpCcDZ0aWR3dUxsYkhjYW9L?=
 =?utf-8?B?MTQxN1gyQXZHRGprZUtJdmFnTXRuamxmVVNZelU2VGZ0QTFtM3hjbGNUUWZt?=
 =?utf-8?B?QlJsZlcreXhkcGRGT291cmNoN0FOeHRnWnVMOU9oK0NYOHVTUU0rU0pKRDdt?=
 =?utf-8?B?a2Q5UXJWaGhmalpIak03c2pOYVZkVTBaTy9EOEN3aVVNNklwckpTeHAzTDdE?=
 =?utf-8?B?TitBUGdVaVdkZ0RxeXkzWDlJZGd4TnFGTzhHQ3NUOVhCVnh2R3NkZU1FOFF1?=
 =?utf-8?B?eExDdTNXYjRJaXZSejU5NEpINU9qank3QWgwR25oVXdKMnFVWGdvUXV0OWE5?=
 =?utf-8?B?NTVkNlRFSXBVWkdhSnMySGlpd3JSR3NUbDlCanpaQmpZMGxvc1NVelNmVFl4?=
 =?utf-8?B?UklRcnlaUVFBTHVOdXhVS2Vaa240ZHpPdTc1WkFyN2lWdWs2VEJhcHQ0QWpR?=
 =?utf-8?B?aFIrNUZKMEo0L01VclBRd3htRmtlOEZsZXRnU3RaVUhCMGt1Wm5KTm9CVnNP?=
 =?utf-8?B?S3AxZ2FRQjVPWEI5TzkzejhiVWw5OG45RWt4S0I5eDg0VHRoMnVYUkllZkpq?=
 =?utf-8?B?VDdMTklWTDI1Z2srb0MvbGs2MXJwYTVmSk1oVlQ3S0M4bkw5QzdQdXRDRVhi?=
 =?utf-8?B?MFJGd3NrQmJidENkZ2IrLzRtQmQ4WWlncmlzTGVTNGNyaW1ST0RxSndRd0RW?=
 =?utf-8?B?Zm1tQVBtR0x0Q2Z3NGNVSkN5eUUrYUIyOGJJN3RLb1c1RnJzOGNPZk1UV0ZL?=
 =?utf-8?B?bWxJdHlqQVI3WjhDTFNNYjhtRTJnL0FBYzBDeERzaWF1MVEwTDBBZnVCMW5O?=
 =?utf-8?B?NHZLUFA5NVNxMm9aL3JIQkU2ZlV0cHZKbmQ2NmJhYlFlbUQxakduSThpV2NM?=
 =?utf-8?B?T1ZMTnNyWDZFdkp6N2k4MCszczB0blNVeEZhSVJPbDhQZUtuRkZickpZa0xx?=
 =?utf-8?B?Nm5SN2duQWpBYWNQd3JqUFppVXA4Vkl5ZWxqNVprdFk0bUloNlExVXg4bjdU?=
 =?utf-8?B?Z29vVDhUY2xWWWhKTXF6V0ZXZEkwS1crUjBZdGVpOGtvY3RtZXgxajljeWF0?=
 =?utf-8?B?aEg2anFwb0FXK0NqSGc0Wm5yRU9NQ3VjK1BKRkZvRjdWMHNLbnNTUHdNeFJV?=
 =?utf-8?B?amdUMU9DQ3JWL084eDJhQ0lodGNlUEV2Q2N4ZnVSclZGcUtuaXdURTducnZx?=
 =?utf-8?B?NTRiTzdyZjFqZnVXYU00VjhzbThjREFObEkvOEJOdmNVS1pia3JQY2J4WGJa?=
 =?utf-8?B?S3lEQUF6TTdJZU0rUFB3YnAwREx1ZnhYODJGdjZkbWNROElOd0VZQ1piM3Bn?=
 =?utf-8?B?Y3RweHpMWlJKeUd0TjF0OWVKM2habkhjdktMUCtJTlVKVFloUk5GaXhLekJu?=
 =?utf-8?B?TGJyRk5jN2s0UlhjQXVJaS9IbE9sRUNjM1hteERLNTMwdzBSSkhKeUs5ZDJC?=
 =?utf-8?B?K1BYRlY0NzhsOFVzSmNoQjRWQUd0NGJlMU9SZC9xejhWWDRnYk1vbEMybVRJ?=
 =?utf-8?Q?ySkCAu0IcpbOq+I0/3h9JvumiZKqUA2nV24hCeHgki2l?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a0dc593-2441-4ce0-305c-08da79303c22
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 11:22:10.1861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dGmu1rm43Ddd2kR/Ugy+qnzRg+rYMaRSW+WQMRTAlB+0Xq0h8dbXdL0hsn2WP9wb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR12MB2836
Message-ID-Hash: SP6FDQE7ZHOSRA7FO7ZCV3WJNKXP5LTH
X-Message-ID-Hash: SP6FDQE7ZHOSRA7FO7ZCV3WJNKXP5LTH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: Add ioctl to query mmap info
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SP6FDQE7ZHOSRA7FO7ZCV3WJNKXP5LTH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDguMjIgdW0gMjE6MTAgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFN1biwgQXVnIDcs
IDIwMjIgYXQgMTE6MDUgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2tvZW5pZy5sZWljaHR6dW1l
cmtlbkBnbWFpbC5jb20+IHdyb3RlOg0KPj4gQW0gMDcuMDguMjIgdW0gMTk6NTYgc2NocmllYiBS
b2IgQ2xhcms6DQo+Pj4gT24gU3VuLCBBdWcgNywgMjAyMiBhdCAxMDozOCBBTSBDaHJpc3RpYW4g
S8O2bmlnDQo+Pj4gPGNrb2VuaWcubGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToNCj4+
Pj4gW1NOSVBdDQo+Pj4+IEFuZCBleGFjdGx5IHRoYXQgd2FzIGRlY2xhcmVkIGNvbXBsZXRlbHkg
aWxsZWdhbCB0aGUgbGFzdCB0aW1lIGl0IGNhbWUNCj4+Pj4gdXAgb24gdGhlIG1haWxpbmcgbGlz
dC4NCj4+Pj4NCj4+Pj4gRGFuaWVsIGltcGxlbWVudGVkIGEgd2hvbGUgYnVuY2ggb2YgcGF0Y2hl
cyBpbnRvIHRoZSBETUEtYnVmIGxheWVyIHRvDQo+Pj4+IG1ha2UgaXQgaW1wb3NzaWJsZSBmb3Ig
S1ZNIHRvIGRvIHRoaXMuDQo+Pj4gVGhpcyBpc3N1ZSBpc24ndCByZWFsbHkgd2l0aCBLVk0sIGl0
IGlzIG5vdCBtYWtpbmcgYW55IENQVSBtYXBwaW5ncw0KPj4+IGl0c2VsZi4gIEtWTSBpcyBqdXN0
IG1ha2luZyB0aGUgcGFnZXMgYXZhaWxhYmxlIHRvIHRoZSBndWVzdC4NCj4+IFdlbGwgSSBjYW4g
b25seSByZXBlYXQgbXlzZWxmOiBUaGlzIGlzIHN0cmljdGx5IGlsbGVnYWwuDQo+Pg0KPj4gUGxl
YXNlIHRyeSB0aGlzIGFwcHJvYWNoIHdpdGggQ09ORklHX0RNQUJVRl9ERUJVRyBzZXQuIEknbSBw
cmV0dHkgc3VyZQ0KPj4geW91IHdpbGwgaW1tZWRpYXRlbHkgcnVuIGludG8gYSBjcmFzaC4NCj4+
DQo+PiBTZWUgdGhpcyBoZXJlIGFzIHdlbGwNCj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmVsaXhpci5ib290bGluLmNv
bSUyRmxpbnV4JTJGdjUuMTklMkZzb3VyY2UlMkZkcml2ZXJzJTJGZG1hLWJ1ZiUyRmRtYS1idWYu
YyUyM0w2NTMmYW1wO2RhdGE9MDUlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdD
YzEzOTJmNzY5OTRmNGZlZjdjN2YwOGRhNzhhODYyODMlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4
MmQ5OTRlMTgzZCU3QzAlN0MwJTdDNjM3OTU0OTYxODkyOTk2NzcwJTdDVW5rbm93biU3Q1RXRnBi
R1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFX
d2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAlN0MlN0MlN0MmYW1wO3NkYXRhPVQzZzlJQ1ppekNXWGtJ
bjV2RW5oRllzMzhVajM3akN3SGpNYjFzM1V0T3clM0QmYW1wO3Jlc2VydmVkPTANCj4+DQo+PiBE
YW5pZWwgaW50ZW50aW9uYWxseSBhZGRlZCBjb2RlIHRvIG1hbmdsZSB0aGUgcGFnZSBwb2ludGVy
cyB0byBtYWtlIGl0DQo+PiBpbXBvc3NpYmxlIGZvciBLVk0gdG8gZG8gdGhpcy4NCj4gSSBkb24n
dCBiZWxpZXZlIEtWTSBpcyB1c2luZyB0aGUgc2cgdGFibGUsIHNvIHRoaXMgaXNuJ3QgZ29pbmcg
dG8gc3RvcA0KPiBhbnl0aGluZyA7LSkNCg0KVGhlbiBJIGhhdmUgbm8gaWRlYSBob3cgS1ZNIGFj
dHVhbGx5IHdvcmtzLiBDYW4geW91IHBsZWFzZSBicmllZmx5IA0KZGVzY3JpYmUgdGhhdD8NCg0K
Pj4gSWYgdGhlIHZpcnRpby92aXJ0Z3B1IFVBUEkgd2FzIGJ1aWxkIGFyb3VuZCB0aGUgaWRlYSB0
aGF0IHRoaXMgaXMNCj4+IHBvc3NpYmxlIHRoZW4gaXQgaXMgbW9zdCBsaWtlbHkgZnVuZGFtZW50
YWwgYnJva2VuLg0KPiBIb3cgZWxzZSBjYW4geW91IGVudmlzaW9uIG1tYXAnaW5nIHRvIGd1ZXN0
IHVzZXJzcGFjZSB3b3JraW5nPw0KDQpXZWxsIGxvbmcgc3Rvcnkgc2hvcnQ6IFlvdSBjYW4ndC4N
Cg0KU2VlIHVzZXJzcGFjZSBtYXBwaW5ncyBhcmUgbm90IHBlcnNpc3RlbnQsIGJ1dCByYXRoZXIg
ZmF1bHRlZCBpbiBvbiANCmRlbWFuZC4gVGhlIGV4cG9ydGVyIGlzIHJlc3BvbnNpYmxlIGZvciBz
ZXR0aW5nIHRob3NlIHVwIHRvIGJlIGFibGUgdG8gDQphZGQgcmV2ZXJzZSB0cmFja2luZyBhbmQg
c28gY2FuIGludmFsaWRhdGUgdGhvc2UgbWFwcGluZ3Mgd2hlbiB0aGUgDQpiYWNraW5nIHN0b3Jl
IGNoYW5nZXMuDQoNCj4gVGhlIGd1ZXN0IGtlcm5lbCBpcyB0aGUgb25lIHRoYXQgY29udHJvbHMg
dGhlIGd1ZXN0IHVzZXJzcGFjZSBwYWdldGFibGVzLA0KPiBub3QgdGhlIGhvc3Qga2VybmVsLiAg
SSBndWVzcyB5b3VyIGNvbXBsYWludCBpcyBhYm91dCBWTXMgaW4gZ2VuZXJhbCwNCj4gYnV0IHVu
Zm9ydHVuYXRlbHkgSSBkb24ndCB0aGluayB5b3UnbGwgY29udmluY2UgdGhlIHJlc3Qgb2YgdGhl
DQo+IGluZHVzdHJ5IHRvIGFiYW5kb24gVk1zIDstKQ0KDQpJJ20gbm90IGFyZ3VpbmcgYWdhaW5z
dCB0aGUgdXNlZnVsbmVzcyBvZiBWTSwgaXQncyBqdXN0IHRoYXQgd2hhdCB5b3UgDQpkZXNjcmli
ZSBoZXJlIHRlY2huaWNhbGx5IGlzIGp1c3QgdXR0ZXJseSBub25zZW5zZSBhcyBmYXIgYXMgSSBj
YW4gdGVsbC4NCg0KSSBoYXZlIHRvIGNvbmZlc3MgdGhhdCBJJ20gdG90YWxseSBsYWNraW5nIGhv
dyB0aGlzIEtWTSBtYXBwaW5nIHdvcmtzLCANCmJ1dCB3aGVuIHRoZSBzdHJ1Y3QgcGFnZXMgcG9p
bnRlcnMgZnJvbSB0aGUgc2dfdGFibGUgYXJlIG5vdCB1c2VkIEkgc2VlIA0KdHdvIHBvc3NpYmls
aXRpZXMgd2hhdCB3YXMgaW1wbGVtZW50ZWQgaGVyZToNCg0KMS4gS1ZNIGlzIHNvbWVob3cgd2Fs
a2luZyB0aGUgcGFnZSB0YWJsZXMgdG8gZmlndXJlIG91dCB3aGF0IHRvIG1hcCBpbnRvIA0KdGhl
IGd1ZXN0IFZNLg0KDQogwqDCoMKgIFRoaXMgd291bGQgYmUgKkhJR0hMWSogaWxsZWdhbCBhbmQg
bm90IGp1c3Qgd2l0aCBETUEtYnVmLCBidXQgd2l0aCANCnByZXR0eSBtdWNoIGEgd2hvbGUgYnVu
Y2ggb2Ygb3RoZXIgZHJpdmVycy9zdWJzeXN0ZW1zIGFzIHdlbGwuDQogwqDCoMKgIEluIG90aGVy
IHdvcmRzIGl0IHdvdWxkIGJlIHRyaXZpYWwgZm9yIHRoZSBndWVzdCB0byB0YWtlIG92ZXIgdGhl
IA0KaG9zdCB3aXRoIHRoYXQgYmVjYXVzZSBpdCBkb2Vzbid0IHRha2UgaW50byBhY2NvdW50IHRo
YXQgdGhlIHVuZGVybHlpbmcgDQpiYWNraW5nIHN0b3JlIG9mIERNQS1idWYgYW5kIG90aGVyIG1t
YXBlZCgpIGFyZWFzIGNhbiBjaGFuZ2UgYXQgYW55IHRpbWUuDQoNCjIuIFRoZSBndWVzdCBWTSB0
cmlnZ2VycyB0aGUgZmF1bHQgaGFuZGxlciBmb3IgdGhlIG1hcHBpbmdzIHRvIGZpbGwgaW4gDQp0
aGVpciBwYWdlIHRhYmxlcyBvbiBkZW1hbmQuDQoNCiDCoMKgwqAgVGhhdCB3b3VsZCBhY3R1YWxs
eSB3b3JrIHdpdGggRE1BLWJ1ZiwgYnV0IHRoZW4gdGhlIGd1ZXN0IG5lZWRzIHRvIA0Kc29tZWhv
dyB1c2UgdGhlIGNhY2hpbmcgYXR0cmlidXRlcyBmcm9tIHRoZSBob3N0IHNpZGUgYW5kIG5vdCB1
c2UgaXQncyBvd24uDQogwqDCoMKgIEJlY2F1c2Ugb3RoZXJ3aXNlIHlvdSBjYW4ndCBhY2NvbW1v
ZGF0ZSB0aGF0IHRoZSBleHBvcnRlciBpcyANCmNoYW5naW5nIHRob3NlIGNhY2hpbmcgYXR0cmli
dXRlcy4NCg0KPiBCdXQgbW9yZSBzZXJpb3VzbHksIGxldCdzIHRha2UgYSBzdGVwIGJhY2sgaGVy
ZS4uIHdoYXQgc2NlbmFyaW9zIGFyZQ0KPiB5b3Ugc2VlaW5nIHRoaXMgYmVpbmcgcHJvYmxlbWF0
aWMgZm9yPyAgVGhlbiB3ZSBjYW4gc2VlIGhvdyB0byBjb21lIHVwDQo+IHdpdGggc29sdXRpb25z
LiAgVGhlIGN1cnJlbnQgc2l0dWF0aW9uIG9mIGhvc3QgdXNlcnNwYWNlIFZNTSBqdXN0DQo+IGd1
ZXNzaW5nIGlzbid0IGdyZWF0Lg0KDQpXZWxsICJpc24ndCBncmVhdCIgaXMgYSBjb21wbGV0ZSB1
bmRlcnN0YXRlbWVudC4gV2hlbiBLVk0vdmlydGlvL3ZpcnRncHUgDQppcyBkb2luZyB3aGF0IEkg
Z3Vlc3MgdGhleSBhcmUgZG9pbmcgaGVyZSB0aGVuIHRoYXQgaXMgYSByZWFsbHkgbWFqb3IgDQpz
ZWN1cml0eSBob2xlLg0KDQo+ICAgIEFuZCBzdGlja2luZyBvdXIgaGVhZHMgaW4gdGhlIHNhbmQg
YW5kDQo+IHByZXRlbmRpbmcgVk1zIGRvbid0IGV4aXN0IGlzbid0IGdyZWF0LiAgU28gd2hhdCBj
YW4gd2UgZG8/ICBJIGNhbg0KPiBpbnN0ZWFkIGFkZCBhIG1zbSBpb2N0bCB0byByZXR1cm4gdGhp
cyBpbmZvIGFuZCBzb2x2ZSB0aGUgcHJvYmxlbSBldmVuDQo+IG1vcmUgbmFycm93bHkgZm9yIGEg
c2luZ2xlIHBsYXRmb3JtLiAgQnV0IHRoZW4gdGhlIHByb2JsZW0gc3RpbGwNCj4gcmVtYWlucyBv
biBvdGhlciBwbGF0Zm9ybXMuDQoNCldlbGwgb25jZSBtb3JlOiBUaGlzIGlzICpub3QqIE1TTSBz
cGVjaWZpYywgeW91IGp1c3QgYWJzb2x1dGVseSAqY2FuJ3QgDQpkbyB0aGF0KiBmb3IgYW55IGRy
aXZlciENCg0KSSdtIGp1c3QgcmVhbGx5IHdvbmRlcmluZyB3aGF0IHRoZSBoZWNrIGlzIGdvaW5n
IG9uIGhlcmUsIGJlY2F1c2UgYWxsIG9mIA0KdGhpcyB3YXMgZGlzY3Vzc2VkIGluIGxlbmd0aHkg
YmVmb3JlIG9uIHRoZSBtYWlsaW5nIGxpc3QgYW5kIHZlcnkgDQpibHVudGx5IHJlamVjdGVkLg0K
DQpFaXRoZXIgSSdtIG1pc3Npbmcgc29tZXRoaW5nICh0aGF0J3MgY2VydGFpbmx5IHBvc3NpYmxl
KSBvciB3ZSBoYXZlIGEgDQpzdHJvbmcgY2FzZSBvZiBzb21lYm9keSBpbXBsZW1lbnRpbmcgc29t
ZXRoaW5nIHdpdGhvdXQgdGhpbmtpbmcgYWJvdXQgDQphbGwgdGhlIGNvbnNlcXVlbmNlcy4NCg0K
UmVnYXJkcywNCkNocmlzdGlhbi4NCg0KDQo+DQo+IFNsaWdodGx5IGltcGxpY2l0IGluIHRoaXMg
aXMgdGhhdCBtYXBwaW5nIGRtYS1idWZzIHRvIHRoZSBndWVzdCB3b24ndA0KPiB3b3JrIGZvciBh
bnl0aGluZyB0aGF0IHJlcXVpcmVzIERNQV9CVUZfSU9DVExfU1lOQyBmb3IgY29oZXJlbmN5Li4g
d2UNCj4gY291bGQgYWRkIGEgcG9zc2libGUgcmV0dXJuIHZhbHVlIGZvciBETUFfQlVGX0lORk9f
Vk1fUFJPVCBpbmRpY2F0aW5nDQo+IHRoYXQgdGhlIGJ1ZmZlciBkb2VzIG5vdCBzdXBwb3J0IG1h
cHBpbmcgdG8gZ3Vlc3Qgb3IgQ1BVIGFjY2Vzcw0KPiB3aXRob3V0IERNQV9CVUZfSU9DVExfU1lO
Qy4gIFRoZW4gYXQgbGVhc3QgdGhlIFZNTSBjYW4gZmFpbCBncmFjZWZ1bGx5DQo+IGluc3RlYWQg
b2Ygc3VidGx5Lg0KPg0KPiBCUiwNCj4gLVINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
