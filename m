Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPHhFTTqiWmdDwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Feb 2026 15:07:48 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C2988110140
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 09 Feb 2026 15:07:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 825033F7EA
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Feb 2026 14:07:46 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010022.outbound.protection.outlook.com [52.101.46.22])
	by lists.linaro.org (Postfix) with ESMTPS id D83563F773
	for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Feb 2026 14:07:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=r3+5QSL6;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.22 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShF9QWOVT3q1Z8wg6ZfE9+pt9Z1iljgBBJCOyIrm9MXDDlPa2suBaeA4tED4ldOH/JN36BIwRUlO1g/cemzNsvhCeNXLKg+MrcBH8iINlHQj2pz+HssJGMNqLK2STylxY4R73xnqCe9i27Ytz1NJrq6oygbFQLhneJlIxnjsilylVtpRQKe/egzi8b48rim6PqmLIQG7EQnSkKBI39Zq6dFrUE4XN0hvNNSZT9+17rS59NhaNJY8AOH/tUqJQqJDKFpfITgrnnpUHRYT7J2zgDPyre5zisqME7sFCMRLwE1Qrgs+zY220yCXyarhi73oUQ5rUKLP/yO31WOX5E8Q/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQ0Y2ooEaudJ5kYogO2wQNt4aaYAQEcuH/LU2je12bY=;
 b=Wcku1M7ylWkrXrJCbWsNiMoEEMl061d+p7AKgLLNVdBomVW0ui9H08oiaZWRuwM6Gd7xwr37JXCCPpQ0qhDnQWKa9F/CaHwTlXcAl7tWhlP2zC2jvu9jlI6eRbGNqYx79Ia5hsJlMuTLZF7U+sXgZCzA6udt3VRoO+TbqwJqDF6s6hyZUfnrx8heokAikCi/0J3hqa5pUn6CgXNqRgjOy2+M+AFg4I7lWOiY4XH1kWW7aO5ZePgt/Ahnel85dJ+dh6jihZ8BcW7xyMFSu4XXMwUd5Kg+suo6b38pabgI54s6mWOvAFH5cZTJkwCWkG1iAIN7aExE7aPpJ11GyJD6hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQ0Y2ooEaudJ5kYogO2wQNt4aaYAQEcuH/LU2je12bY=;
 b=r3+5QSL6fEi0sZn6KoQubmLelT6g55c8Yr2se8J701GhDycpBMPVXlIPQV7ntfONJkKHw1VeA2U1Qe/KoDgF3SMyPbPR8vLGoHqXqspRi7SKTBZlL66I3VjpGwk2Hac4S7WwSJn7rDcnXhQOT0NDOVm2DT4r7GLpwzECzML7/o0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB9455.namprd12.prod.outlook.com (2603:10b6:610:1c1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 14:07:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 14:07:35 +0000
Message-ID: <e93e823f-8a26-42b2-9a10-50f1afd8dbe9@amd.com>
Date: Mon, 9 Feb 2026 15:07:30 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250616155952.24259-1-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250616155952.24259-1-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: FR4P281CA0293.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e7::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB9455:EE_
X-MS-Office365-Filtering-Correlation-Id: a3138567-db65-4543-f113-08de67e492ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?emJPdFBWZ3VKTHFFUngzWWRxdWhjQ2oyanR2czFCSm5jcUVFaWtZY1NhU1Ft?=
 =?utf-8?B?bjYwM2x6OVBDZWRmbFltV014NXR1aFlkZG1yY0xabW1LczAyZFRBK2Nzd04x?=
 =?utf-8?B?d1o2eGlaOGd2cGVNdFU4SVlRbWliTnUxWjUya1pFdFE2TDFnNVNrM05sZ0Zp?=
 =?utf-8?B?blA1WTNHOEgrNWpGMWRoOTM4RUtaNDVuMFpsditEZmJlRzArYU5zSHZ2T3pB?=
 =?utf-8?B?M3hxeWM2K0tUZkdRNGtGT2hXdXc3N3VnVXVwaGJZVkF4T0lVa3ZDWlBmTVI0?=
 =?utf-8?B?UDcwWmtGaGZBM1lyTnFJbE5YdlpnVkRGUHBTVXVlSGs2dFZ6Z1psUkVPeE95?=
 =?utf-8?B?bHByZDh5NnJEVkVDZFZMV0E1YTgxbEZJS1lzTlBmamdhZHJ6QVJkcy9mNFRa?=
 =?utf-8?B?Tmh6THpnQTQrK1Voekt2Smd1WFJ2RzVER21qT1hINUJuc20rN1V1SGZmazVo?=
 =?utf-8?B?bVpXSVZaL0dJOFl1dUJCR2ljY09iVm5wK2FkNnFyeFgydnRpRXFQTjhiV2FO?=
 =?utf-8?B?NkF2Q3B4MHlTeXdnVXVibWM0b0ZNdyt6M0FWYjl1ZDJYV2tQWDZXSy9Md25t?=
 =?utf-8?B?Smg4dng2NmFpZEI0R01LbWZLUEk1cFgvYUFNbEVTL3cyZ1VCbFVpK3FLQlo4?=
 =?utf-8?B?b25HdkNKYWg0cE8vYzdVVnlrd0ZwZ3Q4Q21sSW1VbkZIcFBQb2c1TWJyR0oz?=
 =?utf-8?B?S2pEaXJTSVZhK25IeEVFYTZXejF0bmVWeGVOZ2dkcll0c25TdjNpS0dBN1d1?=
 =?utf-8?B?V1VEbWRiUGVFS0FsYWllR2VWS2Qyd002SUR5ODMrd1NPZDNtN2l5VXdMalZJ?=
 =?utf-8?B?RytsTUh3c29seWhJbjRWSjFORlNYUmZJd2xuZ3UrVVpaVlVYTGlqSnJ3cTNX?=
 =?utf-8?B?M0JrNW5DQjJnb25tMUNNaS8vOXVBd05FR3grakJVb1piUWthWWxLU2RISndq?=
 =?utf-8?B?TUxxYXVWSUVFREl4YmVRd0IwdTdHYkNrMFFzV28vNWd1Y1VvQ2N4SVlpYm1x?=
 =?utf-8?B?WGh3SXFQdXRaNjFNSktLUkNrZmZ1ZVdBWmZNcXNlNTlpUDF5NCtkK25laVVE?=
 =?utf-8?B?cEtKL1YybW1wQjU0aXM1cGEvcUErQmh1UGpLMUMydTJ2TXdJWjdrUm5LTXRa?=
 =?utf-8?B?Z2QwZG91NGhOZktSQ0cyMzNWeTJKaExVMHlCM2x3LzB0STZLQldteHYvb09s?=
 =?utf-8?B?bjFJUzNmNTVYS2F5MVQzMmt4MTkzMlpORWFGVWdJL1AyaUJFRWRpUVNuZlZR?=
 =?utf-8?B?RktRR1dlOFdGM3pvQldkNmlvRURIS09mUmFxczVkRWpEQS9hN21ld0hmUFg2?=
 =?utf-8?B?L00vM2h6SGM1TkFiZjlEdVlLT0Y2MitIdmt1NWd1Y2NiZmJxUEozdjVqenZ2?=
 =?utf-8?B?NVdXVXZjWml3ZFFHMEtRbjdsRkhHU3UvRkg4d1l2TElJclFaNXhRbGkyTUxF?=
 =?utf-8?B?dDRFMkh1VTl4UlZ1QTBqdjdKSzFUNVNhZk1MNXZ6U2NHZmxHU3g0MEVUR205?=
 =?utf-8?B?ZjdYR0FEcjZ0K2RmV0NTM29TaXBPVkcyWmRqZC9DMHpDTHQ1RmdnNEQwZnN6?=
 =?utf-8?B?RHFreWgyMzI5WUpxNmFQOHljdXhuN3RJUDFxMnJjL1FVS0tYZDJJcS8zZzlO?=
 =?utf-8?B?amh5MC90Wi80SDhPa2xiZzBZS2xXcUZob0YrN0t3VUxHV3EzcWJJRTg0cTRp?=
 =?utf-8?B?aUNQNnFFRTdGUGVPL1VrTDBiZjNvbDB3S3FVNldFU3BRMTJGcGdTL1dnZUo3?=
 =?utf-8?B?WCtBcjVZdmxsekNnNWozdWFYcnN1MGtuZ050aEU0Wmw2TDFOUWtGTHFRanhC?=
 =?utf-8?B?RW5vZm5zZWc0dlREYTBZY0NmbkZMWW12QjBzMWV0bnJOZzFhajNZcmZDeDZE?=
 =?utf-8?B?ZFVhdUk1YmYxSThsTnppa05mbk5iLzdsZGI4NTl1YnV3ZWhBbFF3TjExOExC?=
 =?utf-8?B?N1cxRjFrMk9sUy9kK09OdWovcVdidis4VHd6MHpyWE1MVzJ2eDY1UFAyejVz?=
 =?utf-8?B?dTl2R1BtOXlCTUhaZXBxMjFGSzY5K2xDMlJhTkVjL3ZHUlJ2eXh4ZmpqTytT?=
 =?utf-8?B?UlkxcHNsaXBvbkUzdEs5S1hpRVErRllsWFI5R1UxR0VseXY5YnZHQmZXZ2Rk?=
 =?utf-8?Q?IzYg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a3h2Z0ZQNmNMK2xiQlJoNGp5S20vUmluK0Y1b1ZFV0VVRGZ5c3J3ajkxNVlV?=
 =?utf-8?B?dWl1elJ0Y3NzejBDelpRQnQ4MXJzV01qOE5yeU93bk5XdjdFeEJZNVhZaGhI?=
 =?utf-8?B?V2NHQk9qYnU0bGYwMHlrT0dPMkpmRDlsVHB2Z1ZYa2VObTZPSlpXVFpTRjRw?=
 =?utf-8?B?SUdOM3NHNkNpVlhWYnQ5ZEs4RWhVclVDMEM0RTdMUjVKM2Rhd1M5OXRUVS9Q?=
 =?utf-8?B?Rk9QNWtLeEtkMlZjdHNleGp5SS91QjBiVkU5MzBHckd0ZDR6bDY0TXY0bEk2?=
 =?utf-8?B?Um5oSFo2Q3oxOXNmaDNjeTVJOFl3VEJ6UWJ6TWFxcTk2YXhMVXZqWk5HbXZW?=
 =?utf-8?B?SkNCOWV3WHIwSVVvbk1IOGpUc2NVMlF2encyTWx5QVVtc3crS0RZY1lMdnVZ?=
 =?utf-8?B?ODNwSWkzL2ZTVnNKWkNCUy80Yll3cWdoYS9CY2JxTjl6K25iZTJrOXhSZVBM?=
 =?utf-8?B?ZU5mN3d0c1JxczhqWGI3aHMxcGVLTlY5aFpGeDNvTTJRUk9jclhsZllLSElo?=
 =?utf-8?B?UE1wMkJheW9CbklZdnZ5WnRuK3p5NjlZSlNWZDZCVE55bFQ1TXNiUS9nQmJX?=
 =?utf-8?B?TFNNVjI1MXd1Kzk0SXdPN3UxUTIwMWtPR1V1ZCtmejRqM3oxT2tpNjBPNFAy?=
 =?utf-8?B?M2RsWURQL09rd0cwMG9sTStoUUtyMjl4ek1LVm96L3IvOUxXbXV6N0d1MTRh?=
 =?utf-8?B?K3ZsNDNPSytaRG1EZFdmdjh1c1A5dFVsSy9mWmw3eWhHRVpUa0F4SWNJQ2Iz?=
 =?utf-8?B?SlNmazlERG1rdVEwUXF3dnlwUklPejNja3pLNEM3NEl2Y2hqbm9Nemp3eS9M?=
 =?utf-8?B?U0lNUHZZRzlzckF3enlUMlI3eFVUdVp2UmtiUG80RG4vSDB4ZGJsKy9aWUxv?=
 =?utf-8?B?YjQyNHJLUWx2ZGtKVkI5TEFtRm9QUzZMckQvTXllM0ZtOVBvTXdOWEdUZ1pz?=
 =?utf-8?B?cmZxeC96OTFVSG15M1lpaHI2ODdpS05XN0cvVmhaNzVzckhMSHJZRlpBeUFy?=
 =?utf-8?B?WXcraGsvdkFaNXF2QzhwOHJvTXhSVDRyNzNwNzJwU3U5a1NOSVhMZk1pM0pp?=
 =?utf-8?B?WkU0WHZLNDZNR2FHb1h5djE3REg3Mys4bUw1SS9vOURIWVp6dUtyQlYwQ3N5?=
 =?utf-8?B?M3VpQ0Y0NGVhVktRRVJwcTh5NzR4TFFtd2F5UzVTTkprMEs1YzExdTU2c0g4?=
 =?utf-8?B?WmhnZ0tLVVpuUEJTU2xyNWs0dWkrMmxIdkViek9EeUlNRGZobCtjN1lDajRK?=
 =?utf-8?B?NlhPN3JyQkJYMXpSL1ZsR2Z1c0lyaW1WUHhMTGpNWFRBOE5Ib3hLSXhUY2RT?=
 =?utf-8?B?Ny9vVjh2d09ybmw4eUd0cWcvdHZYeHR0dFQrZjVXZ0VJYTZudDVmMHRjOXp2?=
 =?utf-8?B?NjQweG9ONTQvNGxJc3ZtSXlrQ0xLV2dwYkVTVWVLWU4yQ1g5dmVOWExTbFlv?=
 =?utf-8?B?Rm5Ec0o0aXJtMGVOcDdQR1o0aTlocFNodmhvZTgwQkxVVGZrRERSWndNdXYx?=
 =?utf-8?B?UVRhclQ0dGZINEhYZFpnSk9kbkRPUFFQSWVxZENuT0Z0cFdHZFJPQXFIYnVI?=
 =?utf-8?B?Um5sWlpOMUpYV09LWVVFSDdUdytMTlVwbmk1R0FOczhNOWFvV3VZVmljdnQ4?=
 =?utf-8?B?d1JQTlFMREhvbDZTYkxNOXFzYmdZYlhrZTVqcWcreVlNa2Z1blowNkVIcHM0?=
 =?utf-8?B?MWxZZXU2ak1MMzdBVlgxaWZmZDF2TUNBMFpQVURlc2JUaTl1UTJDOGhOeGJS?=
 =?utf-8?B?ZmJrK2ROV2grbnZkcE1DUHorSXdyYUdJTUhLYUpLMkNHb3Jha2V2ZFMvNXpW?=
 =?utf-8?B?RkJHaE9qZ216azRrT1NjL2QzU0ZpbzE5QThDNkFraXFsWldxbDd4RFluMFU4?=
 =?utf-8?B?WW1OemlaWGloeTlQRXQ0TVJzdzhyc09lZnQvSFhROHR1TWdNMnVBcUlUd2V6?=
 =?utf-8?B?a0VNMlYrKzhlYWpXNCtacUg3Y3JqdjJoUDZOVVZ2bDkwZFNnWGdXS0NtSHlV?=
 =?utf-8?B?VHdVYStvUmt4aXB3Q2psckNiMXhIYWx3VWEycXcxenJIVWdnUnp2U0xFSTFD?=
 =?utf-8?B?T1lUQzVpZnhEUHpCTThuMVJiV1M5cFlMN2RlU24vbU9GTTBpOWpSSVhPMVFI?=
 =?utf-8?B?amd0cVAxbmk3eEdpcDhtNS9Ra0g1YmxVNSsvbXNnT0pYSmg5WEVDYzA1ZUFC?=
 =?utf-8?B?UkFZUytHbVVBS0U0TmFDUzBpMFUrdk1CUnVaTzdEUWo0Y2o1L0lsWVhrYm51?=
 =?utf-8?B?aFMxT3hVRS9RNktoekp1d0thS1FjdmJLd1NWZG9DZmhLU2oyL1B0c0dwanBS?=
 =?utf-8?Q?JLHkapIeM95G6pdEH0?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3138567-db65-4543-f113-08de67e492ef
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 14:07:35.1940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l0R0dk47G5cLodvBiToWchzC5E2BxOZfIjjBRaXLuMdSoVHKFiP6B2jnNPGXyxra
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB9455
X-Spamd-Bar: -----
Message-ID-Hash: OH6T7IW5EVX7VVEIAN5BOYT6F4YNK2SP
X-Message-ID-Hash: OH6T7IW5EVX7VVEIAN5BOYT6F4YNK2SP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kernel-dev@igalia.com, Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel test robot <lkp@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Fix sparse warnings due __rcu annotations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OH6T7IW5EVX7VVEIAN5BOYT6F4YNK2SP/>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[igalia.com,gmail.com,linaro.org,padovan.org,intel.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email,amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C2988110140
X-Rspamd-Action: no action

T24gNi8xNi8yNSAxNzo1OSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IF9fcmN1IGFubm90YXRp
b25zIG9uIHRoZSByZXR1cm4gdHlwZXMgZnJvbSBkbWFfZmVuY2VfZHJpdmVyX25hbWUoKSBhbmQN
Cj4gZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoKSBjYXVzZSBzcGFyc2UgdG8gY29tcGxhaW4gYmVj
YXVzZSBib3RoIHRoZQ0KPiBjb25zdGFudCBzaWduYWxlZCBzdHJpbmdzLCBhbmQgdGhlIHN0cmlu
Z3MgcmV0dXJuIGJ5IHRoZSBkbWFfZmVuY2Vfb3BzIGFyZQ0KPiBub3QgX19yY3UgYW5ub3RhdGVk
Lg0KPiANCj4gRm9yIGEgc2ltcGxlIGZpeCBpdCBpcyBlYXNpZXN0IHRvIGNhc3QgdGhlbSB3aXRo
IF9fcmN1IGFkZGVkIGFuZCB1bmRvIHRoZQ0KPiBzbWFydHMgZnJvbSB0aGUgdHJhY3BvaW50cyBz
aWRlIG9mIHRoaW5ncy4gVGhlcmUgaXMgbm8gZnVuY3Rpb25hbCBjaGFuZ2UNCj4gc2luY2UgdGhl
IHJlc3QgaXMgbGVmdCBpbiBwbGFjZS4gTGF0ZXIgd2UgY2FuIGNvbnNpZGVyIGNoYW5naW5nIHRo
ZQ0KPiBkbWFfZmVuY2Vfb3BzIHJldHVybiB0eXBlcyB0b28sIGFuZCBoYW5kbGUgYWxsIHRoZSBp
bmRpdmlkdWFsIGRyaXZlcnMNCj4gd2hpY2ggZGVmaW5lIHRoZW0uDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NCj4gRml4ZXM6
IDUwNmFhOGIwMmE4ZCAoImRtYS1mZW5jZTogQWRkIHNhZmUgYWNjZXNzIGhlbHBlcnMgYW5kIGRv
Y3VtZW50IHRoZSBydWxlcyIpDQo+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtw
QGludGVsLmNvbT4NCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVpbGQt
YWxsLzIwMjUwNjE2MjIxNC4xZUE2OWhMZS1sa3BAaW50ZWwuY29tLw0KPiBDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KDQpTb3JyeSBmb3IgdGhlIGRlbGF5
ZWQgcmVwbHksIGNvbXBsZXRlZCBtaXNzZWQgdGhpcyBvbmUuDQoNClBhdGNoIGlzIHJldmlld2Vk
IGFuZCBwdXNoZWQgdG8gZHJtLW1pc2MtbmV4dC4gSXQgZXZlbnR1YWxseSB3aWxsIGJlIGJhY2tw
b3J0ZWQgdG8gc3RhYmxlIGtlcm5lbHMgYmVjYXVzZSBvZiB0aGUgZml4ZXMgdGFnLCBidXQgc2lu
Y2UgdGhpcyBpcyBub3QgYSBmdW5jdGlvbmFsIGJ1ZyBJIGRpZG4ndCBhZGRlZCBhIENDOnN0YWJs
ZSB0YWcuDQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyAgICAgIHwgIDggKysrKy0tLS0NCj4gIGluY2x1ZGUvdHJhY2UvZXZlbnRz
L2RtYV9mZW5jZS5oIHwgMzUgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMNCj4gaW5kZXggM2Y3OGM1NmI1OGRjLi5kYTYwZDRlNjhiODkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMNCj4gQEAgLTExMDksOSArMTEwOSw5IEBAIGNvbnN0IGNoYXIgX19yY3Ug
KmRtYV9mZW5jZV9kcml2ZXJfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4gIAkJCSAi
UkNVIHByb3RlY3Rpb24gaXMgcmVxdWlyZWQgZm9yIHNhZmUgYWNjZXNzIHRvIHJldHVybmVkIHN0
cmluZyIpOw0KPiAgDQo+ICAJaWYgKCF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPiAtCQlyZXR1cm4gZmVuY2UtPm9wcy0+Z2V0X2RyaXZlcl9u
YW1lKGZlbmNlKTsNCj4gKwkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopZmVuY2UtPm9wcy0+
Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKTsNCj4gIAllbHNlDQo+IC0JCXJldHVybiAiZGV0YWNoZWQt
ZHJpdmVyIjsNCj4gKwkJcmV0dXJuIChjb25zdCBjaGFyIF9fcmN1ICopImRldGFjaGVkLWRyaXZl
ciI7DQo+ICB9DQo+ICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9kcml2ZXJfbmFtZSk7DQo+ICAN
Cj4gQEAgLTExNDEsOCArMTE0MSw4IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90aW1l
bGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgCQkJICJSQ1UgcHJvdGVjdGlv
biBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0dXJuZWQgc3RyaW5nIik7DQo+ICAN
Cj4gIAlpZiAoIXRlc3RfYml0KERNQV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5m
bGFncykpDQo+IC0JCXJldHVybiBmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25hbWUoZmVuY2UpOw0K
PiArCQlyZXR1cm4gKGNvbnN0IGNoYXIgX19yY3UgKilmZW5jZS0+b3BzLT5nZXRfZHJpdmVyX25h
bWUoZmVuY2UpOw0KPiAgCWVsc2UNCj4gLQkJcmV0dXJuICJzaWduYWxlZC10aW1lbGluZSI7DQo+
ICsJCXJldHVybiAoY29uc3QgY2hhciBfX3JjdSAqKSJzaWduYWxlZC10aW1lbGluZSI7DQo+ICB9
DQo+ICBFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKTsNCj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oIGIvaW5jbHVkZS90cmFjZS9ldmVu
dHMvZG1hX2ZlbmNlLmgNCj4gaW5kZXggNDgxNGE2NWI2OGRjLi4zYWJiYTQ1YzA2MDEgMTAwNjQ0
DQo+IC0tLSBhL2luY2x1ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQo+ICsrKyBiL2luY2x1
ZGUvdHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oDQo+IEBAIC05LDM3ICs5LDEyIEBADQo+ICANCj4g
IHN0cnVjdCBkbWFfZmVuY2U7DQo+ICANCj4gLURFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNl
LA0KPiAtDQo+IC0JVFBfUFJPVE8oc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPiAtDQo+IC0J
VFBfQVJHUyhmZW5jZSksDQo+IC0NCj4gLQlUUF9TVFJVQ1RfX2VudHJ5KA0KPiAtCQlfX3N0cmlu
Zyhkcml2ZXIsIGRtYV9mZW5jZV9kcml2ZXJfbmFtZShmZW5jZSkpDQo+IC0JCV9fc3RyaW5nKHRp
bWVsaW5lLCBkbWFfZmVuY2VfdGltZWxpbmVfbmFtZShmZW5jZSkpDQo+IC0JCV9fZmllbGQodW5z
aWduZWQgaW50LCBjb250ZXh0KQ0KPiAtCQlfX2ZpZWxkKHVuc2lnbmVkIGludCwgc2Vxbm8pDQo+
IC0JKSwNCj4gLQ0KPiAtCVRQX2Zhc3RfYXNzaWduKA0KPiAtCQlfX2Fzc2lnbl9zdHIoZHJpdmVy
KTsNCj4gLQkJX19hc3NpZ25fc3RyKHRpbWVsaW5lKTsNCj4gLQkJX19lbnRyeS0+Y29udGV4dCA9
IGZlbmNlLT5jb250ZXh0Ow0KPiAtCQlfX2VudHJ5LT5zZXFubyA9IGZlbmNlLT5zZXFubzsNCj4g
LQkpLA0KPiAtDQo+IC0JVFBfcHJpbnRrKCJkcml2ZXI9JXMgdGltZWxpbmU9JXMgY29udGV4dD0l
dSBzZXFubz0ldSIsDQo+IC0JCSAgX19nZXRfc3RyKGRyaXZlciksIF9fZ2V0X3N0cih0aW1lbGlu
ZSksIF9fZW50cnktPmNvbnRleHQsDQo+IC0JCSAgX19lbnRyeS0+c2Vxbm8pDQo+IC0pOw0KPiAt
DQo+ICAvKg0KPiAgICogU2FmZSBvbmx5IGZvciBjYWxsIHNpdGVzIHdoaWNoIGFyZSBndWFyYW50
ZWVkIHRvIG5vdCByYWNlIHdpdGggZmVuY2UNCj4gICAqIHNpZ25hbGluZyxob2xkaW5nIHRoZSBm
ZW5jZS0+bG9jayBhbmQgaGF2aW5nIGNoZWNrZWQgZm9yIG5vdCBzaWduYWxlZCwgb3IgdGhlDQo+
ICAgKiBzaWduYWxpbmcgcGF0aCBpdHNlbGYuDQo+ICAgKi8NCj4gLURFQ0xBUkVfRVZFTlRfQ0xB
U1MoZG1hX2ZlbmNlX3Vuc2lnbmFsZWQsDQo+ICtERUNMQVJFX0VWRU5UX0NMQVNTKGRtYV9mZW5j
ZSwNCj4gIA0KPiAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4gIA0KPiBA
QCAtNjQsMTQgKzM5LDE0IEBAIERFQ0xBUkVfRVZFTlRfQ0xBU1MoZG1hX2ZlbmNlX3Vuc2lnbmFs
ZWQsDQo+ICAJCSAgX19lbnRyeS0+c2Vxbm8pDQo+ICApOw0KPiAgDQo+IC1ERUZJTkVfRVZFTlQo
ZG1hX2ZlbmNlX3Vuc2lnbmFsZWQsIGRtYV9mZW5jZV9lbWl0LA0KPiArREVGSU5FX0VWRU5UKGRt
YV9mZW5jZSwgZG1hX2ZlbmNlX2VtaXQsDQo+ICANCj4gIAlUUF9QUk9UTyhzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSksDQo+ICANCj4gIAlUUF9BUkdTKGZlbmNlKQ0KPiAgKTsNCj4gIA0KPiAtREVG
SU5FX0VWRU5UKGRtYV9mZW5jZV91bnNpZ25hbGVkLCBkbWFfZmVuY2VfaW5pdCwNCj4gK0RFRklO
RV9FVkVOVChkbWFfZmVuY2UsIGRtYV9mZW5jZV9pbml0LA0KPiAgDQo+ICAJVFBfUFJPVE8oc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2UpLA0KPiAgDQo+IEBAIC04NSwxNCArNjAsMTQgQEAgREVGSU5F
X0VWRU5UKGRtYV9mZW5jZSwgZG1hX2ZlbmNlX2Rlc3Ryb3ksDQo+ICAJVFBfQVJHUyhmZW5jZSkN
Cj4gICk7DQo+ICANCj4gLURFRklORV9FVkVOVChkbWFfZmVuY2VfdW5zaWduYWxlZCwgZG1hX2Zl
bmNlX2VuYWJsZV9zaWduYWwsDQo+ICtERUZJTkVfRVZFTlQoZG1hX2ZlbmNlLCBkbWFfZmVuY2Vf
ZW5hYmxlX3NpZ25hbCwNCj4gIA0KPiAgCVRQX1BST1RPKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
KSwNCj4gIA0KPiAgCVRQX0FSR1MoZmVuY2UpDQo+ICApOw0KPiAgDQo+IC1ERUZJTkVfRVZFTlQo
ZG1hX2ZlbmNlX3Vuc2lnbmFsZWQsIGRtYV9mZW5jZV9zaWduYWxlZCwNCj4gK0RFRklORV9FVkVO
VChkbWFfZmVuY2UsIGRtYV9mZW5jZV9zaWduYWxlZCwNCj4gIA0KPiAgCVRQX1BST1RPKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKSwNCj4gIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
