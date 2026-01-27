Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NGoD9eEeGmqqgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:26:47 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5DC91B09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 10:26:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB7633F70D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jan 2026 09:26:45 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012008.outbound.protection.outlook.com [52.101.53.8])
	by lists.linaro.org (Postfix) with ESMTPS id 1CA0C3F70D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jan 2026 09:26:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="n8/FhjIa";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.8 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oC0dVV3ZuKcHbA8J1lFkc0A5FApHmnqDXpwg9nVmvSCjfZ0KXdd7SqO5kE77CXColKG9v6BobzcbGb3HzlKWXLdBOyDupCu7vSngkD0N0TdIVWvHENjpZ6zysl4+yX+J5G+eQzLsn5LrCYP23MpHoKc9N77VEJ7fNijd4v84TutqlqhKWblrk+ETFqAW09SpjZL9ms5pnbpfIPj/Hnw3GHrPeZSYJzSRR/rhG7IqWStT+m4O5qIul1up2PPu6Ah8huq8i4t6fDmxjoQVAvQuSfAEeZ7DCqyIuHOGmKcXSNKxh/+g9HNURHxsz09qru2KlYq7Ln7QQ6t7IRxPP3Lcpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f7s1uet97cal53aA0QUeHLNdzOzhnXhWbWNZMBla6qU=;
 b=YOoj0yIgD4kiZjRYqZcmq+ezo7Sn0+4JngmLVMWHpmUAnwfXxImdlWlXBYj5LBRtOeLPVxOW6wltXo8xKTmb+BlxlGNzdh0yL8Mc+huXMh83g4cYZiEoAaJtZoFTbXwlQRUBBpWHbX6mF4frU7fGfiGAEKlqd5VOLaBtYh6q2IrdUeiwjG1JXKNvr1T15DqfTQdBKJGKNJlIyYZzNM6COc1Tn1e+8m9J+ePrvl3YaLuduDfOUISIeRwCDGYQ0QvZK07+XhDz4FbyBtzrC1Bp5UskDaccFj5ZShCbFMZ7gkO8KX/3hR2T2TkwqCXsN9uV1Q7xv8GewuYRSmQF7MR3sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f7s1uet97cal53aA0QUeHLNdzOzhnXhWbWNZMBla6qU=;
 b=n8/FhjIadZ1EABruZ3LnubRlmK8zWzfsEHyWkq2FOEdH7ycix+L8F1+a3KKq+47+hUoqgE+o9tIPjkwj3M6QZ8Xny3PrTVRBoJCT7rO+vq36J+o/0QX7vunSmH0Bbj6y+VMQ6peIt+9Wddjf575VLSNWf0EPtAFc8rgMOmV9RP4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB6749.namprd12.prod.outlook.com (2603:10b6:806:255::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 09:26:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.009; Tue, 27 Jan 2026
 09:26:36 +0000
Message-ID: <0d2ec2d6-c999-45d8-a2bd-b5b21883db47@amd.com>
Date: Tue, 27 Jan 2026 10:26:26 +0100
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
 Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>,
 Ankit Agrawal <ankita@nvidia.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-3-f98fca917e96@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260124-dmabuf-revoke-v5-3-f98fca917e96@nvidia.com>
X-ClientProxiedBy: FR4P281CA0041.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: e2b48e6b-6314-4c24-08c3-08de5d862ad7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eUlSb3YrZkM2V3ZNand3b3FsM0RhSjJWay85cVdkVGxrUHJlT0pHVzBsYW1I?=
 =?utf-8?B?ZmUyOCttYTBlYWFpYjFSbTBvQWhEOWllQ3l2bmprTDZmd0ZYc0xleDJXSHZW?=
 =?utf-8?B?SVVUYUJzK1ZyUFdOVHNyRmw2dTZRMzIyZ2VWeFo0ang4RzRrVldoeWdZSUJP?=
 =?utf-8?B?eHB1azdEUENhN1NmdTJZaXhDQkZtMGpicHhpQlZwNGkrcWRGNTF2UnFyd3ZB?=
 =?utf-8?B?ejlRTk40QWVGVko2VlA0a0djUTZQN2ozQWdRcUIyMmVrUllhZ3V1NUJNRmtT?=
 =?utf-8?B?VkJSY3BIenZ0c1VOTkdYcmJPNjZQOWdUaFE3YzZWWFZzQXBVRXJQTXNEZFNm?=
 =?utf-8?B?L0p6d2dGMndqUENua29SN05MNURMZXA2Qnh0TGRQVFJoVGYzdG9iQUs3c1Vl?=
 =?utf-8?B?T0xMNTQ2Q2RVcCtFNDBNR0NIa0dybjdSUk5Ib1NrMTlKZTJqUkRwRkJwbE9v?=
 =?utf-8?B?WFFSVmJ5blhRMEFXNXl5OUtYd2Y0SEVYTWFmRGltTm9LeCs3V0VtcGdJVHE4?=
 =?utf-8?B?Q1BlclRzK3pMNVA4azFvVnVWSjc1TWNpVjFjK01oMVNMbWpMU3hFcFF1OXVN?=
 =?utf-8?B?eGR3dEIwRnNWZ2xRM21md1V1ZThkMlphZzF4YS9CVmpSQk55Um1PeDltOURh?=
 =?utf-8?B?ckR5eTVxTDFRVmtXM3lsaFJ6SGxSQXEzNHFVRWNmWkRWNGlFVjJHTG00Yit1?=
 =?utf-8?B?MHBkQlJrdU9VVE5SWGd6SFlCa3FCSEVjQXJZQS9FZk5iRUJmeGhIZmVUWnhv?=
 =?utf-8?B?L2VQTkFDbU95QzF2aFhUWlE3UHR5MWM3TU1Zbm5QcHhGVllFbXIzRVZuWkxG?=
 =?utf-8?B?WW82RVM0VG5mU0Y5U3VZV0U4Z0c3R2ovVXlPaWo2RzJ6dThxZUdQZVVGSXJy?=
 =?utf-8?B?U1I1R3J0L0tlYlRsK0QxRjFlZFZ4RGNKaHMyR1d0WFFNcFo3Y1FCOVAwYXFr?=
 =?utf-8?B?c1FUQlhtVDVZMnhpQ3VnM3VYSS9zRlNPRnNnOXR1emVONzRQRnJWcXBKNVBW?=
 =?utf-8?B?UVhzVUJyVEpEQnUzcDlUakdOQ2wrdEpMSTNtQytxSFZrR1hsNDc4V0J2OEFU?=
 =?utf-8?B?SitjSm1LaEFLSnkvMDZna0QrejY3eWZFQkpmRmIxaXBjaHhoWXJGcTZkaWda?=
 =?utf-8?B?Y29DdFpRc2c1SWpvRGlTaEZCVkxSNUI3QmxRZHlweThxZGJ5YllzMHFjZ3Nj?=
 =?utf-8?B?d3l6Z0VPcW9PVjBpdHpPL2tSYlJBTzMvRFpzV3VtdFRoQU10Q1o2LzhldTJ2?=
 =?utf-8?B?czlLbDNTRUk1cEFneDJHOTBKV2U4bDIzaXdmMFV1SmUvbGtWRnMyRFN4cUdK?=
 =?utf-8?B?TDBtYkZ6aHJtallzYk9LQWxRdVAvZ1BKZVY1NUc1ZlFqeXRUaUROeW5WRm9D?=
 =?utf-8?B?Tm9QekVxMXFjV2ZNUFFsZERHWHhUdU5oL0VLMDBDTTl4dFJGMU0xSTh5Mm9C?=
 =?utf-8?B?cFNsSzhhL0VMZjk2bjZGSmVrc1UzcFF1OHNCRUFWVTE4YVp2RW1paS9YaXFE?=
 =?utf-8?B?Q3FaSlZiQUwzN1RTUUZock9lcmlUcDdXcnh6VUY3dE1Ed1RrUHBLNS9rSXBj?=
 =?utf-8?B?N0N4NWZIT0thQjQrS21TYm43VlVEYjltclkvaGxBQXZaSjVodG96L0ZZaDNZ?=
 =?utf-8?B?WjZ1SThmSzFGd1JYT3lmRDIwbThRRWZWU0J3OSthbm1Nc1pTMVpHQVdPT1cx?=
 =?utf-8?B?bzkxb05zZVAzNGtzTkJSUUpIL3RhNThjV2JIN1dNQ0RGNnhWbEgycVg3dEFN?=
 =?utf-8?B?bU13OWg2L2tNc2Y5aUFrTjFZZDJEcWdSdnhydnhxdnhMaExodUpsOWt6R0Iz?=
 =?utf-8?B?TFVwbXN2QVBoc0xqSGlpRk4xbUdOTWxQN2IrWHBNclNlNXpaRk8vUTJjT1BC?=
 =?utf-8?B?WnZFM0VBbE1wdUVhdE9OWW90dFRQeGpBcHFnMzJWMnBpY2ZXTSt3WmVtZjd3?=
 =?utf-8?B?NEV3QkdDRG5lRUhHQUJkU1FnenVjTEtIK0JiVFN1bGpld283c29WelFWZU5B?=
 =?utf-8?B?T0lIY0pkcGRJbmswUW9sbGZxSzdIbWRmSVMvYXJnaEZWcllFRUhFMEpKd3B4?=
 =?utf-8?B?UmpJdjQrWS81eHJmSkx1ODlOLzRYbjI5a3dUend5bUNDS3A3VmduRE4rZVFx?=
 =?utf-8?B?UEtwdlhXYUx0UTk1Z0FzZTdFSXhHZmNVVnpuOTBGNVRKNTF0a3drWG5URUkw?=
 =?utf-8?B?TWc9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZXhFMzdOeDQydzVUZUcwMFcwN0FDZjl6RmVneXFvUzczVG03WU5HOFpsOXRO?=
 =?utf-8?B?bTZmdzg3YUhlSEh4VXk1SDlXUTVqOFlkdHRyR2xhU0FVSHNrOXB6NnNueEQx?=
 =?utf-8?B?WE4xMjlIN2JoWW91V0FCb3huenBxclkwN0tvQndEUXFEbDlycmhZZXJqck1Q?=
 =?utf-8?B?bHJaUkhZcHArdDdWVGpRT1JvMm9zZ0JHcHZEM3Y5Vk44QTQ3RzJudks0Z2ZT?=
 =?utf-8?B?eitLQWEzT1oxWnc0ZlV2Uy9Hb2JwbnNRbWF4NEk5NzNoMWxXU0w1aVB2STFN?=
 =?utf-8?B?TkxvR3hRdmFYNE5IV1FLTzVTL1JPRTJvakc0bGF0Y1REY2Z4MVk1U1pwVDM0?=
 =?utf-8?B?ZTFDemlLTW5BZnBZVEY2RGx6aVBBeFAxeDIzSFltU1IyKzVkUyt4bFRtNWVB?=
 =?utf-8?B?WHlMWlRRYUpoTXdoTU9pUk5ha00yb3BPWjk5a0ZlVWdYUFdkdVh1YVF0ZGNw?=
 =?utf-8?B?d1FoZVVJdXl0N0JkQkhsampaZHJwaGY0UkV6cUhNS0FremUrbmNXelgrb0FY?=
 =?utf-8?B?UElMSHFyUjhEbkhnRXo3K2lZb3BYOEFoTUx2TTgzY00zb1FkcFJUdlY5LzJU?=
 =?utf-8?B?ME9ZZUVPYjMvU1VyUml3bFRxTGw5RklmWGg4TFA2d0ZzTHpoazVqMHBuRTZ1?=
 =?utf-8?B?RmhiTm9rYkFBMUtTbURXTzBzRytNbVEwREdFMUpOT3JUWTVyV3BNMVlPRGh5?=
 =?utf-8?B?Y0hjNE1HRGxCNCsrdEh4UzZTK01TaS8yZlllZURpYjI0ZmFkOXArUERBbVhi?=
 =?utf-8?B?T2RMMEZYQWlYT2pKMTkyOHNDTk5pN0x6T3JCOFBjZHVEaGJuckgvWWdGN2tT?=
 =?utf-8?B?THNTN2I2LzQvL2NycC9pMmw3UmNET0dJb1dEMzRGV3B4TFRSdmVrUXM2UVlY?=
 =?utf-8?B?eU42Y25zWkJsR3hINHZqbzc5SS8zZEQ0QWRBUzByeFJrZVVNL2FuY3BIS2xW?=
 =?utf-8?B?bkZyUHpxSGZlSDZ5cFFkVjZBQ05YWVFXd3daV1hFOFZJYXpLMEZ3MTY4WGVa?=
 =?utf-8?B?MTU3YUZ1bGJPaG5MZUlDOEZYQ2Q1dDJNT3BaczVXcUo4RVJRSWtKSHYxQ3Jq?=
 =?utf-8?B?Tm8rSHZsZjlISU5lRU5BbmlDUTAyVlFsNTVyRUdZR081b09GcEV5NGNwYllM?=
 =?utf-8?B?UnlUQURUZmFSdE1lVW9IRmk5ejhad3A4SG9GOFdLSE1sTmxoL1Qrd3RsSENi?=
 =?utf-8?B?YUtxSlk0eGRvU3JWK0F6TkVsZ0hubVYzU0ZPazFoQk5oQlNwbWk2WVJSRFds?=
 =?utf-8?B?WHpHUGpWbGhRdTUwaklKSVcybzQyL2JVbEl2K1ZOQ1p1aTFVa25Ja2tzT0ND?=
 =?utf-8?B?R3BxaUVjemhrK2k5dGlDTE0zendIT1pyUHlzNDlLU1FnNkl4a05ZbVNHYkZx?=
 =?utf-8?B?Wno4dStKcWsyc2VGTjYxa05BVmc2WmlZMkF3a3Y3d21pdnRSWmNWWUlPb2xI?=
 =?utf-8?B?MXFxRWpJc2tSQnA2clBEN2pvUUQzOXBXVk9IUGVQbzZ5SlpwRWN6ZnpidWFD?=
 =?utf-8?B?QkFXZTY5QU40QjZzOW4yeStUc2pWTUhJSTgvYU9IU0lBWFZtUXpxM1lqQm5B?=
 =?utf-8?B?TzA0TWpwUXJ4aVFObGlPM2ZlUHczc0ozWWhTUlkwUldsUHRoWDJ5ZFlUYWxl?=
 =?utf-8?B?Yy9qV2hwMVFzQmUzQjg3NENrditBdUNJSGNiWnU4S0NIRVVLdUd5TFJCU2tS?=
 =?utf-8?B?Si9MYkhodkdpWE5paU0yU2NJRHBDMVlkdkhSdVplTytWTU83ZTBnYjZtWGVO?=
 =?utf-8?B?bC9HWU8rSmgwK1p4MGJpTWZnYUtXQTlQczR1ZmRWS1pxUW5aZTBzY2ZhMm9o?=
 =?utf-8?B?M0VIcitFRlpIZW1RWVJSR3dZb1ZpbnRKa0N4bVMvcGRRY2JXQ2Z6aG9BdnQy?=
 =?utf-8?B?MzRiYzViSldObEFwRGpocXRWUHRCdGkwZXJUS2dMR1VJeGZIa3NjWFNMRWRh?=
 =?utf-8?B?czFaeTkrZDFQY2xLbDd3cUdVb3FBaDZzcm5CcjBoN0hkK2c3VFFYWStEVjV0?=
 =?utf-8?B?eHlYaU9rVjQ3eHZHN2k4RXpac013RC9OMEpkSXhvN1NDZVlYS2NialdjR3ky?=
 =?utf-8?B?Y1NCTWlRVnJ4Rjg3T0VNNTF4bXc2dHJEcXBnTW1UbXE3bWw4b0J0V041UGJK?=
 =?utf-8?B?Mjl4Y1MzZHFuajcrcDBXVWpoUEkzSkxBUENtd2xYTUpIM3dBaVhXL0FXN1A0?=
 =?utf-8?B?eDJZb01ZWjFUQXV2YlNBZmVYZWhaUW9ldzZCTTF1S2w0VGVRM0RZUVFqVXhi?=
 =?utf-8?B?aVAwSGN3R1cxYndaZUlRZHJ1MlIzQW8zYUJGLzF1S0llL21oWVgveGZxNGY2?=
 =?utf-8?Q?+9bK8fcO28Nid422dV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b48e6b-6314-4c24-08c3-08de5d862ad7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 09:26:36.2861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 38PGNWXDWAJfdT4YYLgQfGQEl2J85crSbd3TCDqcxBl2EY8KPEQOg/UOf8c18xD0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB6749
X-Spamd-Bar: -----
Message-ID-Hash: 6JA6LAMUKSOYT4R4X75ZA4UQWJGGUTEB
X-Message-ID-Hash: 6JA6LAMUKSOYT4R4X75ZA4UQWJGGUTEB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 3/8] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6JA6LAMUKSOYT4R4X75ZA4UQWJGGUTEB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[amd.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,amd.com:mid,amd.com:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: BC5DC91B09
X-Rspamd-Action: no action

T24gMS8yNC8yNiAyMDoxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gRE1BQlVGX01PVkVfTk9USUZZIHdh
cyBpbnRyb2R1Y2VkIGluIDIwMTggYW5kIGhhcyBiZWVuIG1hcmtlZCBhcw0KPiBleHBlcmltZW50
YWwgYW5kIGRpc2FibGVkIGJ5IGRlZmF1bHQgZXZlciBzaW5jZS4gU2l4IHllYXJzIGxhdGVyLA0K
PiBhbGwgbmV3IGltcG9ydGVycyBpbXBsZW1lbnQgdGhpcyBjYWxsYmFjay4NCj4gDQo+IEl0IGlz
IHRoZXJlZm9yZSByZWFzb25hYmxlIHRvIGRyb3AgQ09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSBh
bmQNCj4gYWx3YXlzIGJ1aWxkIERNQUJVRiB3aXRoIHN1cHBvcnQgZm9yIGl0IGVuYWJsZWQuDQo+
IA0KPiBTdWdnZXN0ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCg0KQXMgbG9uZyBhcyBub2JvZHkgc3RhcnRzIHNjcmVhbWluZyBpbiB0aGUgbGFzdCBz
ZWNvbmQgb3IgSSBlbmNvdW50ZXIgc29tZSBvdGhlciBwcm9ibGVtIEknbSBnb2luZyB0byBwdXNo
IHRoZSBmaXJzdCB0aHJlZSBwYXRjaGVzIHRvIGRybS1taXNjLW5leHQgbm93Lg0KDQpUaGV5IGFy
ZSBiYXNpY2FsbHkganVzdCBjbGVhbnVwcyB3ZSBzaG91bGQgaGF2ZSBkb25lIGEgbG9uZyB0aW1l
IGFnby4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1
Zi9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAxMiAtLS0tLS0tLS0tLS0NCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgICAgICAgICAgICAgICAgfCAgMyArLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAxMCArKystLS0tLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnICAgICAgICAgIHwgIDIgKy0NCj4g
IGRyaXZlcnMvZ3B1L2RybS94ZS90ZXN0cy94ZV9kbWFfYnVmLmMgICAgICAgfCAgMyArLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFfYnVmLmMgICAgICAgICAgICAgfCAxMiArKysrLS0t
LS0tLS0NCj4gIDYgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcgYi9kcml2ZXJz
L2RtYS1idWYvS2NvbmZpZw0KPiBpbmRleCBiNDZlYjhhNTUyZDcuLjg0ZDVlOWIyNGUyMCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4gKysrIGIvZHJpdmVycy9kbWEt
YnVmL0tjb25maWcNCj4gQEAgLTQwLDE4ICs0MCw2IEBAIGNvbmZpZyBVRE1BQlVGDQo+ICAJICBB
IGRyaXZlciB0byBsZXQgdXNlcnNwYWNlIHR1cm4gbWVtZmQgcmVnaW9ucyBpbnRvIGRtYS1idWZz
Lg0KPiAgCSAgUWVtdSBjYW4gdXNlIHRoaXMgdG8gY3JlYXRlIGhvc3QgZG1hYnVmcyBmb3IgZ3Vl
c3QgZnJhbWVidWZmZXJzLg0KPiAgDQo+IC1jb25maWcgRE1BQlVGX01PVkVfTk9USUZZDQo+IC0J
Ym9vbCAiTW92ZSBub3RpZnkgYmV0d2VlbiBkcml2ZXJzIChFWFBFUklNRU5UQUwpIg0KPiAtCWRl
ZmF1bHQgbg0KPiAtCWRlcGVuZHMgb24gRE1BX1NIQVJFRF9CVUZGRVINCj4gLQloZWxwDQo+IC0J
ICBEb24ndCBwaW4gYnVmZmVycyBpZiB0aGUgZHluYW1pYyBETUEtYnVmIGludGVyZmFjZSBpcyBh
dmFpbGFibGUgb24NCj4gLQkgIGJvdGggdGhlIGV4cG9ydGVyIGFzIHdlbGwgYXMgdGhlIGltcG9y
dGVyLiBUaGlzIGZpeGVzIGEgc2VjdXJpdHkNCj4gLQkgIHByb2JsZW0gd2hlcmUgdXNlcnNwYWNl
IGlzIGFibGUgdG8gcGluIHVucmVzdHJpY3RlZCBhbW91bnRzIG9mIG1lbW9yeQ0KPiAtCSAgdGhy
b3VnaCBETUEtYnVmLg0KPiAtCSAgVGhpcyBpcyBtYXJrZWQgZXhwZXJpbWVudGFsIGJlY2F1c2Ug
d2UgZG9uJ3QgeWV0IGhhdmUgYSBjb25zaXN0ZW50DQo+IC0JICBleGVjdXRpb24gY29udGV4dCBh
bmQgbWVtb3J5IG1hbmFnZW1lbnQgYmV0d2VlbiBkcml2ZXJzLg0KPiAtDQo+ICBjb25maWcgRE1B
QlVGX0RFQlVHDQo+ICAJYm9vbCAiRE1BLUJVRiBkZWJ1ZyBjaGVja3MiDQo+ICAJZGVwZW5kcyBv
biBETUFfU0hBUkVEX0JVRkZFUg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXggZTEyZGI1NDBjNDEzLi5j
ZDY4YzFjMGJmZDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtODQ3LDggKzg0Nyw3IEBAIHN0
YXRpYyBib29sDQo+ICBkbWFfYnVmX3Bpbl9vbl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQ0KPiAgew0KPiAgCXJldHVybiBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5waW4gJiYN
Cj4gLQkJKCFkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpIHx8DQo+IC0JCSAh
SVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSk7DQo+ICsJICAgICAgICFkbWFf
YnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpOw0KPiAgfQ0KPiAgDQo+ICAvKioNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+IGluZGV4IGNk
NDk0NGNlYjA0Ny4uYjdmODViODY1M2NmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gQEAgLTEzMywxMyArMTMzLDkgQEAgc3RhdGljIGlu
dCBhbWRncHVfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0K
PiAgCSAqIG5vdGlmaWVycyBhcmUgZGlzYWJsZWQsIG9ubHkgYWxsb3cgcGlubmluZyBpbiBWUkFN
IHdoZW4gbW92ZQ0KPiAgCSAqIG5vdGllcnMgYXJlIGVuYWJsZWQuDQo+ICAJICovDQo+IC0JaWYg
KCFJU19FTkFCTEVEKENPTkZJR19ETUFCVUZfTU9WRV9OT1RJRlkpKSB7DQo+IC0JCWRvbWFpbnMg
Jj0gfkFNREdQVV9HRU1fRE9NQUlOX1ZSQU07DQo+IC0JfSBlbHNlIHsNCj4gLQkJbGlzdF9mb3Jf
ZWFjaF9lbnRyeShhdHRhY2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKQ0KPiAtCQkJaWYg
KCFhdHRhY2gtPnBlZXIycGVlcikNCj4gLQkJCQlkb21haW5zICY9IH5BTURHUFVfR0VNX0RPTUFJ
Tl9WUkFNOw0KPiAtCX0NCj4gKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+
YXR0YWNobWVudHMsIG5vZGUpDQo+ICsJCWlmICghYXR0YWNoLT5wZWVyMnBlZXIpDQo+ICsJCQlk
b21haW5zICY9IH5BTURHUFVfR0VNX0RPTUFJTl9WUkFNOw0KPiAgDQo+ICAJaWYgKGRvbWFpbnMg
JiBBTURHUFVfR0VNX0RPTUFJTl9WUkFNKQ0KPiAgCQliby0+ZmxhZ3MgfD0gQU1ER1BVX0dFTV9D
UkVBVEVfQ1BVX0FDQ0VTU19SRVFVSVJFRDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1ka2ZkL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmln
DQo+IGluZGV4IDE2ZTEyYzk5MTNmOS4uYTVkNzQ2N2MyZjM0IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1ka2ZkL0tjb25maWcNCj4gQEAgLTI3LDcgKzI3LDcgQEAgY29uZmlnIEhTQV9BTURfU1ZN
DQo+ICANCj4gIGNvbmZpZyBIU0FfQU1EX1AyUA0KPiAgCWJvb2wgIkhTQSBrZXJuZWwgZHJpdmVy
IHN1cHBvcnQgZm9yIHBlZXItdG8tcGVlciBmb3IgQU1EIEdQVSBkZXZpY2VzIg0KPiAtCWRlcGVu
ZHMgb24gSFNBX0FNRCAmJiBQQ0lfUDJQRE1BICYmIERNQUJVRl9NT1ZFX05PVElGWQ0KPiArCWRl
cGVuZHMgb24gSFNBX0FNRCAmJiBQQ0lfUDJQRE1BDQo+ICAJaGVscA0KPiAgCSAgRW5hYmxlIHBl
ZXItdG8tcGVlciAoUDJQKSBjb21tdW5pY2F0aW9uIGJldHdlZW4gQU1EIEdQVXMgb3Zlcg0KPiAg
CSAgdGhlIFBDSWUgYnVzLiBUaGlzIGNhbiBpbXByb3ZlIHBlcmZvcm1hbmNlIG9mIG11bHRpLUdQ
VSBjb21wdXRlDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1h
X2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KPiBpbmRleCAx
ZjJjY2E1YzJmODEuLmMxMDc2ODdlZjNjMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMv
eGVfZG1hX2J1Zi5jDQo+IEBAIC0yMiw4ICsyMiw3IEBAIHN0YXRpYyBib29sIHAycF9lbmFibGVk
KHN0cnVjdCBkbWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJhbXMpDQo+ICANCj4gIHN0YXRpYyBib29s
IGlzX2R5bmFtaWMoc3RydWN0IGRtYV9idWZfdGVzdF9wYXJhbXMgKnBhcmFtcykNCj4gIHsNCj4g
LQlyZXR1cm4gSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSAmJiBwYXJhbXMt
PmF0dGFjaF9vcHMgJiYNCj4gLQkJcGFyYW1zLT5hdHRhY2hfb3BzLT5pbnZhbGlkYXRlX21hcHBp
bmdzOw0KPiArCXJldHVybiBwYXJhbXMtPmF0dGFjaF9vcHMgJiYgcGFyYW1zLT5hdHRhY2hfb3Bz
LT5pbnZhbGlkYXRlX21hcHBpbmdzOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBjaGVja19y
ZXNpZGVuY3koc3RydWN0IGt1bml0ICp0ZXN0LCBzdHJ1Y3QgeGVfYm8gKmV4cG9ydGVkLA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1
L2RybS94ZS94ZV9kbWFfYnVmLmMNCj4gaW5kZXggMWI5Y2QwNDNlNTE3Li5lYTM3MGNkMzczZTkg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFfYnVmLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KPiBAQCAtNTYsMTQgKzU2LDEwIEBAIHN0
YXRpYyBpbnQgeGVfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQ0KPiAgCWJvb2wgYWxsb3dfdnJhbSA9IHRydWU7DQo+ICAJaW50IHJldDsNCj4gIA0KPiAtCWlm
ICghSVNfRU5BQkxFRChDT05GSUdfRE1BQlVGX01PVkVfTk9USUZZKSkgew0KPiAtCQlhbGxvd192
cmFtID0gZmFsc2U7DQo+IC0JfSBlbHNlIHsNCj4gLQkJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRh
Y2gsICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKSB7DQo+IC0JCQlpZiAoIWF0dGFjaC0+cGVl
cjJwZWVyKSB7DQo+IC0JCQkJYWxsb3dfdnJhbSA9IGZhbHNlOw0KPiAtCQkJCWJyZWFrOw0KPiAt
CQkJfQ0KPiArCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50
cywgbm9kZSkgew0KPiArCQlpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKSB7DQo+ICsJCQlhbGxvd192
cmFtID0gZmFsc2U7DQo+ICsJCQlicmVhazsNCj4gIAkJfQ0KPiAgCX0NCj4gIA0KPiANCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
