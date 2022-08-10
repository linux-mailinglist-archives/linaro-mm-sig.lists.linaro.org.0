Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 645FB58E962
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 11:16:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E525402CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Aug 2022 09:16:16 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2072.outbound.protection.outlook.com [40.107.223.72])
	by lists.linaro.org (Postfix) with ESMTPS id F2CE53ECD3
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Aug 2022 09:16:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=laboFJ4osRc5wPYQ6TBDLVZRPRu7N/nYCVFmh+XWULiwgq7zexDmuQ0P8daCIYPME5oNHxpF+zDwCOWiQ+LPnz8PWIvR7YOS8vIWo9lI1FEPcDPD/8QnxkUnUvmAPMa1aDDHx5JWL4jECmw8dpTAL6kpQ5KepOdm3FfeLFBrL8qMV9vjgJGdSM+mLbCUKEWkdDO8ArCbIk4nGpvhQns3TWMFeZneSdBot7OXLUpxXr3ZuxlIINeiACOswhQc9URysU5KlOtzvGJ6Mt5Y/CHmTVG/KPIwFeDTFBwVmUbTKYN3vKDkisl+hZmwAoarMOBDwBUcPCiQ30/io3rftKWzjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxVFw7YtuJBTatI3gxv1DGU5igV4Q6ihv/EYSepVzKY=;
 b=DuTlobUNbDIqrW9w7gOMc0Pbvm1qih3+IrCrH/f5qLeu3vhBL3HvMdM9SM2ELMxn6oWnyvBIK73bwg5qnyVu9DUAK22VlARRJsvNk72dqWL3fA4aJSCBSc+1IRqaHcos6I1DCpvBHDQ6XPAhXaONJbV5VP4XISKgUiyiWDlzG3RKzb3b9q3MKTfCB7TjPuZXkWR7yEnV45RpPk4LelPbDkxZQT6kjHSV9OjCieahifpuykRPq3p4ziqht7aP6NjSyHRFPYFFIcuP697F9+pQ5de1uGHjvJvn44wAU1VJBisk6f6Jn4gAR9WFKHVkh5xIWPRAIKvEKx9j4VqCrwoHIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wxVFw7YtuJBTatI3gxv1DGU5igV4Q6ihv/EYSepVzKY=;
 b=PKvFuKEqV7csRH1l+B7ZWzcyvWSmRUY3I92LhnCSyf2iEwPqSjumagDCY8xd4/CWCGJvrxvIu0qQwWbl3FoQJudd/HnwItAQfuxLmGLBToEi1CwvKOp2w6lrTSAgW13k3XMAamdo9Nt3hQcVdEih4dObjkRkfg2Pd3wPrqH2RIM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SA0PR12MB4384.namprd12.prod.outlook.com (2603:10b6:806:9f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 10 Aug
 2022 09:16:12 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::905:1701:3b51:7e39%2]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 09:16:12 +0000
Message-ID: <509d8bb0-f030-f8ca-a610-da5faaa6396b@amd.com>
Date: Wed, 10 Aug 2022 11:16:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Chen Jeffy <jeffy.chen@rock-chips.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20220803083237.3701-1-jeffy.chen@rock-chips.com>
 <c7cb225b-7f21-8d9a-773b-efc655e6332c@amd.com>
 <7cd16264-fa84-7b50-f3ed-64f7f22dcef2@rock-chips.com>
 <64bf4e4b-4e22-0ff0-5f92-76f603c04ec0@amd.com>
 <cd806954-e94e-aec8-2b0c-4047da9a92ec@rock-chips.com>
 <0e284f57-e03c-f128-f6e7-52a58edbcd54@amd.com>
 <71e47fe6-440b-e9ea-cd66-8362c41428ca@amd.com>
 <6b3e82f9-6902-fd5c-c67d-e2c42c995133@rock-chips.com>
 <cb478ae3-a6c6-ea90-a47c-13d52b606942@amd.com>
 <05488346-ebbd-b1d9-4094-a83daf65f6db@rock-chips.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <05488346-ebbd-b1d9-4094-a83daf65f6db@rock-chips.com>
X-ClientProxiedBy: AM5PR04CA0010.eurprd04.prod.outlook.com
 (2603:10a6:206:1::23) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 52030c85-59b8-44cc-87d8-08da7ab0f811
X-MS-TrafficTypeDiagnostic: SA0PR12MB4384:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gD6Yk0JDlK2RhJdxilWVTj6ciSLnMyPUsCQkHgZ2toZzhKLg5qnrHws8D3aidP35Onosduk8XKr0gH3wEDjAl/TYurN9PvkUu/wlXybqNCDcG4G/GjhG/4xedWOg8zx78T+j4YwG0BJWqHMAewAYzaV9qWymzoVD0SsIvEEiOOj1G7OHkOmjoboPkosuWGdbxebH0XSXSGbMDdYOZ80u4xwjJtWp866sBtxCp7fNKusPG/chN0NVbuNUM/b4v2Z/AvA0yWA3QquHNoTD6ory215OWigb7sAR9d+/fUwW8+0BGLuqH/Va2Iuk4WHw/PnETv7QTDRU1A6+ZKP00YhncvQ6HW62T8dYTaZIoHE/lKaYv4oJg+KEPasn5dUa9bDC8JzZKrUiY8nfSwR4f6ieelcSo9Z4uzTwPhwLLCvYgd2vM9Xyxp6UDIhUPzV+Gy2ZRFZhLKB/wpW08Zpvl0EGZSEEadJY0HIU5LaSSxLiUXFtSuOPKWAjLaUKKhwQ/BG3lgF1lJdWbGp2Tm8r6RvBvmCg3d0ohKDoomEFwS/UQ9IXoF9fbh/RDbHBV/huiMbNqLZAF357eWQCW+vfjHtXJAkFZNncCM2JqgjZTh47rDxv49dOjDMAWGkPXTPlMSzXVKpbjTVDW0nzgKb9uSuIdhLKrF1lWbz64NMw1qLkOX/PjahFobliNg2vYUc2rqdgGNfqKsRT0c8OovLL4uM95BGwfxXnugW9t2AEK0ycDHbyp08EJ0zG7aVzD0o1dh8gMAV5YbDUQNJFZwTo7Bua19+zIeJ43TEZJbVu5cv7JtN3F4qKJNWG72FPlvvr+/55X3ocvCsj2HOsazTW308WXA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(8676002)(66556008)(66476007)(66946007)(4326008)(54906003)(316002)(110136005)(31696002)(86362001)(186003)(5660300002)(2616005)(7416002)(8936002)(83380400001)(66574015)(6506007)(2906002)(6666004)(6512007)(38100700002)(6486002)(478600001)(41300700001)(31686004)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q1haa25DNFVHK05EZGtkL1pUcHBvc3hRVWY5QjM4SjFKbzJ5OXg2aTlUcFFh?=
 =?utf-8?B?OGhSVHpOdk93L1hHbE92NHdvQjdrRXBxckQrUVEwTG9ZQUloTXlhYWNCdVgw?=
 =?utf-8?B?Yjg3K1NOb29JOWVQdUNWMzRET0NNZE5iQlE5d1FES0JSb3NwM0dYVEFrNjZS?=
 =?utf-8?B?OGZsaHIvRW9XTDdYZFExT05TUGJ2anZpM3VkZEtYUDZCT0hKV2NseHBxb3Vq?=
 =?utf-8?B?TkI1dU1nRkpzSmdOV2pmQlYxc3lYbTF6TEhoZTNIUWljSGwxK2E3YmYxTno3?=
 =?utf-8?B?aGxrSlZEcDVZMUlDeDl2L0xQaTA1U3NXVDNIUHR6aE9PZlU1S0l5ZjhYZ1k1?=
 =?utf-8?B?L0xLYzBUTm00ajM1OGNUaFNJSTZqajhpRCtEL05TTjk1RVp1cDZ4SDdmakFp?=
 =?utf-8?B?VkFGcVpOelp1eGM3b0JlekpSUFd2czJITThjbDk0Qyt4VW9Nd2tpSmUxZmZz?=
 =?utf-8?B?dzJ6enJGZWl1eVNCMDUzcUdLQUZ2eTBpU0d2WFYxbFNWSDVCaXZ1QnFmc2F5?=
 =?utf-8?B?RUxZcmRpRUk0ZU9zeXByYUtjSUZXNlhKZUMxUHpvQjUxMm9BeHVTRjgrMkF1?=
 =?utf-8?B?cVFWRWM4U1lHMklDOTBvS05BU3dRRlQwckwxaVpEWHJYRWtUc3V3OURVQjk2?=
 =?utf-8?B?ZzBSNW5DbDROQ0F6MnJ4YTNERlgxUG5lVmRaamhpVFo4YmlpUWZDK2VtbE15?=
 =?utf-8?B?MTR2ZGRwbGhpNFJJRmxoZjJXUkhrK3NRWHZEd1JPUEZFMC91VmhoaXF6Z1Zj?=
 =?utf-8?B?alplOHJLcnNVbTR0ZG42OS9Zc1FxTHY1MUtWUEhVUDdhY09JT080bTdZc2E1?=
 =?utf-8?B?YVZLaENlWjRNdEJqZmlTK3IzOEVEMDFxOEU1TG9WYXJ4QVcrRFBSa3VMZktK?=
 =?utf-8?B?OE1nZHorL0s3Y09sZkhGZ2h0VXFCbTN6MFVWREtTeVRBbThBMnoza05EUUo3?=
 =?utf-8?B?ME9GcC9uUTNtNm9WNkQrWVRZWU9GeVQzeVZhTnoyR2ZtTks0aVprT2trOEhD?=
 =?utf-8?B?R2VMM3NERXBLUEdPRHMycXRLRjdkUEF5U1BDdGVRSVFGZVJ6RGhRQit5cHcw?=
 =?utf-8?B?VXVrRVdmZlpGWFZRYkYzQVowa2x3ZkFiMlNFbDk4MlU0ZVQ0WGQxTHNDbWI5?=
 =?utf-8?B?ZmQ2cENQVWwwSXNpNXNLZ2VVNXg5dElxN0FrbFBFcXFFODdPUlQrZE5adFdj?=
 =?utf-8?B?VzFtcGhSZ2ppcEVRdHc1OWVFR1BvWXB2bzBhNDJlaFJobEpBMXl5ODN0VXY2?=
 =?utf-8?B?WlNaQ0pkTUtSR3NWSkhKeUk4a2k1NWlBaFJ2azhZa3ZMejIwN04vZGRJR0tH?=
 =?utf-8?B?UzFkblhMU3dOUTdUaTU4NnlldmlvRW9HK0FrVkNiOWp0U1Q0Rkk4QlFYazVC?=
 =?utf-8?B?MWE1UmFWWnFCYXdxNG5WcW8rTEFMeGdZN2FOZWF2MFJabnBXNWF6N1Juc1Ew?=
 =?utf-8?B?R0tOY055YUl2WmUrVk9Ibm5ERldDK2xtaFJrdzFDMm5tRVpjeDRFaEtOdXdo?=
 =?utf-8?B?c0hWWTFQUWsxaE1VYllmL1prZ0djM2FxalBxVUNRUkE4NWFnUjlmV1RRemo3?=
 =?utf-8?B?VW54WEFONDhlbWd2a1M4NGFDMzkzcXJBSzIxQ0sydUREc29hdWVVTmI0RCtP?=
 =?utf-8?B?Ukp1TnhNRVNOaEZvVk5hOU1OUlcyWnR3dzJUL1U3Nm82ZjlnUC9rbUFRWDRr?=
 =?utf-8?B?d283RHlNUDFTaFROR0ZBNG80TkZPVi9QOHRlOHlqMTAzT3IraEwycmNCT3lw?=
 =?utf-8?B?MVhQNU5KamxKNzJhNlFkNFBUZTZEM0lDRHI5NWduRngzR0tjS1Avb29saGQ5?=
 =?utf-8?B?TkQrNGFjRDd3ZHpSV2lOMHpRay8veTY3MG9jbzN3RFI1eG5HTVp3ZG51V3lG?=
 =?utf-8?B?WUxzRHFwRFhOaUZ4Q0tQbm9Od0MwMXhwc1lraGVhdVBRWmlEMytySGVjcys2?=
 =?utf-8?B?UWR0QWtVdkhHMlQxcjJaTW1FNVV3MDI1dS85MjhXRytRdVYvU05sRnRRZVRm?=
 =?utf-8?B?Y2p1bXNVMVIyU2ZaRjJxSHBTcXpvSFZIWFhLT2RWWGk0RE5HMGRKR0VKemh6?=
 =?utf-8?B?OXF1U2VFQVpOLys2V1ozSExRbndEblR0RGFFTlRsQkhIckQ3NnVOT0Y2MWU1?=
 =?utf-8?B?TDdPUCtINDVBcWZrMUs1TkFpRkM3N3ZIaEpoK2hBRDdvbXluUlR3RWtQYnE5?=
 =?utf-8?Q?J0K1BZ1Db2BHRWUXzut83Em4a2CnIQtKerFZl/TcGhHg?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52030c85-59b8-44cc-87d8-08da7ab0f811
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 09:16:12.1702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Rs0hKe8XEnGKBG6umyP4/JRcI65vnFRBycj4btpG2R0AunI8LSGuZ1nAy8Z91ry
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR12MB4384
Message-ID-Hash: GI7AEJWUS67W5K7AP26DGZC6RG6LXUDF
X-Message-ID-Hash: GI7AEJWUS67W5K7AP26DGZC6RG6LXUDF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andy Yan <andy.yan@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, David Airlie <airlied@linux.ie>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/gem: Fix GEM handle release errors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GI7AEJWUS67W5K7AP26DGZC6RG6LXUDF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgSmVmZnksDQoNCkFtIDEwLjA4LjIyIHVtIDA2OjE2IHNjaHJpZWIgQ2hlbiBKZWZmeToNCj4g
SGkgQ2hyaXN0aWFuLA0KPg0KPiBPbiA4Lzkg5pif5pyf5LqMIDE4OjE4LCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPj4gSGkgSmVmZnksDQo+PiBbU05JUF0NCj4+PiBNYXliZSBjYWNoZSB0aGUg
bGF0ZXN0IHJldHVybmVkIGhhbmRsZSBpbiB0aGUgb2JqKGFmdGVyIA0KPj4+IGRybV9nZW1fcHJp
bWVfZmRfdG9faGFuZGxlKSwgYW5kIGNsZWFyIGl0IHdoZW4gdGhhdCBoYW5kbGUgYmVlbiANCj4+
PiBkZWxldGVkIGluIGRybV9nZW1faGFuZGxlX2RlbGV0ZSgpPw0KPj4NCj4+IFRoYXQgd29uJ3Qg
d29yay4gVGhlIGhhbmRsZSBpcyBwZXIgZnByaXYsIGJ1dCB0aGUgc2FtZSBvYmplY3QgaXMgdXNl
ZCANCj4+IGJ5IG11bHRpcGxlIGZwcml2IGluc3RhbmNlcy4gPg0KPj4gV2hhdCB3ZSBjb3VsZCBt
YXliZSBkbyBpcyB0byBwcmV2ZW50IGFkZGluZyBtdWx0aXBsZSBsb2NrdXAgDQo+PiBzdHJ1Y3R1
cmVzIHdoZW4gdGhlcmUgaXMgYWxyZWFkeSBvbmUsIGJ1dCB0aGF0J3Mgbm90IHNvbWV0aGluZyBJ
IGNhbiANCj4+IGVhc2lseSBqdWRnZS4NCj4NCj4gU28gbWF5YmUgd2UgbmVlZCB0byBwcm90ZWN0
IHRoYXQgdW5pcXVlIGxvb2t1cCBzdHJ1Y3R1cmUgYmVlbiBkZWxldGVkIA0KPiBiZWZvcmUgZGVs
ZXRpbmcgdGhlIGxhc3QgaGFuZGxlLCBhbmQgbWFrZSB0aGUgaGFuZGxlIHVuaXF1ZSBmb3IgR0VN
IA0KPiBvYmosIGluIGNhc2Ugb2YgdGhhdCB1bmlxdWUgbG9va3VwJ3MgaGFuZGxlIGJlZW4gZGVs
ZXRlZCBlYXJsaWVyIHRoYXQgDQo+IG90aGVycz8NCj4NCj4gSG93IGFib3V0IGFkZGluZyBhIEdF
TSBvYmogcmJ0cmVlIHRvbywgYW5kIG1ha2UgZHJtX3ByaW1lX21lbWJlciBrcmVmLWVkPw0KPg0K
PiBTbyB0aGUgDQo+IGRybV9wcmltZV9hZGRfYnVmX2hhbmRsZS9kcm1fZ2VtX2hhbmRsZV9jcmVh
dGVfdGFpbC9kcm1fZ2VtX2hhbmRsZV9kZWxldGUgDQo+IHdvdWxkIGJlIGxvb2tpbmcgdXAgZHJt
X3ByaW1lX21lbWJlciBieSBHRU0gb2JqLCB0aGVuIHVwZGF0ZSBkbWFidWYgcmIgDQo+IGFuZCBp
bmMvZGVjIGRybV9wcmltZV9tZW1iZXIncyBrcmVmLCANCj4gZHJtX2dlbV9wcmltZV9mZF90b19o
YW5kbGUvZHJtX2dlbV9wcmltZV9oYW5kbGVfdG9fZmQgcmVtYWluIHVuY2hhbmdlZC4NCg0KSSB0
aGluayB3ZSBzaG91bGQgcHJvYmFibHkgY29tZSB1cCB3aXRoIGFuIGlkZWEgd2hhdCB0aGUgVUFQ
SSBzaG91bGQgDQpsb29rIGxpa2UgYmVmb3JlIHdlIHRyeSB0byBpbXBsZW1lbnQgdGhpcyBpbiB0
aGUga2VybmVsLCBidXQgaW4gZ2VuZXJhbCANCkkgdGhpbmsgd2Ugc2hvdWxkIG1ha2UgdGhlIHNv
bHV0aW9uIHNpbXBsZXIgYW5kIG5vdCBldmVuIG1vcmUgY29tcGxleC4NCg0KUmVjb3JkaW5nIG11
bHRpcGxlIGhhbmRsZXMgZm9yIHRoZSBzYW1lIERNQS1idWYvZnByaXYgY29tYmluYXRpb24gDQpk
b2Vzbid0IHNlZW0gdG8gbWFrZSBzZW5zZSwgc28gdGhlIGR1cGxpY2F0ZWQgdHJhY2tpbmcgb2Yg
DQpoYW5kbGUtPmRtYV9idWYgbWFwcGluZyBqdXN0IHNlZW1zIHRvIGJlIG92ZXJraWxsLg0KDQpT
byBteSBwcm9wb3NhbCB3b3VsZCBiZSB0aGlzOg0KMS4gT25seSB0aGUgZmlyc3QgdXNlZCBHRU0g
aGFuZGxlIGlzIHRyYWNrZXIgZm9yIGVhY2ggRE1BLWJ1Zi9mcHJpdiANCmNvbWJpbmF0aW9uLg0K
Mi4gSW1wb3J0cyBlaXRoZXIgcmV0dXJuIHRoaXMgZmlyc3QgdXNlZCBoYW5kbGUgb3IgYWxsb2Nh
dGUgYSBuZXcgb25lIGlmIA0KdGhlcmUgaXNuJ3QgYW55Lg0KMy4gSWYgdGhlIGZpcnN0IHVzZWQg
aGFuZGxlIGlzIGNsb3NlZCB3ZSBhbGxvY2F0ZSBhIG5ldyBvbmUgb24gcmUtaW1wb3J0IA0KZXZl
biB3aGVuIHRoZXJlIGR1cGxpY2F0ZSBoYW5kbGVzLg0KDQpUaGUgYWx0ZXJuYXRpdmUgYXMgd2Ug
aGF2ZSBpdCBub3cgaXMgdG8ganVzdCByZXR1cm4gYSBtb3JlIG9yIGxlc3MgDQpyYW5kb20gaGFu
ZGxlIGlmIHRoZXJlIGFyZSBkdXBsaWNhdGVzIHdoaWNoIGRvZXNuJ3Qgc291bmQgbGlrZSBzb21l
dGhpbmcgDQp3ZSB3b3VsZCB3YW50Lg0KDQpEYW5pZWwsIGNhbiB3ZSBhZ3JlZSBvbiB0aGF0Pw0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
