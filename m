Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C54F4AB3143
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 10:13:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4DC745539
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 08:13:45 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2075.outbound.protection.outlook.com [40.107.244.75])
	by lists.linaro.org (Postfix) with ESMTPS id 1572243CF9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 08:13:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=loVgosQD;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.75 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sD+NQf4ab2YG+dDDvr8g+3lgnedRPJN4A450or2VvXFA4NOL/xPix9mNNc1xPDT51jdnQ4yPev8E1Fy5IVcvMyBPm03PaZ/PvKL22npS4yfchz6ceqVB+NZ+mkJGdPTf4YIutVFtT9YDY5pB4i0Q+VgPP7dvDp+i1leIU7MPrjQCMi/uQN9CSCDynxpXUuxKjeFBYo3XBoQTTQqs7JO2go7br7y2DPknBQGeAMe0bGfxZdl2nSK2qD0OZZDNGSIB4PYJ5KKSnoKe5em1i5sDz1xGeZq4ALfRXfruZnXotth6tmIQpynPoMDwBEcvDZ4hTK3cS9H/RnyGyzhUgg5KEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+pNousaax3awZyPn8Ax5SR+mtjh0RPluEtq/PmtG2s=;
 b=fPxfFyW5Bo4ZZHOoMB2hnJhSGOEBBIgP0edIsGfiEfrV1yhv+xYsif35H47AMWJABuKH167FR0N+aW+d7QHYDbzZTu8G85Djvt+QcnseJ651fR0aTA5YO94cCiehTiFKAuqML5LpmUx2f9Uj5rUEwRpWdhHI8DVgi1xPbq/Rwf/sMKTf6CgyCwgKhoyBR1gcbUZ4NVeQ4omJhr/mESr1nK5RqU9A4r1dyjxi+j3Zkm5pBo4lyUuUumFusppiuIuy7EtJAPkgR72yjf23RZuf4S+til6ZxuHhnVSGzGEfIIlN+pUMkU32tmQ+F6l9zpOyp9XKAFaI+0uoEornTma1qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+pNousaax3awZyPn8Ax5SR+mtjh0RPluEtq/PmtG2s=;
 b=loVgosQD38vCUm2ZJZJDnfWpWs9mLb/GbLAttt8C16+OVQM3/qLW6gM5esREi+SsEXDj1WkX/rMEo/sSwDdO0TkrjpN/NesThAwoM2NJCZ3lMsB+/BzwmJqRMuPAesNsodhwd+IS4oAdxdiU3/MbcyUACCQKJ5LbZiws8D8cNkE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PPF5EBD457EF.namprd12.prod.outlook.com (2603:10b6:61f:fc00::610) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.22; Mon, 12 May
 2025 08:13:29 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 08:13:29 +0000
Message-ID: <efb5b660-00b2-4505-a6b6-88903bb3fd67@amd.com>
Date: Mon, 12 May 2025 10:13:19 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
 <20250509153352.7187-3-tvrtko.ursulin@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250509153352.7187-3-tvrtko.ursulin@igalia.com>
X-ClientProxiedBy: FR4P281CA0016.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PPF5EBD457EF:EE_
X-MS-Office365-Filtering-Correlation-Id: f2dfd7d1-bef7-4995-d699-08dd912ce06e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZXZpSHc0S3pzc3V0MFZWZjRRREFrQWM2U1dVNEZUbmhvMXhocXdaa2VYL3ZY?=
 =?utf-8?B?aFV3ZDZscmhxZkhoTGtYbzZvdjJnYmNRNHl0bGtHKzE5TmF1dEdrcWdQTzh5?=
 =?utf-8?B?UkVrMG9XYTRFOVJUb01qUzFaazZqT2R0Q21RdnZvb25xMXNSbmlCSVptK0Rk?=
 =?utf-8?B?b1kwb1NJMjJMYXZmS0ZQM1F2SVhYcGxNNnUycVJJeitGQmljU29RZ09OalAy?=
 =?utf-8?B?TlZ3d1ZKTCt4NGNKcXJZVFZIOXoxUXk4MkFydnhXMFg0ZEE1SFg0aWRWeW9K?=
 =?utf-8?B?L0xBWjN6RlRXRS9PRjZTcThqK1VmVk5EazR1d2NPRUdiTnl0d2l6Mmd2Z2dq?=
 =?utf-8?B?NXhFbTdmdXh3VkcwS0NpeWluaEgyUkxsZkQyaGtOVWJjTlZSYUVrdmJyVmZo?=
 =?utf-8?B?bU1PTVMySWJGK0tIWjdNb2dENWFFTkNnaUR0N3VZMHFjRkY1ZUQrU3ZBbGUw?=
 =?utf-8?B?eWJUOVcxUGh4SS9CS2d4WGdnLzBzbW1oSVhMbksxTjVvRnhPMFp5MndLczlW?=
 =?utf-8?B?a1ZiZ1N5ZENOSW5uaytQcVc5cHo1RFZBRTVmbERiZmNHbWtQU3ZDeFVYNVFD?=
 =?utf-8?B?eHl2OEFac3RnbEJVa29Ua09uWW9TeHlyQm41SXB6Vkt4S3E3d2hhZ2JYMUVG?=
 =?utf-8?B?WHFXRFdtMlJ6YlMvcGZibUNaaU5tUGY2SEpyVkNQNSsxTlBJUTNiRHpCQ3h3?=
 =?utf-8?B?TlNZOGI0eFk0OGVPcFZtQjYrVmk3c2VFZm9wU3d6ckNnek9SdjlqQmFpbW1G?=
 =?utf-8?B?L0VVdEF5Rm9PMVBWWW5MUWpJekdvUklKdGN3bWovQm9SdWpJTUtEbjNUa3Vl?=
 =?utf-8?B?ZEo2UWgrcG43VFVGT0k4bWR3WHJqT0pLU2s2SnJlbmljKzRxWnVoMng4QjhI?=
 =?utf-8?B?ZGJ6S2thZ2xsME9zYTJDVFFwWER5b09RSmU5RDA3T2pOUWZHQWN0eG1EUUFM?=
 =?utf-8?B?SVRtazBmSzdab3gwWGl0K0F1ckZseVErVkhYaXZuT1ZLaEt3dWF6c1RBTHV2?=
 =?utf-8?B?K3psSU5BZWNNUVQ2RjAvYlR1K3JYVHFXUHdLVHpWOWVIL3hKK1FnOWlKNUND?=
 =?utf-8?B?bnBYWFhLTEZVY2kzcDBNQ2FjOCsvSEhDWnlMdWE5SDJVQUNmWGJ0RmFpTlNn?=
 =?utf-8?B?SGcvTzA1UXhJZXJqNkdQSjlybThRQlAwcXdad25uRXZHbWFGdHJLQ3lUelp3?=
 =?utf-8?B?K09VSUlrOTN5ZzU4akU5STIxdVRseXdiOUVzdXo0bndvVlowcTB4ZW1sZW80?=
 =?utf-8?B?RnFUYi8vYVNEMjg5ZUFOYmF2ZmFDRk1PekJxQVB3NTRHemJmMDBueGlTdWxC?=
 =?utf-8?B?QXlET2N0RHlScitQN0cxRk5sWGx4MWhNTzJ4QUdlN3Bubnp5djFZV0tDcnc4?=
 =?utf-8?B?eWpwNFUxeklDMzVJMUREUWlOM2g0M2ZINE0wbnJGSUhueXJZWmJ2NGRvcEZV?=
 =?utf-8?B?aFFmdVg0djNuazdlWlVFV1lIdUZhdVQ3YU9FeVVhaFdscEl6VFpnWGl6eFhj?=
 =?utf-8?B?b20rRG9xTXdLY0JkbzczdE9ZcGhGTzcyQzdCNlQ5R0Z1WlcrQldjWGVUcXdM?=
 =?utf-8?B?ZjZXSVh5YnBxS205bUwzc0p3b2taMzhjaks1TFZIQTlWRlNYbWVkdWJzZUJG?=
 =?utf-8?B?bko4dnp4OE9QZERsakl1K1VKMjVsT3VWTko0T3VadDVoN2FqSjlkRGxGTDFy?=
 =?utf-8?B?SFVmTDZLc3lYTE50RU5VYUkzTlNtaEViV25OM3B3SGEraDFVU0JmYnoxYytw?=
 =?utf-8?B?YkM5YjdHNE54Zm00LzZNak1vamc1TWdhL1FNTmtoRUk3L0hVNlBHYW1BQktp?=
 =?utf-8?B?bXk4UnEwZVV3c0lKOUxiSS91dUxhUWd0QlpMVGJXcXhwMGJ4ZngzUVp6dTBG?=
 =?utf-8?B?dHBMa1NVM2JKdUdZVWd3SEhHV2ZZWDlDcWdTTTh0a1dia21lZDllRmNmZ1do?=
 =?utf-8?Q?rdWOOAnJqhg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(1800799024)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S0piZm4rV0tuWTdEZEpUMkJuZXpZNG10WlgwUFN1WlNLZ1lLM1YydjFDMFdD?=
 =?utf-8?B?eGRueUVOZk5WbTUxL1YxK2ZWdGlYVmJjM0hYMGRJcm41TkdNUk5odFFSZ0FR?=
 =?utf-8?B?TXFUdGhQMXlaRm1LNGY3L3NYZCtEYU4vckhzUGI2MGN2Mk5LUEU2MVhyN2xy?=
 =?utf-8?B?aDlGaUp1Z1J0ckJwRDNaYjRIRllWVnY1VlpBQkM0dWZaUFByWmMzZnd6VEtT?=
 =?utf-8?B?ZmRlRC93dm5nK20wVllqUVpCZVRuZjVIK096eVNnNHNUVDJQSG43U1hyRWRB?=
 =?utf-8?B?TG83TlBpV2hSaVU4czBubHgzT1RSUDdhcWdGdStBSG5qT3hnZDRMVFNFMHVi?=
 =?utf-8?B?R1c5VGRXczRhSEplQnZSNjJCQzhtVjhEUzNoS2dsOHdhd25aTGNrOFBVZzJx?=
 =?utf-8?B?UjVMdnNxd0E3d3c1cGRUSlBXZ0NDcktmRzBKL2N5d0tRcHhMUld4MHhxeTZW?=
 =?utf-8?B?Y0RyeHF5ZElhUkR3bndvVlluRmNMUi9Yd0NSV3NGL3E0Mk5Wb2NOa0psM0Fy?=
 =?utf-8?B?Q2JneTdKeUNMcnJlbGdIcS9ZanQrV2x1Sjk1K2dIdHRZcEZnajJEeUxzT3dT?=
 =?utf-8?B?aE4vcG9JV2EveUtXMzNPcmNkbmtJUjdZUzZCODJvY3ZMTGRJcWw2QzRYR3Z0?=
 =?utf-8?B?MXVYd2hwQU9IM2E3RDV3YnhjNkJLK2lxZjQ3OWVTcTNGaURyUFZUcGExcWZE?=
 =?utf-8?B?K3NDeUsyY3ZueTMxekN0aDBuaGMwb3k0Sjg3QXBlcTF3c3hoeXl6MGhTYXQ4?=
 =?utf-8?B?UUdleEZmTTRyRFd2N0FYTGRVVytnUkdScnpTVDZ2STd1NzYzNUpjR2kzNkZy?=
 =?utf-8?B?ZUgxdlJJZytYN3E5dEx2aUQ4QTJvTER1VTNBVHdJZ3NINTVpN0g5OXROZFQ5?=
 =?utf-8?B?WlV6Zno3eEd6eXhxaDYxeGVtdlRXV0ZVUEJza0NCSGtudFpnNEJIWUpLUXkw?=
 =?utf-8?B?byt6OXBOaFNUQnI5TWZBYlNITk1GR2pyalRhaXNOYlNYRXBwMHFHYXhnZ2to?=
 =?utf-8?B?QnN6cDF2ZkU5R0lpdW5McHcwbWZSa1BVUlZhMjFMeWtKL2JHOTZ2emZONmND?=
 =?utf-8?B?d0U4SVF4M2dCbW1jZ3c1N01MQmY0T1Urc1Q4RGQxODlDQUIwZ3A5ZVNOMkl0?=
 =?utf-8?B?MmliRFR5QjNBRHkrbmg5NXdPWmJrS0hSckh5MHpFQW9SRG0wdTRZYVltSTZM?=
 =?utf-8?B?OFBGT3d2MGN3aDhjOUl1MTByRStFdExXYmY0WGhPd3ByZmFRWHc3Ui9yQThX?=
 =?utf-8?B?djZjYUdPZHF3a0ZxSDhKak55ZkhBUjZOeU0xZjgwUGFIajJxR1c3RHo3MklS?=
 =?utf-8?B?K2d5YzlvclZUU3JyMkcvNzJOSXdHdkZrOE1tWWZBZ2hESlo1cndlNzRybFhO?=
 =?utf-8?B?UmdFcGMrbHIyY0JsTUdkazZlRWtqcU1iVzZkVnFSOE16RHlMQUduVTV6VXZo?=
 =?utf-8?B?YXByRk9wNWl3cDY3ZmRHeWNrZnp5K1Bnc2FGTjFvSVRWUUZ2TjlFSG83RW1k?=
 =?utf-8?B?dzJsejNBWm1WRnJpRjRvWWRhRFhzNExmSlpxalJsMVJaTjhEVm5qMVNFSTVM?=
 =?utf-8?B?TElucDBiTFZXMitLNzFzM0Z5Znhab1BKM0ovSVk3RDExYzgzektzY2Z4ajlZ?=
 =?utf-8?B?dHR5N1Bhd2t1aEZUcGV6cnBqU2tDUWVHRjE5b1RtL0NDV2U4RVlkV1grUHhE?=
 =?utf-8?B?MXlvazJaT1BEQkI0VW1GcmJrdXB1bktmM2JKMDduOTl3c2R5c1F2Qldpb0Jk?=
 =?utf-8?B?ZGNxRndDYVJmZjI4cThLdTRzT3ppeFE3V1UvbXpteVlWei9OTEJvaVJuaXQw?=
 =?utf-8?B?Z05jaHd3aDd3RnBPZ1BZd2Q3WUc5WDh4WUVxK3pDZlc3TllOaVFIOGZPWkdt?=
 =?utf-8?B?Y2hHT2JHN0hLUlgrLzhkK3BUaFJjaTRjcUZrQUpRUWpzUnNoUEFSQ1NGSjZ1?=
 =?utf-8?B?czJxcWdhbndtcE1yTFNPUlZjcSttKzMzSDVGVG1hU2s4ZmZtR2x5S2VSNHBH?=
 =?utf-8?B?bzFSaWp0S0w2M0htUGt2TFRRVElBak5JakplUFJPSUVjc0lBWVZsOXd3NTc5?=
 =?utf-8?B?OHlndzMySjJwNE1tcVVORWpzREhTS3M3MnpaUTB4ZVM3UDBMK1ovOWt4UUQ0?=
 =?utf-8?Q?mFA/rsAKw+/EkKGkcWAGHhb8V?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2dfd7d1-bef7-4995-d699-08dd912ce06e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 08:13:28.9268
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qx1+04Aok7pXRXDVeHBclWs/K1vlHaGoT6MqBi0LEkyZXOydZ1N/sOhxKimB8mPB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPF5EBD457EF
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1572243CF9
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.75:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.244.75:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: QEPH7NJOE3NEZ7GPLH4CSGBO5VPLFT3V
X-Message-ID-Hash: QEPH7NJOE3NEZ7GPLH4CSGBO5VPLFT3V
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 02/13] dma-fence: Change signature of __dma_fence_is_later
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QEPH7NJOE3NEZ7GPLH4CSGBO5VPLFT3V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS85LzI1IDE3OjMzLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToNCj4gV2l0aCB0aGUgZ29hbCBv
ZiByZWR1Y2luZyB0aGUgbmVlZCBmb3IgZHJpdmVycyB0byB0b3VjaCAoYW5kIGRlcmVmZXJlbmNl
KQ0KPiBmZW5jZS0+b3BzLCB3ZSBjaGFuZ2UgdGhlIHByb3RvdHlwZSBvZiBfX2RtYV9mZW5jZV9p
c19sYXRlcigpIHRvIHRha2UNCj4gZmVuY2UgaW5zdGVhZCBvZiBmZW5jZS0+b3BzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+
DQoNClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMgfCAgMiAr
LQ0KPiAgZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyAgICAgICAgIHwgIDIgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS94ZS94ZV9od19mZW5jZS5jICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0v
eGUveGVfc2NoZWRfam9iLmMgfCAxNCArKysrKysrKy0tLS0tLQ0KPiAgaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCAgICAgICAgIHwgIDkgKysrKy0tLS0tDQo+ICA1IGZpbGVzIGNoYW5nZWQsIDE1
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2Ut
Y2hhaW4uYw0KPiBpbmRleCA5NjYzYmExYmI2YWMuLjkwNDI0ZjIzZmQ3MyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPiBAQCAtMjUyLDcgKzI1Miw3IEBAIHZvaWQgZG1hX2Zl
bmNlX2NoYWluX2luaXQoc3RydWN0IGRtYV9mZW5jZV9jaGFpbiAqY2hhaW4sDQo+ICAJY2hhaW4t
PnByZXZfc2Vxbm8gPSAwOw0KPiAgDQo+ICAJLyogVHJ5IHRvIHJldXNlIHRoZSBjb250ZXh0IG9m
IHRoZSBwcmV2aW91cyBjaGFpbiBub2RlLiAqLw0KPiAtCWlmIChwcmV2X2NoYWluICYmIF9fZG1h
X2ZlbmNlX2lzX2xhdGVyKHNlcW5vLCBwcmV2LT5zZXFubywgcHJldi0+b3BzKSkgew0KPiArCWlm
IChwcmV2X2NoYWluICYmIF9fZG1hX2ZlbmNlX2lzX2xhdGVyKHByZXYsIHNlcW5vLCBwcmV2LT5z
ZXFubykpIHsNCj4gIAkJY29udGV4dCA9IHByZXYtPmNvbnRleHQ7DQo+ICAJCWNoYWluLT5wcmV2
X3NlcW5vID0gcHJldi0+c2Vxbm87DQo+ICAJfSBlbHNlIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZG1hLWJ1Zi9zd19zeW5jLmMgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+IGluZGV4
IDRmMjdlZTkzYTAwYy4uM2MyMGYxZDMxY2Y1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvc3dfc3luYy5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMNCj4gQEAgLTE3
MCw3ICsxNzAsNyBAQCBzdGF0aWMgYm9vbCB0aW1lbGluZV9mZW5jZV9zaWduYWxlZChzdHJ1Y3Qg
ZG1hX2ZlbmNlICpmZW5jZSkNCj4gIHsNCj4gIAlzdHJ1Y3Qgc3luY190aW1lbGluZSAqcGFyZW50
ID0gZG1hX2ZlbmNlX3BhcmVudChmZW5jZSk7DQo+ICANCj4gLQlyZXR1cm4gIV9fZG1hX2ZlbmNl
X2lzX2xhdGVyKGZlbmNlLT5zZXFubywgcGFyZW50LT52YWx1ZSwgZmVuY2UtPm9wcyk7DQo+ICsJ
cmV0dXJuICFfX2RtYV9mZW5jZV9pc19sYXRlcihmZW5jZSwgZmVuY2UtPnNlcW5vLCBwYXJlbnQt
PnZhbHVlKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgdGltZWxpbmVfZmVuY2Vfc2V0X2Rl
YWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKQ0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2h3X2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9k
cm0veGUveGVfaHdfZmVuY2UuYw0KPiBpbmRleCAwYjRmMTJiZTM2OTIuLjAzZWI4YzZkMTYxNiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2h3X2ZlbmNlLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX2h3X2ZlbmNlLmMNCj4gQEAgLTE2NSw3ICsxNjUsNyBAQCBz
dGF0aWMgYm9vbCB4ZV9od19mZW5jZV9zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVu
Y2UpDQo+ICAJdTMyIHNlcW5vID0geGVfbWFwX3JkKHhlLCAmZmVuY2UtPnNlcW5vX21hcCwgMCwg
dTMyKTsNCj4gIA0KPiAgCXJldHVybiBkbWFfZmVuY2UtPmVycm9yIHx8DQo+IC0JCSFfX2RtYV9m
ZW5jZV9pc19sYXRlcihkbWFfZmVuY2UtPnNlcW5vLCBzZXFubywgZG1hX2ZlbmNlLT5vcHMpOw0K
PiArCQkhX19kbWFfZmVuY2VfaXNfbGF0ZXIoZG1hX2ZlbmNlLCBkbWFfZmVuY2UtPnNlcW5vLCBz
ZXFubyk7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBib29sIHhlX2h3X2ZlbmNlX2VuYWJsZV9zaWdu
YWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3hlL3hlX3NjaGVkX2pvYi5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX3NjaGVk
X2pvYi5jDQo+IGluZGV4IDE5MDVjYTU5MDk2NS4uZjBhNmNlNjEwOTQ4IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0veGUveGVfc2NoZWRfam9iLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL3hlL3hlX3NjaGVkX2pvYi5jDQo+IEBAIC0yMTYsMTUgKzIxNiwxNyBAQCB2b2lkIHhlX3Nj
aGVkX2pvYl9zZXRfZXJyb3Ioc3RydWN0IHhlX3NjaGVkX2pvYiAqam9iLCBpbnQgZXJyb3IpDQo+
ICANCj4gIGJvb2wgeGVfc2NoZWRfam9iX3N0YXJ0ZWQoc3RydWN0IHhlX3NjaGVkX2pvYiAqam9i
KQ0KPiAgew0KPiArCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gZG1hX2ZlbmNlX2NoYWluX2Nv
bnRhaW5lZChqb2ItPmZlbmNlKTsNCj4gIAlzdHJ1Y3QgeGVfbHJjICpscmMgPSBqb2ItPnEtPmxy
Y1swXTsNCj4gIA0KPiAtCXJldHVybiAhX19kbWFfZmVuY2VfaXNfbGF0ZXIoeGVfc2NoZWRfam9i
X2xyY19zZXFubyhqb2IpLA0KPiAtCQkJCSAgICAgeGVfbHJjX3N0YXJ0X3NlcW5vKGxyYyksDQo+
IC0JCQkJICAgICBkbWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKGpvYi0+ZmVuY2UpLT5vcHMpOw0K
PiArCXJldHVybiAhX19kbWFfZmVuY2VfaXNfbGF0ZXIoZmVuY2UsDQo+ICsJCQkJICAgICB4ZV9z
Y2hlZF9qb2JfbHJjX3NlcW5vKGpvYiksDQo+ICsJCQkJICAgICB4ZV9scmNfc3RhcnRfc2Vxbm8o
bHJjKSk7DQo+ICB9DQo+ICANCj4gIGJvb2wgeGVfc2NoZWRfam9iX2NvbXBsZXRlZChzdHJ1Y3Qg
eGVfc2NoZWRfam9iICpqb2IpDQo+ICB7DQo+ICsJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UgPSBk
bWFfZmVuY2VfY2hhaW5fY29udGFpbmVkKGpvYi0+ZmVuY2UpOw0KPiAgCXN0cnVjdCB4ZV9scmMg
KmxyYyA9IGpvYi0+cS0+bHJjWzBdOw0KPiAgDQo+ICAJLyoNCj4gQEAgLTIzMiw5ICsyMzQsOSBA
QCBib29sIHhlX3NjaGVkX2pvYl9jb21wbGV0ZWQoc3RydWN0IHhlX3NjaGVkX2pvYiAqam9iKQ0K
PiAgCSAqIHBhcmFsbGVsIGhhbmRzaGFrZSBpcyBkb25lLg0KPiAgCSAqLw0KPiAgDQo+IC0JcmV0
dXJuICFfX2RtYV9mZW5jZV9pc19sYXRlcih4ZV9zY2hlZF9qb2JfbHJjX3NlcW5vKGpvYiksDQo+
IC0JCQkJICAgICB4ZV9scmNfc2Vxbm8obHJjKSwNCj4gLQkJCQkgICAgIGRtYV9mZW5jZV9jaGFp
bl9jb250YWluZWQoam9iLT5mZW5jZSktPm9wcyk7DQo+ICsJcmV0dXJuICFfX2RtYV9mZW5jZV9p
c19sYXRlcihmZW5jZSwNCj4gKwkJCQkgICAgIHhlX3NjaGVkX2pvYl9scmNfc2Vxbm8oam9iKSwN
Cj4gKwkJCQkgICAgIHhlX2xyY19zZXFubyhscmMpKTsNCj4gIH0NCj4gIA0KPiAgdm9pZCB4ZV9z
Y2hlZF9qb2JfYXJtKHN0cnVjdCB4ZV9zY2hlZF9qb2IgKmpvYikNCj4gZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGlu
ZGV4IGIxMjc3Njg4M2QxNC4uNDhiNTIwMmM1MzFkIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAg
LTQ0MSwyMSArNDQxLDIwIEBAIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSkNCj4gIA0KPiAgLyoqDQo+ICAgKiBfX2RtYV9mZW5jZV9pc19sYXRlciAtIHJldHVy
biBpZiBmMSBpcyBjaHJvbm9sb2dpY2FsbHkgbGF0ZXIgdGhhbiBmMg0KPiArICogQGZlbmNlOiBm
ZW5jZSBpbiB3aG9zZSBjb250ZXh0IHRvIGRvIHRoZSBjb21wYXJpc29uDQo+ICAgKiBAZjE6IHRo
ZSBmaXJzdCBmZW5jZSdzIHNlcW5vDQo+ICAgKiBAZjI6IHRoZSBzZWNvbmQgZmVuY2UncyBzZXFu
byBmcm9tIHRoZSBzYW1lIGNvbnRleHQNCj4gLSAqIEBvcHM6IGRtYV9mZW5jZV9vcHMgYXNzb2Np
YXRlZCB3aXRoIHRoZSBzZXFubw0KPiAgICoNCj4gICAqIFJldHVybnMgdHJ1ZSBpZiBmMSBpcyBj
aHJvbm9sb2dpY2FsbHkgbGF0ZXIgdGhhbiBmMi4gQm90aCBmZW5jZXMgbXVzdCBiZQ0KPiAgICog
ZnJvbSB0aGUgc2FtZSBjb250ZXh0LCBzaW5jZSBhIHNlcW5vIGlzIG5vdCBjb21tb24gYWNyb3Nz
IGNvbnRleHRzLg0KPiAgICovDQo+IC1zdGF0aWMgaW5saW5lIGJvb2wgX19kbWFfZmVuY2VfaXNf
bGF0ZXIodTY0IGYxLCB1NjQgZjIsDQo+IC0JCQkJCWNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3Bz
ICpvcHMpDQo+ICtzdGF0aWMgaW5saW5lIGJvb2wgX19kbWFfZmVuY2VfaXNfbGF0ZXIoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UsIHU2NCBmMSwgdTY0IGYyKQ0KPiAgew0KPiAgCS8qIFRoaXMgaXMg
Zm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgd2l0aCBkcml2ZXJzIHdoaWNoIGNhbiBvbmx5IGhh
bmRsZQ0KPiAgCSAqIDMyYml0IHNlcXVlbmNlIG51bWJlcnMuIFVzZSBhIDY0Yml0IGNvbXBhcmUg
d2hlbiB0aGUgZHJpdmVyIHNheXMgdG8NCj4gIAkgKiBkbyBzby4NCj4gIAkgKi8NCj4gLQlpZiAo
b3BzLT51c2VfNjRiaXRfc2Vxbm8pDQo+ICsJaWYgKGZlbmNlLT5vcHMtPnVzZV82NGJpdF9zZXFu
bykNCj4gIAkJcmV0dXJuIGYxID4gZjI7DQo+ICANCj4gIAlyZXR1cm4gKGludCkobG93ZXJfMzJf
Yml0cyhmMSkgLSBsb3dlcl8zMl9iaXRzKGYyKSkgPiAwOw0KPiBAQCAtNDc1LDcgKzQ3NCw3IEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfbGF0ZXIoc3RydWN0IGRtYV9mZW5jZSAq
ZjEsDQo+ICAJaWYgKFdBUk5fT04oZjEtPmNvbnRleHQgIT0gZjItPmNvbnRleHQpKQ0KPiAgCQly
ZXR1cm4gZmFsc2U7DQo+ICANCj4gLQlyZXR1cm4gX19kbWFfZmVuY2VfaXNfbGF0ZXIoZjEtPnNl
cW5vLCBmMi0+c2Vxbm8sIGYxLT5vcHMpOw0KPiArCXJldHVybiBfX2RtYV9mZW5jZV9pc19sYXRl
cihmMSwgZjEtPnNlcW5vLCBmMi0+c2Vxbm8pOw0KPiAgfQ0KPiAgDQo+ICAvKioNCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
