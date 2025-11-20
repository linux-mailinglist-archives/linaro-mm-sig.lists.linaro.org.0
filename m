Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FAC742A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 14:22:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DBC3D3F905
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 13:22:53 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011030.outbound.protection.outlook.com [40.93.194.30])
	by lists.linaro.org (Postfix) with ESMTPS id 43AB13F7DE
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 13:22:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FXJT6jOU;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.30 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xvi7ruwi6MTCXrtxONmlYhrNO95ooOIIJIDG+WGtSD8Juq5mJ9eVD/LyMSr0unRtDqWr5Cymc2oZLynKDewL6i8gR+j8SL+EpIOXTuCLXt+k0qAMZGG6MtUZWMhT2xpeEcZSjY02rn5ThXHig/kI1k5+ssF70gwUr+qOelnl/tD8HgGZ6890lvl8uLSVHNo5kqkuRk0ObWYxTSLgm5gRguc6U/eyaR/UTqWXhuBw2xBSudmKem/rKaz9Txs+Jb7k6F1PazmOf+QHwmFmIr/Gm5bZ4ZXayc8nT7R+htFBRnfW6UH140jXpfdaXoUwrQsrzP/9jUF3Jpyx4c8Fi8EZcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h5dy6gkZgauR5SCMX9q6JFg2I+owE0ejKyQokaps3Ss=;
 b=iKTxP4VGey1uvW5xICI9eAEdBFU9DBR3pYBZ4qfbm6+2/10WtkUdi1Bl0EWVNBfpUp57vSM2ycQ+jqiDqqBa60OYfNYtERh0noCX6TrXREHZGAP5lCy9OOdnmu30zoSC/izt7XlQU9sxscbVMijNSY8edmlFGWu+HNDY+ABqEVuyR/fftVXtS8DVsTr9B3J5oImX+wuvNFIirSMikNMxTgvqqH+fiuoiE0ZzrIBr11v6xXKeCpI94cl/NFuZBCzbj+G0eDJRbSFUwN4fVJsfpbnwsGnzZ/z4so6iqgVeT1PIokAsWA0UgrQ9yRJeHi1MReXe9/29fVYNFFApfFF5NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5dy6gkZgauR5SCMX9q6JFg2I+owE0ejKyQokaps3Ss=;
 b=FXJT6jOUUos7uNAhKFdxVsYJE7/D4zOzKcAGpcaukqeKtkVXouf/Y2meJi72YD2Kp5WpJercue2Wv9njUpTMtCYkziyPOGE/kACz7ej4Nf3zASEFyqwMIVvd0Z6+JlfZZt+yjsC9Zxxqs6eV6EvIkszKdeCNGYjvvWqefqraY8I=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH2PR12MB9543.namprd12.prod.outlook.com (2603:10b6:610:27f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 13:22:34 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 13:22:34 +0000
Message-ID: <63d280ed-ea7e-483d-8f64-5066174adf0e@amd.com>
Date: Thu, 20 Nov 2025 14:22:28 +0100
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-xe@lists.freedesktop.org
References: <20251120110341.2425-1-thomas.hellstrom@linux.intel.com>
 <20251120110341.2425-3-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251120110341.2425-3-thomas.hellstrom@linux.intel.com>
X-ClientProxiedBy: BN0PR02CA0041.namprd02.prod.outlook.com
 (2603:10b6:408:e5::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH2PR12MB9543:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a594447-a2c1-43cc-ed87-08de2837ddf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SUhWS0QrbUdKR1JwOXk1dnJ2cStidUdiSFhDUSt5QnhMMTF6dDloWGhiUVhi?=
 =?utf-8?B?MVNFRzBqK1daaFhheW1kOVE0UHZNTlhrNENDWG1aSS9hZnZBTDJKOTFZaTFa?=
 =?utf-8?B?TU5CTzFaOGhQME1zU1JVaVV4YWQvazczWkd1eG5oWE9oQnZVN0N5UnFMcU1V?=
 =?utf-8?B?NHZRa0NDTEU3RElUNlphU1FmT1VIMzhvZnlMblFaSGRJTzgvRC9LTnF1WjVs?=
 =?utf-8?B?ZDlwWU9valo1ckpBQjRsaXBDbmVLdlhaLzlVQ1BhYnZWZ0lobHZJWkw1alpr?=
 =?utf-8?B?VEZrb2VCbFlVbVRqRkN3RWVHRWZGWFVXbHFyRmpRdmR5RUI2ZlROWkEzbWhm?=
 =?utf-8?B?dHZrcEtxTzFQdDN4ZnRPaW8wcDBldzRRUjlRL0NGa2k4U2FzbGc0OEMxd1lj?=
 =?utf-8?B?TkFiYWxtcTlKbURLSnhhaWhodTBJRWdBbEZBN2lhVXVLVStGT21oSEx0WHhl?=
 =?utf-8?B?QXI4OURiUGY2MU9JUFJCbTZUSzh3bzc5andUY2hoZm5tbUdKRnZZSStpNnlI?=
 =?utf-8?B?bnlobTFQYTZkamZ4VFVKK0x6Yjd6ZVg1c01nNUVHbVJVcGsxVEMwNXZ1ZTZV?=
 =?utf-8?B?STN2VmNoS2UzV21tMkgzZldkd1FJcHNWejFpSGhRNkd2cHI4bDlLMk1PTnNP?=
 =?utf-8?B?RzVMWlNlQzZoMDJUL2hQcWRmcEpGWGV0bDRIYzg2RmREaXJUWjd5cFZOOXNF?=
 =?utf-8?B?c3MrUkxncnY5OE5IdnNhNyt0SkdJdmFEaHAwUXRwb25XanNndERoR1d3RnBy?=
 =?utf-8?B?TE1wUlR5VWRUREd1N3pyako4dEovSy9xb0hMTDNzMzF3bWNyblM4VEU4RkU3?=
 =?utf-8?B?RmJjUm50OFpmcFJXdzVibFRHSFIyamJQcDBkeTI2UzU4dDhXYkZNcnJkNUQy?=
 =?utf-8?B?ZkNRRjlTMC9pdFRRR1A2Ymc2ZE9GK3ZqeGlxS0NZcmZUS0U0TDV6M1lUanZ2?=
 =?utf-8?B?ZDRlSGw5VENpV2xBZDlJSjZiMW4vdkVHTDg3MmpJSkZiaTlyYlVTWVZncmpZ?=
 =?utf-8?B?UURrdjhxQmp2OEMvbGowMWgrdThHMUN6UlQvNnJlek1hUk03WkdTT3MzZjdy?=
 =?utf-8?B?bnRaY29MVXRURndseVVGOXpKZWVacVRxLzhDNHhIYk9uSnY0dDhBalhUV016?=
 =?utf-8?B?UE1FcVhDUUxKeGRTcng4eFNiQ2g3dVo0VG5aUlVrNWRHdkRhMTU4ZDE1dHdp?=
 =?utf-8?B?THFGSFp1RTJrQmNFR0l5Z01WTzQ0U2cxK1JZUTVkTEoyRExBb0VoSnVRVWox?=
 =?utf-8?B?bDA5VG1LNVhzUEk3aENBbDgzRmp5aVh6WU0rNWkvTlpiajRZM2ZsVHoxMUZj?=
 =?utf-8?B?N2g1VFFEbTA3ZXZ1OUtiVUt2eDVmVVV1QXNyOExZeGxZQkRNQkRiZUFHajVG?=
 =?utf-8?B?TGZGTlY4QlJSUjVOQzVuLys1bE1ld3NNTjdCdy91a3Y3YXo3ZTN4UWhlbzEy?=
 =?utf-8?B?MHRSM1RJUFlJQTNhUndEZnRId1hsVUNRR0o1N0tDVmtUYWR0RkJKYzFRYzZk?=
 =?utf-8?B?TDVmbHM0WjFkQnA0RmR6anhiZTNFaXpuOW8rbkU5Sjl4M01HdlR0NFVyQVF0?=
 =?utf-8?B?OEhzNXZxb0JrTE9UUWRrUm96NlNwbmRYNDRBMjI4OW5EUzJLempueG9CcEFB?=
 =?utf-8?B?aTNnbHdLVTJtZHdxUThKa1FOTkJXbTREQVBhUGNaZWYybk9NSmJ6d3J1RUV4?=
 =?utf-8?B?U1owODl3eCtwT3FiREhnSnhVYjROQ0FvblVXQ1JFaWpQUzQydS82bXNCbXZ0?=
 =?utf-8?B?a0tXZGNJZkxYNVBDclA0YStGZEJNNWhtMVM5azRXQ3VPc1VUQUtFWEhLVHpo?=
 =?utf-8?B?Z0pwSnJNWERjZnFnQmh5cXRFRkhaaGxTa2hwSWpuVEJWZlNiOVpoelpDQTBD?=
 =?utf-8?B?bllhT0dsbzY3U2p4L2RlM25QL1B3OUdsQzlTSEtlZ2VuOUo1aUNXb29KS3NB?=
 =?utf-8?Q?tPb6eDEYsKGZW2uVoULcCf3C5sauMeNf?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b0owOTdFZnlPY3d4RVlCRHMwZkU2M0pFR3JnMUdQYlBvWDRod0EyR2N2Uk1C?=
 =?utf-8?B?bW14SEpnYmQycHdFUGkwTG41TGtrMjQ0anEvV0w2T0szYnlTOFlBcEdpR1NV?=
 =?utf-8?B?VTRUYm4yZWZUd3JEMndRblJCQTNsWjEzUEd4TXNnRjBBVmg4TEZ2K05jQmFt?=
 =?utf-8?B?Y2hlMXYvcHBYS3V1eklRYzM2bjcweEcxUTFCQ0FUbzM3UFFGRzJ6MTVTdkU3?=
 =?utf-8?B?VXlCcVBiNURMQXV3SVFOSHJ1eUJRcFBaTXlKU0h3cGlpZFJaYTBia3VnQjNJ?=
 =?utf-8?B?YS9vZko1RFdnemZHZWtXVWUzZzJGbE5tVVRQcWQ5MDY5SEp0N1RHaDFlaWVW?=
 =?utf-8?B?Mk5jRlhmbUQ2WE5OODRXRmRyd3RWcEpIM3FadysvZlpscHpXaEh6eS9VS1dp?=
 =?utf-8?B?bWFXc3gvOFNLV2ZkeThRK1l2dWVjbUZlNDVtVDQzdjhwY01YZGJxTHdhSkxB?=
 =?utf-8?B?NG9Fd1RGUk1CeVFsSmVWa2lVWDljdEphRG92R2xGOHpibU9MNEUyaFl0c2JK?=
 =?utf-8?B?N3pKZVlMN3RvZkhMMWJ6TXFkWTFhYm5XZlkvVmRaVmpJRklyM1VPOFc1WkNX?=
 =?utf-8?B?eUpSeTNBb2orR1RqVDk0ZkNrNjluWkdXRXB5dnhGcjFWeVdpTUJycmJMc2Jo?=
 =?utf-8?B?YklpVmcyM3gxNWRPUWpzVDh4a1p6eC8zZE1lc2FETTFOYkdpY0hvQ0VBUGx1?=
 =?utf-8?B?dXR1b0w0NnQ0OFEwSGtFemltNkJsZnAvTElPTkFGYVhJeFNQTUw4Z2liTGdW?=
 =?utf-8?B?VlI3T291dmRJQWEvU2JxakNBdHFDRnROeSs1alVCdWRldTViZnRFM1FtcWl4?=
 =?utf-8?B?NHN4S0w0ZTdjbFVIc2hCS0NnVHlKOTJud2hab28vQzh5RXRNUGhJOUZ2MEVs?=
 =?utf-8?B?ZXFhVjUwU1dtSU9sTkh5VDh2Yi94a3lpREt6a0YzVFI2WkNjT2FQR3huNk84?=
 =?utf-8?B?L05YVDVMd3RnWmxxVUtHQ0ZKVndwWDVISUlIdFdGT2xFMlMyUDNZNVFNT0FT?=
 =?utf-8?B?V1VPNXdYYjFDeVdHSXB6Z2VRNS9XcTRCR3VocTZ0ZWxta3hESWUvVXFDakQx?=
 =?utf-8?B?OVRYd0xhaGdobFB4SjRyQ0NEaUZaVGRtMTR4QUR1MVRFcGhEU0RJa0lvdU9C?=
 =?utf-8?B?ZG9EcDk0ak14SU5mU3o4dGd4RnFpWENYRW9iK2RrT1Q5Sjg2L0czaW84TTlj?=
 =?utf-8?B?b255ZTBHRHltZ3paa0xCMnN0S2RlSjU2ck5qWmJMWlJ6NXRPVGdZWlM5K2R5?=
 =?utf-8?B?b1VDdkdybXlZK3BKNWcwZk9INndTd3ZNWS9HR2F5eFFvS3dId0dCVnYyc3lZ?=
 =?utf-8?B?MERpUVpJTlhlb1NUaElLbk83d2hNWGpJRlFVNGNMTnJtN1hXaWpvU2Q5UXpq?=
 =?utf-8?B?WmlZdFlYMzNBUlN0ZUtScVJIbmt5R2o4cDFyRGQwZUlSQlk1eHBicjMrRDNu?=
 =?utf-8?B?QVd2dTJadktLVzhkV1kzNmQrdFVtNnlvTlZWVVJsOEZ4bFhOZ2VqRTc4TFdi?=
 =?utf-8?B?dytqVGhZN1JUTlZsYm5PWElEZzNsNVJ3QTdOVnZVWHptYXlsV29lU2YwRlJF?=
 =?utf-8?B?Sk5Vc0xHakgrMFgwaXB3YW1GRmk2T0VGMTk1Q3RML1E2THlsRElSSnVoS09F?=
 =?utf-8?B?ejFZTnFOb0hZb3RubGFvem8zZmVHZENBbWNBUGd6TDkrN3pTWk1ZZG9jc2l1?=
 =?utf-8?B?UHdHTmVVd21JbkhMZ2NNb0htL2RISTRtWGJPaDFPc1VYNnlSTnBwa1V5WVhh?=
 =?utf-8?B?bXJkbTdSS3U3dnFYMG4vR2QxelNnVitNSmZqZVZFOFVPMEIyVlcvTjlGZTZN?=
 =?utf-8?B?VVAxQWZBcHByM2w1UHNpUVpBSnQ0YTZzTWpHR1piLzFSMGp5UWNHaFNiZ1pE?=
 =?utf-8?B?Z0lRWlJvMGZ6Y3IveHdrbDJWYkNOZ0xUMUN2cG9qVDdMMjh3aU9JcmtkdktY?=
 =?utf-8?B?ZzBPb0wzTFpQeEU5OXptY2ZOdFNLRThSQWZrdUNxUVZxczVvYS93UnRycHRn?=
 =?utf-8?B?N3p3WXk3eXgwT09PQVRTQ1NTeEx4eXBEdTcwaUg0YTJ1V0xVLzM4NXhua2Rm?=
 =?utf-8?B?RjhCaUtHKzhjNFdVYmsyTDJnMXRvWmlEZHRsUFlyaDMraU1BdnRNK3NTSGpH?=
 =?utf-8?Q?dtriOzrVwo8zjonzGP6b3nDCK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a594447-a2c1-43cc-ed87-08de2837ddf4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 13:22:34.7512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KbGSlsfg12CR7byFX8tqXmAv6GeH56ke8hBNrAKt70xu2D33Uo/MSIXj/OYUG41W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB9543
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.30:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,infradead.org,redhat.com,kernel.org,gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 43AB13F7DE
X-Spamd-Bar: -----
Message-ID-Hash: OOSGWNEGMZNGVMHTFK6MXIG4LYO74KDD
X-Message-ID-Hash: OOSGWNEGMZNGVMHTFK6MXIG4LYO74KDD
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Auld <matthew.auld@intel.com>, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Waiman Long <longman@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "Pelloux-Prayer, Pierre-Eric" <Pierre-eric.Pelloux-prayer@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 2/2] dma-buf/dma-resv: Improve the dma-resv lockdep checks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OOSGWNEGMZNGVMHTFK6MXIG4LYO74KDD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjAvMjUgMTI6MDMsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiBFbnN1cmUgdGhh
dCBkbWFfcmVzdl9oZWxkKCkgYW5kIGRtYV9yZXN2X2Fzc2VydF9oZWxkKCkgb3BlcmF0ZQ0KPiBv
biBpbmRpdmlkdWFsIHJlc2VydmF0aW9uIG9iamVjdHMgd2l0aGluIGEgV1cgdHJhbnNhY3Rpb24g
cmF0aGVyDQo+IHRoYW4gb24gdGhlIHJlc2VydmF0aW9uIFdXIGNsYXNzLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPg0KDQpJIGNhbid0IGp1ZGdlIHRoZSBsb2NrZGVwIGJhY2tlbmQgY2hhbmdlcywgYnV0IHRo
aXMgcGF0Y2ggaGVyZSBtYWtlcyBhIGxvdCBvZiBzZW5zZS4NCg0KUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KVGhhdCByZW1pbmRzIG1l
IHRoYXQgUGllcnJlLUVyaWMgc3R1bWJsZWQgb3ZlciBzb21lIG9kZCBsb2NrZGVwIGJlaGF2aW9y
IHdoaWxlIHdvcmtpbmcgb24gVFRNIGFzIHdlbGwuIEBQaWVycmUtRXJpYyB3aGF0IHRoYXQgdGhp
cyBpc3N1ZT8NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvbGlu
dXgvZG1hLXJlc3YuaCB8IDcgKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4gaW5kZXggYzVhYjZmZDllYmU4
Li4wMDFkZTM4ODBmZGUgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0K
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4gQEAgLTMwOCw4ICszMDgsMTEgQEAg
c3RhdGljIGlubGluZSBib29sIGRtYV9yZXN2X2l0ZXJfaXNfcmVzdGFydGVkKHN0cnVjdCBkbWFf
cmVzdl9pdGVyICpjdXJzb3IpDQo+ICAJICAgICBmZW5jZSA9IGRtYV9yZXN2X2l0ZXJfZmlyc3Qo
Y3Vyc29yKTsgZmVuY2U7CVwNCj4gIAkgICAgIGZlbmNlID0gZG1hX3Jlc3ZfaXRlcl9uZXh0KGN1
cnNvcikpDQo+ICANCj4gLSNkZWZpbmUgZG1hX3Jlc3ZfaGVsZChvYmopIGxvY2tkZXBfaXNfaGVs
ZCgmKG9iaiktPmxvY2suYmFzZSkNCj4gLSNkZWZpbmUgZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQob2Jq
KSBsb2NrZGVwX2Fzc2VydF9oZWxkKCYob2JqKS0+bG9jay5iYXNlKQ0KPiArI2RlZmluZSBkbWFf
cmVzdl9oZWxkKG9iaikgKGxvY2tkZXBfaXNfaGVsZCgmKG9iaiktPmxvY2suYmFzZSkgJiYgd3df
bXV0ZXhfaGVsZCgmKG9iaiktPmxvY2spKQ0KPiArI2RlZmluZSBkbWFfcmVzdl9hc3NlcnRfaGVs
ZChvYmopIGRvIHsJCQlcDQo+ICsJCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJihvYmopLT5sb2NrLmJh
c2UpOyBcDQo+ICsJCXd3X211dGV4X2Fzc2VydF9oZWxkKCYob2JqKS0+bG9jayk7CVwNCj4gKwl9
IHdoaWxlICgwKQ0KPiAgDQo+ICAjaWZkZWYgQ09ORklHX0RFQlVHX01VVEVYRVMNCj4gIHZvaWQg
ZG1hX3Jlc3ZfcmVzZXRfbWF4X2ZlbmNlcyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaik7DQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
