Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B29D3A4D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 11:23:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9645D3F79D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 10:23:03 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011009.outbound.protection.outlook.com [40.107.208.9])
	by lists.linaro.org (Postfix) with ESMTPS id 003A13F734
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 10:22:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=qqnqHDL6;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.208.9 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vdROaQleD0KEvunjJSuKbpwsYLCTuanX9YV7TCG3mvBGJ9g7OlxYAtJfGF4YQBR7WAXL9ChV4E5kLy7ECskhU+7WapgeytA2F3ZtLwrYuUvxP00HejJmigry9IRhqr8EklN0Fp2Hr+Dr+96oiOopsr7YmF4zWYa9U00VDxF/l8qXctQ/StaMfFN4lo6hIehogHXgEpmuLUgwIG2dA5pRw+EFuSnqkC//aj0WTsFCZN05lpx3MDnWTJzsc91ZH4qRagjfr+rnYV/gWwzlZ2rKCXdQo8ugiijP6w8J4Z+a2kYemV7KaMYmSreguEd7cHD0SfsL4jHXNf5V4cC9QoZKng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6f0bi+WdX4wdtHuX/LNM0yZrNF8c4JwZkycRzS94DQ8=;
 b=cDtFYliGXZBjst7Z7SD14FHTJ/3cC+wB1CrIWwy+R9spLOsPwlScKwFqVG4M8Pwx+S5QG3DmZM8oftG8nAanCPtsgxnZR9cm0u6Thla1k4PfrkEtn70eUOBhhBVWtfRNXcURPKOsqSghGx1t+LsTCiDPJgK74o0Q7ZmCU1czFMf0j7nVYej/52Cgh+RxmAmIESwyoeW5/f3BG5sdzFDMN1rdUVu2mdvd6t8y4I3EjeO1vbGA/z8AUG2fP34QmysI5H45ovIKbdWYPENQ385pwf4d+xuRVCYozFmLxlObjkJxe9XWkemYX1vfB321lVGhjVarQvS2NUSQtBUAcjsdqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6f0bi+WdX4wdtHuX/LNM0yZrNF8c4JwZkycRzS94DQ8=;
 b=qqnqHDL6FRISnCdYUo5XCvxlzBm7hKdcHv2aSs/FbaOzGNb21ohhBboFKxb5toefhw9IRK+n0w997EnecslyOwWAdNi67z9xFNIKBjhfnhgfMPrlaowxApYGF/aJUEaHsQEpzkie6c7qLZNeadIfp9t/YPlsz5uwHZacI/rSv68=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH8PR12MB9744.namprd12.prod.outlook.com (2603:10b6:610:27a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 10:22:55 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:22:55 +0000
Message-ID: <345b8dcb-5015-4801-b263-0dca4d1b3fca@amd.com>
Date: Mon, 19 Jan 2026 11:22:27 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Alex Williamson <alex@shazbot.org>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-1-a03bb27c0875@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260118-dmabuf-revoke-v2-1-a03bb27c0875@nvidia.com>
X-ClientProxiedBy: BN9PR03CA0402.namprd03.prod.outlook.com
 (2603:10b6:408:111::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH8PR12MB9744:EE_
X-MS-Office365-Filtering-Correlation-Id: 68f2964c-5061-4876-7ef6-08de5744b59e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MmVOZ3pCbERrQVhYVWtKVlltY01CUk5DOWtWYk91WEFrRkEyLzhFandwU3pj?=
 =?utf-8?B?NTNDUHhnZmttQVNZMWFMZHpISXk0bCtvTlpLcGdvUkNROFlOUGxITFZXM2ln?=
 =?utf-8?B?dWRPUEJ0aml3bnRqVzYvYkxLVVBEOEViOThKclVGSUtYaUMvTnJVWGdWQm44?=
 =?utf-8?B?Vlg0R2tSemZjRG1vWE1sRzFuODE1MDBGbVQ1UDcySnFlaU1sZTFyc2FLRDZY?=
 =?utf-8?B?NElXUkE1QlhHRlRZbE56SzVJOXRiZjNzeWJWOVBHNjFsRldzNWVzaU5tcXpr?=
 =?utf-8?B?VFg1Vy9tT1FPUUxNSXdDcFlGeHBzVXlubHM5ZjZDcWl2S3RMUXVIWGcxK01O?=
 =?utf-8?B?KzYwNW5sVmdreEVVdkx0SmJrS3AxVEk4blRlcUZHWTdsa2xycldUNkM3cHlu?=
 =?utf-8?B?eFpxREJmRDdFSVhrTEtJT1RLTkJ6TVVTVm9CdDVXOE92a00vcXg0TDZQYVdG?=
 =?utf-8?B?dzJIMEtydml1MEcxVlVvRVl1Q3VNL0FpaXpKWk9Wd1F0SzA5NTYwQlZxQ2dq?=
 =?utf-8?B?WUY4UHZVdWllVENGVUpNeGQyQWVOQzBWS1F1dkd5L1gvV0ZXdFJDbnVnRisw?=
 =?utf-8?B?UHk1TzRQbkxQTjkzakhjY250VFo2bG1jYndUaDAxWVBVQW12VmJOclpScjAy?=
 =?utf-8?B?aXpiYm5OMGwrbG03ZHBxTmU4K3ZBaXprUDgzVUNKcXZwOW0waHZnUzR5N3FL?=
 =?utf-8?B?WEQxY1p4VGNzVWE5aVF0MkQzWVZqRDRXeUU5K3J1d0E3VTdPZEJ0UjFjOUg5?=
 =?utf-8?B?M1VsRnIvTllzRnlZa2dpYVl3cjF4S0p2NW4vTU1uU3p1Z2RzNWFocUZ1Y3Vl?=
 =?utf-8?B?Z05uNmpqWFdSWE1GT2I2TXp5S3FzVzkzNnk4dWVkRmNEcmlGbWhMSTB5cWUz?=
 =?utf-8?B?RkhWaHBtTkZtSk53SWMrTW1mc3VzN3VjN0p3MmFGSXFpTWxLcW9UcWZic3Bl?=
 =?utf-8?B?SExVaC8xaXpmY0Q5bUVaUmJLckVUVm9WRG5oNWpzbXRodDRSREpnTXZXeXJB?=
 =?utf-8?B?OEYvdFYveGxkYzNUajlLcTZJYW5KRlBKSkZnUHFqTnExd0Vrc08xY2tqTDU3?=
 =?utf-8?B?YXE0Y2k2VEgxSnZsZVJFRm11d3dPd1luUnYwb21CYkxyajYvN1BCbHk3Mkhr?=
 =?utf-8?B?UTF1MWNySHIzV3BrRjBka3JOdzlGT1paQXduNjFCTG5YeDM1RUJ1a3B2aFBF?=
 =?utf-8?B?Wno5Rzh4Rkw4bUFocFBrZDJiWVJsd2trTE9vWi94dDFORkpzbnhsQUJXTTNJ?=
 =?utf-8?B?YzV2WWtEVWFtRzRBVkMzQ2J4M2ZLVjA1Q3JMM2FkQXBDY1dzMDljOE1vUUJI?=
 =?utf-8?B?c1duS3pKNHcrM01JOURNQUNNTjJqd0xsMFB1MlVyUEVkYXFSRUNPRnVPMEFp?=
 =?utf-8?B?MmRkOEYwWGdiTVBMWEFIN29sdlJHMVpmb0Ywa01rSktnK2ppN0EyejkrQllx?=
 =?utf-8?B?U2hsTVovRlZ3RUpuWnJEZ3lPUkY5bk9VTFlreU5XWjhMWE4wcnU3bnJuN2Rn?=
 =?utf-8?B?eWRLaTJ4QXRpRFQ1dGJETUlCUjZUS1IydkZyQi9HYkk0WUpUZEc5SjFQTS9P?=
 =?utf-8?B?NmJrSVpsL1pPREpydUNHQUg2dEVUMVBhekFFNDJ1bHhpZkZnYjVXeFBwd3BX?=
 =?utf-8?B?enBocHBuMFVxMTlNVUw2R3FoY1lZY1o4UkN1QVkvYnZXUGhaUWhBTXcvVlZ5?=
 =?utf-8?B?YzVLTEVNZDhCZWtTSHJhblFMSjMzVTc0T1BjUk9sVCtuUE9DZGdCbU9TNTBS?=
 =?utf-8?B?NjlFaVVTQzNwK3IrcmdyKy94ekdJa1U3NHpVbXZFSk81WUlFaGE4NXViUy82?=
 =?utf-8?B?WXJPUDBhYWN6cmRtd0xPSWJ3bzdUT3MvaENYYllqazNzY216Mmp3SU8xWnk3?=
 =?utf-8?B?ZkY4azN2L2o4MTU2MnFOMGIzOGFRRDFGYXZ3c0lLNkNGZ1dwTC8wckcyQ2l0?=
 =?utf-8?B?OE9NZWFqZ2xNUmpLNkQzNTgvTjNNOEtVWSt5MDRBUGJLcXBzSTAwclhBVDFY?=
 =?utf-8?B?TDI4bVhLZDRXTjZDTDU2em9NcS9lak5TRmFaVzJsSjNKdi8rbXg4c3BzS2Z3?=
 =?utf-8?B?ZURHWUNOSXY5Y05wZmhFdzZsVWlMb1B0MjZTZUJ0eXh5K3F2VTdPYURYRmhJ?=
 =?utf-8?B?cGNWbjFJd3pFYW9ERlhWSzZzVGFqdTQwcnJIeWxKT2Nmem5RREtBVlExckRI?=
 =?utf-8?B?c1E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VTFuVlhXTkxCVU5BQkovOUUyZHhNQ25lVjd3L0JMeWFudlNXZXVTWVF5dDh6?=
 =?utf-8?B?YW44c3hzd3AvNjQ3bWZ4RnNJVHArYmp2aVhCSjRYNVdUcG9HNjlIMUhGWXFV?=
 =?utf-8?B?MkpyNk1pQytBLzcyU0lmNkxGQmVvQlIreDVLRlBNbVV6Nk9heFI2a2lXREdr?=
 =?utf-8?B?WFZ2WlRJNzFDeDg1dHAzYnR1UVRCNm81MituQk9YN1VWenpVUWp6QWFBNUNL?=
 =?utf-8?B?M3N4Y3RaczVDUXlSUUNBWm4yWUJEL3Vjd3RvMndlWFlhTFhJMU1xV2ZUUjBx?=
 =?utf-8?B?VlVVbnlQS3FwRk9uRy9aT1lRQlY5NUlmQzhaT1FUYkxQbDhuVXB0RFFXOE9j?=
 =?utf-8?B?ZDhCbUEzbENoSUIyMElrTk93OHBROHVRMjVoSlZlRlo3L3VrRHdCcGVmWTNp?=
 =?utf-8?B?OEh1QnNpTDZ0V3FveGV1b1cyUko5MkRDdGdJTmY0bkJjWUNMR0hZN01wUXlX?=
 =?utf-8?B?ZTJ4WVhoZUNpbUJuVUhCcnJYc0NpR2UxZlhZTWdvenk4akZBZSt1L04vcUt1?=
 =?utf-8?B?eXViSnRqUTAyU2R2ZHpHTlg0by8xcGxxZDRrY0VGbGxtU3pCL3E1SUxnaTdZ?=
 =?utf-8?B?QThlanVFdFQ1UkVTNzYwYjJOTURzTXBrVzBXWkZTeEtYdyt0ekYyaHF6YThv?=
 =?utf-8?B?bWFUQzE1OUY2cGVydC95NE9Jbys2RmwrNldjMTBKWi9xS1FLejVsQ2JGbnkr?=
 =?utf-8?B?b3BwUkh6Q3JiT0h0WlVSditEOUluNlZ5S2dka2p5aHBxUTNvVVNrVWJHNU9Y?=
 =?utf-8?B?blJWeStraXZsSm4rQThSd2dWKzB1TFlvZzZ1RHI5VzROV1hUZ1k2RU5ENDVG?=
 =?utf-8?B?UHVWT1FSc2ZRd3BHSG5QK2tCOEw0SitZc3YyZWlKeHZrTENuVlJ3cmp5RDFI?=
 =?utf-8?B?MkJ1NkxLbVV1RzZjbW1iQlk1dml6MWhZQ09UYzdMbmJ2b3F0cGdyRnRKc3pT?=
 =?utf-8?B?c1RTOTJwOTNldEp4VUF6V1pkOCs1VGhveTMxZXEwME43NnVmeTJjYWVFRS9a?=
 =?utf-8?B?c3NFZHNHNVl2RkFNZUpNaFVlbG94SDlrUlpLUU5qcW1kWmZmMmR4eXU5WCs5?=
 =?utf-8?B?YjM4eldZNGpSdnZYV0o4SGd1OTZxQ1AxR1FPbFp6VGpVQVlDeUdlUnh0UjJ0?=
 =?utf-8?B?S2xDQTlTWk9YbXhDQS9zQTZ2cFNsWWJKM0d4bnVoSHVmQ1dkYVQ0VllMR1Uv?=
 =?utf-8?B?TVQrOHpqb3ZnZXRVeEIvckJUL1crQWE1MjQ1RmQvaTZnY1VEL2JNVkxrWEZN?=
 =?utf-8?B?UFIyazUvcDN0ek0xeklDeWZKVGJMbEtRdnBPWUk3V1A3c2s4MC9KQUxRSUlE?=
 =?utf-8?B?VFNoM0s4eDlsVWtLc0Rrc3JEODZ3N2xlQkFmM25ZaE12NzE2MkorZVpCNndm?=
 =?utf-8?B?WEp4WHhNSUl6dFhBajY4ODZsV2JwTEJDSjAwODVhSDVjR3hOeHh3WnQwc3k3?=
 =?utf-8?B?WkpYY0Uya1VGVTQ4YnlIK3pMRGc2NEFmNzVtSytzeE9XaEcrRzZHU09YNVd1?=
 =?utf-8?B?c3JUeUNuSG4rcmtPdjVXZXFXT2c4WkJtanlKamdTa2gxNFIrckFSdGpHeHIx?=
 =?utf-8?B?Qnk0S3hWZ2Q4RGwyMHdMcm9KVC8vMkR2alRHelBJcm5PVll4RE5tbEhOWDMz?=
 =?utf-8?B?d1p3YWZjN3NUVmFXSDdnMnJiRU1rMW4zQ1R4NDlnT0l3SHFzQzduM0JzR3dI?=
 =?utf-8?B?akVuT1l3QXdZYnYydGV3dHd1R1duOW9BaTNyVTZGWTZVWnN5d0c5YUlwdHho?=
 =?utf-8?B?SDVqajZhelQ5QlRiT3VtWU5lbFJaVmgvckVJdkZEdCtHTDJmOUtZYkxoWm9Y?=
 =?utf-8?B?K2o2Y0gyOG14amZZeXhheEYyUjRBYkcwd3NSeWh1UzQvYW1xTkZYcCtmQ2xv?=
 =?utf-8?B?Q1NSUHNZamJIckxEMFA4OG9MRGl0cEZNSmVqSk1abU1BbmczWDhFcStCSTM2?=
 =?utf-8?B?NUcvR3V6VUJ5Zm5ON0NTOWhoZ2l2em5xWGQwOFRabUNIOXVWeUFEK0pieDFF?=
 =?utf-8?B?SWtVRjNHcW9SRVJOUWhaa2pWUUY0anE1NkZRYzd1V0s1dDNJMXV5YStyS1Jv?=
 =?utf-8?B?VWdaaTYrQnNxT3Z2YWxjSTczeFAyRkhGTmhGVkp3a0Vjamlmam1iTHhGTWZZ?=
 =?utf-8?B?MC85WnpQQW0yc1JKb25pR1doOXFDUVYvdFhnRDR4VzY3R1NjU2F1eS9rbWJM?=
 =?utf-8?B?OWdWYU5iV0dQbXluQnFXNk5GVlFrRHZuQTVrUEQ3WG04cXlkWUhnTXFNWW9R?=
 =?utf-8?B?NVBVTW4yWFAxNE9kb3ZkcmQ3MDdmdTkzc25zVkpGYndrUkQyV25TcUZMTGFU?=
 =?utf-8?Q?zD5zvE5GYuILl9d+1W?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f2964c-5061-4876-7ef6-08de5744b59e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 10:22:55.0987
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ee0F6QUoFDuw0g/854cwFzpZ1a4e1PlppQHA/p3yzraGOagk6RpXgnAfU/9dissm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR12MB9744
X-Rspamd-Queue-Id: 003A13F734
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.208.9:from];
	RCPT_COUNT_TWELVE(0.00)[31];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.208.9:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: K454HG6A567ZQKDBO4KI7DOX45IQ3BXR
X-Message-ID-Hash: K454HG6A567ZQKDBO4KI7DOX45IQ3BXR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K454HG6A567ZQKDBO4KI7DOX45IQ3BXR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xOC8yNiAxMzowOCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gUmVuYW1lIHRoZSAubW92ZV9ub3Rp
ZnkoKSBjYWxsYmFjayB0byAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIHRvIG1ha2UgaXRzDQo+IHB1
cnBvc2UgZXhwbGljaXQgYW5kIGhpZ2hsaWdodCB0aGF0IGl0IGlzIHJlc3BvbnNpYmxlIGZvciBp
bnZhbGlkYXRpbmcNCj4gZXhpc3RpbmcgbWFwcGluZ3MuDQo+IA0KPiBTdWdnZXN0ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCA2ICsrKy0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyB8IDQgKystLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMgICAgICB8IDIgKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCA2ICsrKy0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyAgICAgICAgICAgICB8IDIgKy0NCj4gIGRy
aXZlcnMvaW5maW5pYmFuZC9jb3JlL3VtZW1fZG1hYnVmLmMgICAgICAgfCA0ICsrLS0NCj4gIGRy
aXZlcnMvaW5maW5pYmFuZC9ody9tbHg1L21yLmMgICAgICAgICAgICAgfCAyICstDQo+ICBkcml2
ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYyAgICAgICAgICAgICAgIHwgMiArLQ0KPiAgaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmggICAgICAgICAgICAgICAgICAgICB8IDYgKysrLS0tDQo+ICA5IGZp
bGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQo+IGluZGV4IGVkYWE5ZTRlZTRhZS4uNTljYzY0N2JmNDBlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMNCj4gQEAgLTk0OCw3ICs5NDgsNyBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2UgKmRldiwNCj4gIAlpZiAoV0FSTl9PTigh
ZG1hYnVmIHx8ICFkZXYpKQ0KPiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gIA0KPiAt
CWlmIChXQVJOX09OKGltcG9ydGVyX29wcyAmJiAhaW1wb3J0ZXJfb3BzLT5tb3ZlX25vdGlmeSkp
DQo+ICsJaWYgKFdBUk5fT04oaW1wb3J0ZXJfb3BzICYmICFpbXBvcnRlcl9vcHMtPmludmFsaWRh
dGVfbWFwcGluZ3MpKQ0KPiAgCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gIA0KPiAgCWF0
dGFjaCA9IGt6YWxsb2Moc2l6ZW9mKCphdHRhY2gpLCBHRlBfS0VSTkVMKTsNCj4gQEAgLTEwNTUs
NyArMTA1NSw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfcGluLCAiRE1BX0JVRiIp
Ow0KPiAgICoNCj4gICAqIFRoaXMgdW5waW5zIGEgYnVmZmVyIHBpbm5lZCBieSBkbWFfYnVmX3Bp
bigpIGFuZCBhbGxvd3MgdGhlIGV4cG9ydGVyIHRvIG1vdmUNCj4gICAqIGFueSBtYXBwaW5nIG9m
IEBhdHRhY2ggYWdhaW4gYW5kIGluZm9ybSB0aGUgaW1wb3J0ZXIgdGhyb3VnaA0KPiAtICogJmRt
YV9idWZfYXR0YWNoX29wcy5tb3ZlX25vdGlmeS4NCj4gKyAqICZkbWFfYnVmX2F0dGFjaF9vcHMu
aW52YWxpZGF0ZV9tYXBwaW5ncy4NCj4gICAqLw0KPiAgdm9pZCBkbWFfYnVmX3VucGluKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIHsNCj4gQEAgLTEyNjIsNyArMTI2Miw3
IEBAIHZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0KPiAg
DQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBu
b2RlKQ0KPiAgCQlpZiAoYXR0YWNoLT5pbXBvcnRlcl9vcHMpDQo+IC0JCQlhdHRhY2gtPmltcG9y
dGVyX29wcy0+bW92ZV9ub3RpZnkoYXR0YWNoKTsNCj4gKwkJCWF0dGFjaC0+aW1wb3J0ZXJfb3Bz
LT5pbnZhbGlkYXRlX21hcHBpbmdzKGF0dGFjaCk7DQo+ICB9DQo+ICBFWFBPUlRfU1lNQk9MX05T
X0dQTChkbWFfYnVmX21vdmVfbm90aWZ5LCAiRE1BX0JVRiIpOw0KPiAgDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiBpbmRleCBlMjJjZmE3YzZkMzIu
Ljg2MzQ1NDE0OGIyOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jDQo+IEBAIC00NTAsNyArNDUwLDcgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRl
X29iaihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikNCj4g
IH0NCj4gIA0KPiAgLyoqDQo+IC0gKiBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeSAtICZhdHRh
Y2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24NCj4gKyAqIGFtZGdwdV9kbWFfYnVmX21vdmVf
bm90aWZ5IC0gJmF0dGFjaC5pbnZhbGlkYXRlX21hcHBpbmdzIGltcGxlbWVudGF0aW9uDQo+ICAg
Kg0KPiAgICogQGF0dGFjaDogdGhlIERNQS1idWYgYXR0YWNobWVudA0KPiAgICoNCj4gQEAgLTUy
MSw3ICs1MjEsNyBAQCBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpDQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7DQo+ICAJLmFsbG93X3BlZXIy
cGVlciA9IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0gYW1kZ3B1X2RtYV9idWZfbW92ZV9ub3Rp
ZnkNCj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5
DQo+ICB9Ow0KPiAgDQo+ICAvKioNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0
aW8vdmlydGdwdV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1l
LmMNCj4gaW5kZXggY2U0OTI4MjE5OGNiLi4xOWM3OGRkMmNhNzcgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQo+IEBAIC0yODgsNyArMjg4LDcgQEAgc3RhdGlj
IHZvaWQgdmlydGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1l
bnQgKmF0dGFjaCkNCj4gIA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9v
cHMgdmlydGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7DQo+ICAJLmFsbG93X3BlZXIycGVlciA9
IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0gdmlydGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+
ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSB2aXJ0Z3B1X2RtYV9idWZfbW92ZV9ub3RpZnkNCj4g
IH07DQo+ICANCj4gIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqdmlydGdwdV9nZW1fcHJpbWVfaW1w
b3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2Rt
YV9idWYuYw0KPiBpbmRleCA1ZGY5OGRlNWJhM2MuLjFmMmNjYTVjMmY4MSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQo+IEBAIC0yMyw3ICsyMyw3IEBAIHN0YXRp
YyBib29sIHAycF9lbmFibGVkKHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJhbXMpDQo+
ICBzdGF0aWMgYm9vbCBpc19keW5hbWljKHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJh
bXMpDQo+ICB7DQo+ICAJcmV0dXJuIElTX0VOQUJMRUQoQ09ORklHX0RNQUJVRl9NT1ZFX05PVElG
WSkgJiYgcGFyYW1zLT5hdHRhY2hfb3BzICYmDQo+IC0JCXBhcmFtcy0+YXR0YWNoX29wcy0+bW92
ZV9ub3RpZnk7DQo+ICsJCXBhcmFtcy0+YXR0YWNoX29wcy0+aW52YWxpZGF0ZV9tYXBwaW5nczsN
Cj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgY2hlY2tfcmVzaWRlbmN5KHN0cnVjdCBrdW5pdCAq
dGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwNCj4gQEAgLTYwLDcgKzYwLDcgQEAgc3RhdGlj
IHZvaWQgY2hlY2tfcmVzaWRlbmN5KHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IHhlX2JvICpl
eHBvcnRlZCwNCj4gIA0KPiAgCS8qDQo+ICAJICogRXZpY3QgZXhwb3J0ZXIuIEV2aWN0aW5nIHRo
ZSBleHBvcnRlZCBibyB3aWxsDQo+IC0JICogZXZpY3QgYWxzbyB0aGUgaW1wb3J0ZWQgYm8gdGhy
b3VnaCB0aGUgbW92ZV9ub3RpZnkoKSBmdW5jdGlvbmFsaXR5IGlmDQo+ICsJICogZXZpY3QgYWxz
byB0aGUgaW1wb3J0ZWQgYm8gdGhyb3VnaCB0aGUgaW52YWxpZGF0ZV9tYXBwaW5ncygpIGZ1bmN0
aW9uYWxpdHkgaWYNCj4gIAkgKiBpbXBvcnRlciBpcyBvbiBhIGRpZmZlcmVudCBkZXZpY2UuIElm
IHRoZXkncmUgb24gdGhlIHNhbWUgZGV2aWNlLA0KPiAgCSAqIHRoZSBleHBvcnRlciBhbmQgdGhl
IGltcG9ydGVyIHNob3VsZCBiZSB0aGUgc2FtZSBiby4NCj4gIAkgKi8NCj4gQEAgLTE5OCw3ICsx
OTgsNyBAQCBzdGF0aWMgdm9pZCB4ZV90ZXN0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIoc3Ry
dWN0IHhlX2RldmljZSAqeGUpDQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfb3BzIG5vcDJwX2F0dGFjaF9vcHMgPSB7DQo+ICAJLmFsbG93X3BlZXIycGVlciA9IGZh
bHNlLA0KPiAtCS5tb3ZlX25vdGlmeSA9IHhlX2RtYV9idWZfbW92ZV9ub3RpZnkNCj4gKwkuaW52
YWxpZGF0ZV9tYXBwaW5ncyA9IHhlX2RtYV9idWZfbW92ZV9ub3RpZnkNCj4gIH07DQo+ICANCj4g
IC8qDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jIGIvZHJp
dmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KPiBpbmRleCA3Yzc0YTMxZDQ0ODYuLjFiOWNk
MDQzZTUxNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jDQo+IEBAIC0yODcsNyArMjg3
LDcgQEAgc3RhdGljIHZvaWQgeGVfZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpDQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfb3BzIHhlX2RtYV9idWZfYXR0YWNoX29wcyA9IHsNCj4gIAkuYWxsb3dfcGVlcjJwZWVy
ID0gdHJ1ZSwNCj4gLQkubW92ZV9ub3RpZnkgPSB4ZV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+ICsJ
LmludmFsaWRhdGVfbWFwcGluZ3MgPSB4ZV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+ICB9Ow0KPiAg
DQo+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX1hFX0tVTklUX1RFU1QpDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZp
bmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPiBpbmRleCAwZWMyZTQxMjBjYzkuLmQ3N2E3Mzlj
ZmU3YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYu
Yw0KPiArKysgYi9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jDQo+IEBAIC0x
MjksNyArMTI5LDcgQEAgaWJfdW1lbV9kbWFidWZfZ2V0X3dpdGhfZG1hX2RldmljZShzdHJ1Y3Qg
aWJfZGV2aWNlICpkZXZpY2UsDQo+ICAJaWYgKGNoZWNrX2FkZF9vdmVyZmxvdyhvZmZzZXQsICh1
bnNpZ25lZCBsb25nKXNpemUsICZlbmQpKQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAgDQo+IC0JaWYg
KHVubGlrZWx5KCFvcHMgfHwgIW9wcy0+bW92ZV9ub3RpZnkpKQ0KPiArCWlmICh1bmxpa2VseSgh
b3BzIHx8ICFvcHMtPmludmFsaWRhdGVfbWFwcGluZ3MpKQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAg
DQo+ICAJZG1hYnVmID0gZG1hX2J1Zl9nZXQoZmQpOw0KPiBAQCAtMTk1LDcgKzE5NSw3IEBAIGli
X3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFj
aG1lbnQgKmF0dGFjaCkNCj4gIA0KPiAgc3RhdGljIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMg
aWJfdW1lbV9kbWFidWZfYXR0YWNoX3Bpbm5lZF9vcHMgPSB7DQo+ICAJLmFsbG93X3BlZXIycGVl
ciA9IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0gaWJfdW1lbV9kbWFidWZfdW5zdXBwb3J0ZWRf
bW92ZV9ub3RpZnksDQo+ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSBpYl91bWVtX2RtYWJ1Zl91
bnN1cHBvcnRlZF9tb3ZlX25vdGlmeSwNCj4gIH07DQo+ICANCj4gIHN0cnVjdCBpYl91bWVtX2Rt
YWJ1ZiAqDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jIGIv
ZHJpdmVycy9pbmZpbmliYW5kL2h3L21seDUvbXIuYw0KPiBpbmRleCAzMjVmYTA0Y2JlOGEuLjk3
MDk5ZDNiMTY4OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L21seDUvbXIu
Yw0KPiArKysgYi9kcml2ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jDQo+IEBAIC0xNjIwLDcg
KzE2MjAsNyBAQCBzdGF0aWMgdm9pZCBtbHg1X2liX2RtYWJ1Zl9pbnZhbGlkYXRlX2NiKHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIA0KPiAgc3RhdGljIHN0cnVjdCBkbWFf
YnVmX2F0dGFjaF9vcHMgbWx4NV9pYl9kbWFidWZfYXR0YWNoX29wcyA9IHsNCj4gIAkuYWxsb3df
cGVlcjJwZWVyID0gMSwNCj4gLQkubW92ZV9ub3RpZnkgPSBtbHg1X2liX2RtYWJ1Zl9pbnZhbGlk
YXRlX2NiLA0KPiArCS5pbnZhbGlkYXRlX21hcHBpbmdzID0gbWx4NV9pYl9kbWFidWZfaW52YWxp
ZGF0ZV9jYiwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBzdHJ1Y3QgaWJfbXIgKg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgYi9kcml2ZXJzL2lvbW11L2lvbW11
ZmQvcGFnZXMuYw0KPiBpbmRleCBkYmU1MWVjYjlhMjAuLjc2ZjkwMGZhMTY4NyAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gKysrIGIvZHJpdmVycy9pb21t
dS9pb21tdWZkL3BhZ2VzLmMNCj4gQEAgLTE0NTEsNyArMTQ1MSw3IEBAIHN0YXRpYyB2b2lkIGlv
cHRfcmV2b2tlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICAN
Cj4gIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGlvcHRfZG1hYnVmX2F0dGFjaF9y
ZXZva2Vfb3BzID0gew0KPiAgCS5hbGxvd19wZWVyMnBlZXIgPSB0cnVlLA0KPiAtCS5tb3ZlX25v
dGlmeSA9IGlvcHRfcmV2b2tlX25vdGlmeSwNCj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IGlv
cHRfcmV2b2tlX25vdGlmeSwNCj4gIH07DQo+ICANCj4gIC8qDQo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+IGluZGV4IDBi
YzQ5MjA5MDIzNy4uMWIzOTc2MzVjNzkzIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiBAQCAtNDA3LDcgKzQw
Nyw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gIAkgKiAgIHRocm91Z2ggdGhlIGRldmljZS4NCj4g
IAkgKg0KPiAgCSAqIC0gRHluYW1pYyBpbXBvcnRlcnMgc2hvdWxkIHNldCBmZW5jZXMgZm9yIGFu
eSBhY2Nlc3MgdGhhdCB0aGV5IGNhbid0DQo+IC0JICogICBkaXNhYmxlIGltbWVkaWF0ZWx5IGZy
b20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5tb3ZlX25vdGlmeQ0KPiArCSAqICAgZGlzYWJs
ZSBpbW1lZGlhdGVseSBmcm9tIHRoZWlyICZkbWFfYnVmX2F0dGFjaF9vcHMuaW52YWxpZGF0ZV9t
YXBwaW5ncw0KPiAgCSAqICAgY2FsbGJhY2suDQo+ICAJICoNCj4gIAkgKiBJTVBPUlRBTlQ6DQo+
IEBAIC00NTgsNyArNDU4LDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQo+ICAJYm9v
bCBhbGxvd19wZWVyMnBlZXI7DQo+ICANCj4gIAkvKioNCj4gLQkgKiBAbW92ZV9ub3RpZnk6IFtv
cHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERNQS1idWYgaXMgbW92aW5nDQo+ICsJICog
QGludmFsaWRhdGVfbWFwcGluZ3M6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERN
QS1idWYgaXMgbW92aW5nDQo+ICAJICoNCj4gIAkgKiBJZiB0aGlzIGNhbGxiYWNrIGlzIHByb3Zp
ZGVkIHRoZSBmcmFtZXdvcmsgY2FuIGF2b2lkIHBpbm5pbmcgdGhlDQo+ICAJICogYmFja2luZyBz
dG9yZSB3aGlsZSBtYXBwaW5ncyBleGlzdHMuDQo+IEBAIC00NzUsNyArNDc1LDcgQEAgc3RydWN0
IGRtYV9idWZfYXR0YWNoX29wcyB7DQo+ICAJICogTmV3IG1hcHBpbmdzIGNhbiBiZSBjcmVhdGVk
IGFmdGVyIHRoaXMgY2FsbGJhY2sgcmV0dXJucywgYW5kIHdpbGwNCj4gIAkgKiBwb2ludCB0byB0
aGUgbmV3IGxvY2F0aW9uIG9mIHRoZSBETUEtYnVmLg0KPiAgCSAqLw0KPiAtCXZvaWQgKCptb3Zl
X25vdGlmeSkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCj4gKwl2b2lkICgq
aW52YWxpZGF0ZV9tYXBwaW5ncykoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsN
Cj4gIH07DQo+ICANCj4gIC8qKg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
