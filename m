Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 955BC92EAB1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 16:26:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A3673F652
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jul 2024 14:26:15 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2060.outbound.protection.outlook.com [40.107.244.60])
	by lists.linaro.org (Postfix) with ESMTPS id 4929C3F640
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jul 2024 14:26:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=sKjanpUR;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.60 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HYs/EY74wVmW8rgXwlaV8gN1dDs4USHriMKORHVebu346rulPKT7cBcs9K7VRUHrN0AcYDpCkdpcLZYO4MlGraW1+WfX4PaouwUDK9yzcdHA4rk6ofyj3MKfuZxH/wRI9FaNLffU/4R8UlCBsLxF4Zya965zfeVfCcKsY2NsC+kpS7AxieGTpKix4uow9ErQMgjpmNbElzO/N8BENgXchgM/Lob59hds+46pk5hofVqTAVJ3b3WaIeBXtBUDn0xfyh0WaSXdRDbuv4nyWGrj+w108aGkeO9rSGH2GhD2fRlYTqtfDdTsrLboFYs0ZVNlLkcceLq7/CGew8+scFdC9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrVg6JN1rAI05l1tlksbH/6OV5Rn44XwFKcJMyLxl64=;
 b=U+hVTt5xhHRwgWXqMtVtRGqoWxLPQSVFDOpBhi9lgxD6A7EwbFXm6TU+33SJJxoEL1X8YXzOzqn+Tvku2chp6bQ/E+gVCF70cAkbpX81pdBMUKgfcG+h9w8vAHYedB5przs4x2NVeDX1ewtWr4Flto6Lrq2uhkFL4AkgWEFDXHzekLWWwvtBTdWAZKXi6YLE3uh5ye2xirSLw8NjUk/5srCL2j0qUebPyMWzpEcSWQb/nnoLFAMFqrUHH+i+JDKrTjyDOj0+amnxKt9jSJz7+FlUXyAMxsw7ILUz//FVC/rXvXQdMQrxx49fq1a+gzhDfBXIlpUwZdA4jLPeUnl1ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wrVg6JN1rAI05l1tlksbH/6OV5Rn44XwFKcJMyLxl64=;
 b=sKjanpURwhteP5ZH4uY86CUI4repa1P8M/dR5bLjxKy36VHuFxJJPUnEPsTagwQGogwNJw2dEDeIaRi93KEWwB4eSi3v8BqjUpo8B7FDQmyU1kge3RSTn8pyDFusy3zRHw5ncb3Z+X9qcsXxL0soa5JKB2oKRLfRjcJjA65J1hc=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8525.namprd12.prod.outlook.com (2603:10b6:8:159::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 14:26:09 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.7762.020; Thu, 11 Jul 2024
 14:26:09 +0000
Message-ID: <63237086-223f-44fb-90a0-076a5f56dfdc@amd.com>
Date: Thu, 11 Jul 2024 16:25:59 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, Lei Liu <liulei.rjpt@vivo.com>
References: <20240710135757.25786-1-liulei.rjpt@vivo.com>
 <5e5ee5d3-8a57-478a-9ce7-b40cab60b67d@amd.com>
 <d70cf558-cf34-4909-a33e-58e3a10bbc0c@vivo.com>
 <0393cf47-3fa2-4e32-8b3d-d5d5bdece298@amd.com>
 <e8bfe5ed-130a-4f32-a95a-01477cdd98ca@vivo.com>
 <CABdmKX26f+6m9Gh34Lb+rb2yQB--wSKP3GXRRri6Nxp3Hwxavg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX26f+6m9Gh34Lb+rb2yQB--wSKP3GXRRri6Nxp3Hwxavg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0324.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8525:EE_
X-MS-Office365-Filtering-Correlation-Id: 6afa3e9f-9cab-4dce-1c21-08dca1b56833
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Qm1zVlErbitRa2NxZ05XbTF1T3Y3SFZaM0lZMHgvRVAvNDhYT0FDUm5yNWtH?=
 =?utf-8?B?UmJ4TjZoYkw2YUo5cEdGZzM4Z00xTnpBSFJxMVhMSklDT3EwM1BxM1BLTThR?=
 =?utf-8?B?S0l6T0JBV1NPTVBPRzQvWEJWTGRLYXRlM3FIRkRqRmJsdU9tdkUwZ1hTUm13?=
 =?utf-8?B?VUdkOEJ0eE05cStCRWgwWjg2Q2FHZlF4OSt2THhBR0tIeEVXelp5bllma3Nr?=
 =?utf-8?B?bUpnUXZVRFJoSEdBRjkzRWdpR0Z0QW41REx1SVVtTXorNDBXaE1hUERhQmhD?=
 =?utf-8?B?djBXMnNtUXF3WGFySGVhYU4zRi9hdEEwL0tSZlB3U2l4TE9xeTlCMUcwT2Zu?=
 =?utf-8?B?dStOK0s3US9zSUVHK3RGamQ0a3plc0owKzVFMjNKMmlLYUZSZXlaMjdlVE1p?=
 =?utf-8?B?MUlVM002NDdkVFFkdnBKS1AzclM5YjZqcktnS0RDRy9CY29CRDI0WlJXQWt4?=
 =?utf-8?B?bkR4OEdJQ0NTb3JXK2ZwTVhsUkhkcXlCQS8yMlNiZUtOMHRsOFJUUFF4aXZa?=
 =?utf-8?B?czhPelUxdU8xdnpPVEVFaitVOE01TTlRVEJXNWYvK2xUalkvQmtRcHBEYlgx?=
 =?utf-8?B?bWc2VFJ2OE12SDNWM0FrNHM1Vm1QRldVT3l4czQyaDFWL2JRNWxzTkFmOFJP?=
 =?utf-8?B?SHZpMkx0Z2lIZWJYOHJaaHBPMmNIRWZCNGdzcnEvU3p1N01zdG9EcjlsOWNG?=
 =?utf-8?B?Z2IxTUxDZldzeEZBT0JXa0ZBSWs3MkJvV2pvZTU0WmZrUlV6dUxSOHNOckFx?=
 =?utf-8?B?dERvb2NPdmFPT29jNTZtWTdmNmZ0Q09sVjhNVGJ0a2N4VFBLM21HRkRwdnhu?=
 =?utf-8?B?L0FrMGFGWnZWWFBBNFBFMnl2TkJZbmNHLy9SVVRrWkFZcS9pOFRQNjhQZ3Zq?=
 =?utf-8?B?d0QzME4wNjg3TkRCZUkva3k2djVkZE82eDZyZk1LYUozTDNPM1NLcU5sVloz?=
 =?utf-8?B?emMyMXJpSVdkL0JJS3FvaDNERjhoNXVXTGVldE5xM1N5MWpOTGt5RUd3YWlm?=
 =?utf-8?B?OVNYS0NLMVNLaFl2OEFRNUJrWGJNZkhndHVIUTBrOVpNMGxnTWhxek9ubVFV?=
 =?utf-8?B?NWpIYWw4YzhqU3lpSEMvWW5zVlk5K05uUzVra01aUFdPajZIVmlCaEh0dzBT?=
 =?utf-8?B?eVZEMkhxYlBWZEk1RUpIMlEzczc4djI2Z1pzcVZ1cVFWWEc3LzlQNGp1SHdF?=
 =?utf-8?B?ak9ubW1mVnF5TmR6cDNVTHJ6N0p6Z2p3MTVYb3FUYXZOMHZsYWpTM1I0OHJv?=
 =?utf-8?B?SHRuUzZSbWZDRjVMRmFFYk1LM08yeTRRRkFTTmJ4ZDNBRHRiYUYzOXpXYld4?=
 =?utf-8?B?dk9HMzlTYW1iS2tORjRqTkdscWN1cTBDNjRnVXc4WGc0bWgzbStPWTY3SkM3?=
 =?utf-8?B?ZUlKZXMvNXFyZ3hhQU9BRURqUnQrRnZIMVZ3YzlIWWxlZXlGcUM1dEpBb255?=
 =?utf-8?B?VHg3cXlOZjMreTQwMXgxNFE3azM4cUpSdlkrWmRvSDNHbG5NYSs1UG9PeDcw?=
 =?utf-8?B?dXozYWdnWEhNbkVvdWNRazM3eTBzdVNnc0Q0L24zaVRLdXo1YVhzQW5EeG1V?=
 =?utf-8?B?OVFkc01sYTBMRlZIQjRsek9xQjNjM1dMaENodFkyZFVKLzM3S3V2YnlGRGda?=
 =?utf-8?B?N2d3VGZyTFF2Y1BqeFlkRUdEdjRUMHYzQmVYN08xTzByT0F3bXB1ZE0vUit1?=
 =?utf-8?B?QmRURkxCSTc1U3BFUWdVT3U5RmZoSHlPNjhhaXVSZUloTHNPOEVWQzkvOUVx?=
 =?utf-8?B?WG5SWUhCMmpMV3JnMUZtcGhubEJKMWY4cTBvTDIwdWd5NnVIQW01UmtFbDV4?=
 =?utf-8?B?UTZEenVNSUc5Q1BWcXFXZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VmJwNFdnT0Mvam5RTE9NMkxWZkpBa2hkbVk5bjZOejNDa2NDazZHWUlUN1RM?=
 =?utf-8?B?UXRxVlJ1Zll6VlhFVzNXTTNsL2NFQkdrcmJsZkZjbS95b2EyUERKQndpNW1S?=
 =?utf-8?B?YUttWFFXSGlrT0tFVE5rSkI3d1FWZmwzQlE0eWQ5VWp6V0hMZVVMRWF6L1Bu?=
 =?utf-8?B?cW8wT3k1UUIxS0Izc1VoWmRmcmtiVXV1Q3RuVFEzOVl4SHJFbHhLd2RtbUNX?=
 =?utf-8?B?d2x0QTZIODlFbDVqYys2N2oyZysvQnUzditIM0lDS2NPUWVPVzhXUG12bXlo?=
 =?utf-8?B?TGtKS0lwOThKc2lNSjJPOTVXMndnWG1PRlVSTVRwbVc3YXRFMDZDNkw4cmpv?=
 =?utf-8?B?Zk91UTZsakZGcmhEbVVVWWNabmF6TktSSGxremlnbEoxM2N6UHhObVl4Rk81?=
 =?utf-8?B?Ky9XZFBseEVaOHVVelVOQjlSUkszR1lFN1dwS2U1RVZ6MjlLSDZ5T1g4TUg3?=
 =?utf-8?B?ZDJ3UnU1cFRoWXZkZmVldnF6dnFZcytBYlJsQnNyTEF4bXR3UHJFU2lOUlBI?=
 =?utf-8?B?OFBtK2ZBMVcxUzJMTVlFRDBvL0gydTk2SFVjWXBpQXgzdkx4dTQzNzJrZDE1?=
 =?utf-8?B?S1NhNndTRkxLamU2SEpvSytVRHFGQVZTb1ZPSXEwNllnZWZGMUloNHp5emcz?=
 =?utf-8?B?eHdRWlJNU1Q3a3FPTEt3K1BQS2tPbis5WlpLNk9scWh1d3dyQWQzUEZiSUlC?=
 =?utf-8?B?cStGekVsNXVEcThCNitTQVpyRzBNZ1dRd1JKeHdSOFZBRUF5Qzg2UzdHT0Q5?=
 =?utf-8?B?RTVIM1I3cFhqU0lUNFJQRitmeEFnU0ZXa2hncVJDQkpVdm5nYkpoYXl2RlY4?=
 =?utf-8?B?eXU0Sm43dC81ZFVSUmpaZ1hJN3dWZjA1WXl2eVN5WkhnNjRPOEsySnRaVER6?=
 =?utf-8?B?REdVRlZWaGlVWXNaQ0Ywa1VYaXAzTlByVmxXamcyM01oVEgrcms1cmRlYTBy?=
 =?utf-8?B?cGx3bWpuZVBHYUpHL2dEMjdqZ1k1T0FiVEhZZVp5U3RkckVpSDJCeEkxbnBl?=
 =?utf-8?B?NmowRVRQbEZETkxIbHFVdFVhRGZrcjJqNmRTOGRSN2ZmczE5SHJXZmkyLzZo?=
 =?utf-8?B?eTMvSWhxU2NNYitOeUpXeDFpOXhqamttKzBYbElaNTc5Y0w5QUxYL3kxanQ2?=
 =?utf-8?B?aThtdW4veGVHa3RqZWI3MG9DYmxFU0JhM2JOb2hwblBQSHNiZlRIZVBYbE1Y?=
 =?utf-8?B?Y2tmMU82MmsxT2IyTGgwN2JoMmQvNXJNVWhLWEVpMlFsb2hzdU1NK2ZtMlZH?=
 =?utf-8?B?NDZIRE9NdmN3bVU5bk5OWFpnVmVramlkU1VWN1Mvd3d4RVFoMXVzdVUxS1pU?=
 =?utf-8?B?MFpwRW42ZTZWMW56T05LNERXYnZ1RWdwQ1NNUVFMazR5QkF1MFBGZjQ4UXJD?=
 =?utf-8?B?RlFtWEszSHFjcWMyVG9GZkhWSnNwSjFqRnZoR0w1Y2RBR3BHaXlKRTB1TlpP?=
 =?utf-8?B?aFowTXZGMzlwMWMxNGZlVjZRNDlhS012Wnh2eEZMc2JFRXVla3lkZFRnUzJk?=
 =?utf-8?B?YTV4ajkxdGNvUjcvUDhRS1JHNFRRdFkzZ0pSV2UzN2FSREdnMERZdXloajI2?=
 =?utf-8?B?SkJ3YjM3Kzg4ZThPa3JhaXRGaGhQeGZtWkxDc3p0Ti8zaFhHb2o5T3ZRdEV3?=
 =?utf-8?B?S1BOeU9TK29Ya1dhQU9iRWNyQ0FmRm9veHoyZ29rSFV3dzB5Vk9kcWlIVTFk?=
 =?utf-8?B?Q0JicURDQzBDdFpvOEpHdHdhZEhITWJOcmozMjhkWHk1cmcwcGhQTXI5aS9r?=
 =?utf-8?B?V2ZKb3N6MmhBUUQ0bVB0SWNwNXpSbi9GWnBwUUFVdFdHWjd4c21Yd25ieVNI?=
 =?utf-8?B?Z0xieXNZV3pBV2svYnlmOGh1blVZSkRwR2poeVBTc1J3TWc2dEVGV0xnM1dy?=
 =?utf-8?B?MllDUGcwUndoV1pmY3hKTTZTcHJHeTAzeW9mK3crcUhMclVPeEpHb1NJK3ZZ?=
 =?utf-8?B?Nk02bjVMS25Dc1VGWWt3ZEg2Mkt6eFlBc1F6dmprV0l2MHRML3FQVlorRTVX?=
 =?utf-8?B?SnBlenFaZ3lVQlNhVmpiZnBOYWY1dk82ZEp1QmUySWF2WXRoMHZMdDhxalZ1?=
 =?utf-8?B?bVd0eTcrRjdBc2ttK1JTWlROaUJOcjVRU1hNWi9xUTE1U0tHQUhiZjZnNVV6?=
 =?utf-8?Q?JzYVFHb6MVlalcsCdvxpsGZnU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6afa3e9f-9cab-4dce-1c21-08dca1b56833
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 14:26:09.2434
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZGHH1HE1d8iFLz8xXvc97vEp9kKRXBe/F1DUZheoADpSnvGnBkoHn295h0sjN2pp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8525
X-Rspamd-Queue-Id: 4929C3F640
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.60:from];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: NT4NOEC2W2454JP227D64GSK527N53WI
X-Message-ID-Hash: NT4NOEC2W2454JP227D64GSK527N53WI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Matthew Wilcox <willy@infradead.org>, Muhammad Usama Anjum <usama.anjum@collabora.com>, Andrei Vagin <avagin@google.com>, Ryan Roberts <ryan.roberts@arm.com>, Kefeng Wang <wangkefeng.wang@huawei.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, Daniel Vetter <daniel@ffwll.ch>, "Vetter, Daniel" <daniel.vetter@intel.com>, opensource.kernel@vivo.com, quic_sukadev@quicinc.com, quic_cgoldswo@quicinc.com, Akilesh Kailash <akailash@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/2] Support direct I/O read and write for memory allocated by dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NT4NOEC2W2454JP227D64GSK527N53WI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTAuMDcuMjQgdW0gMTg6MzQgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IE9uIFdlZCwgSnVs
IDEwLCAyMDI0IGF0IDg6MDjigK9BTSBMZWkgTGl1IDxsaXVsZWkucmpwdEB2aXZvLmNvbT4gd3Jv
dGU6DQo+PiBvbiAyMDI0LzcvMTAgMjI6NDgsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4g
QW0gMTAuMDcuMjQgdW0gMTY6MzUgc2NocmllYiBMZWkgTGl1Og0KPj4+PiBvbiAyMDI0LzcvMTAg
MjI6MTQsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pj4+PiBBbSAxMC4wNy4yNCB1bSAxNTo1
NyBzY2hyaWViIExlaSBMaXU6DQo+Pj4+Pj4gVXNlIHZtX2luc2VydF9wYWdlIHRvIGVzdGFibGlz
aCBhIG1hcHBpbmcgZm9yIHRoZSBtZW1vcnkgYWxsb2NhdGVkDQo+Pj4+Pj4gYnkgZG1hYnVmLCB0
aHVzIHN1cHBvcnRpbmcgZGlyZWN0IEkvTyByZWFkIGFuZCB3cml0ZTsgYW5kIGZpeCB0aGUNCj4+
Pj4+PiBpc3N1ZSBvZiBpbmNvcnJlY3QgbWVtb3J5IHN0YXRpc3RpY3MgYWZ0ZXIgbWFwcGluZyBk
bWFidWYgbWVtb3J5Lg0KPj4+Pj4gV2VsbCBiaWcgTkFLIHRvIHRoYXQhIERpcmVjdCBJL08gaXMg
aW50ZW50aW9uYWxseSBkaXNhYmxlZCBvbiBETUEtYnVmcy4NCj4+Pj4gSGVsbG8hIENvdWxkIHlv
dSBleHBsYWluIHdoeSBkaXJlY3RfaW8gaXMgZGlzYWJsZWQgb24gRE1BQlVGPyBJcw0KPj4+PiB0
aGVyZSBhbnkgaGlzdG9yaWNhbCByZWFzb24gZm9yIHRoaXM/DQo+Pj4gSXQncyBiYXNpY2FsbHkg
b25lIG9mIHRoZSBtb3N0IGZ1bmRhbWVudGFsIGRlc2lnbiBkZWNpc2lvbiBvZiBETUEtQnVmLg0K
Pj4+IFRoZSBhdHRhY2htZW50L21hcC9mZW5jZSBtb2RlbCBETUEtYnVmIHVzZXMgaXMgbm90IHJl
YWxseSBjb21wYXRpYmxlDQo+Pj4gd2l0aCBkaXJlY3QgSS9PIG9uIHRoZSB1bmRlcmx5aW5nIHBh
Z2VzLg0KPj4gVGhhbmsgeW91ISBJcyB0aGVyZSBhbnkgcmVsYXRlZCBkb2N1bWVudGF0aW9uIG9u
IHRoaXM/IEkgd291bGQgbGlrZSB0bw0KPj4gdW5kZXJzdGFuZCBhbmQgbGVhcm4gbW9yZSBhYm91
dCB0aGUgZnVuZGFtZW50YWwgcmVhc29ucyBmb3IgdGhlIGxhY2sgb2YNCj4+IHN1cHBvcnQuDQo+
IEhpIExlaSBhbmQgQ2hyaXN0aWFuLA0KPg0KPiBUaGlzIGlzIG5vdyB0aGUgdGhpcmQgcmVxdWVz
dCBJJ3ZlIHNlZW4gZnJvbSB0aHJlZSBkaWZmZXJlbnQgY29tcGFuaWVzDQo+IHdobyBhcmUgaW50
ZXJlc3RlZCBpbiB0aGlzLA0KDQpZZWFoLCBjb21wbGV0ZWx5IGFncmVlLiBUaGlzIGlzIGEgcmUt
b2NjdXJyaW5nIHBhdHRlcm4gOikNCg0KTWF5YmUgd2Ugc2hvdWxkIGRvY3VtZW50IHRoZSBwcmVm
ZXJyZWQgc29sdXRpb24gZm9yIHRoYXQuDQoNCj4gYnV0IHRoZSBvdGhlcnMgYXJlIG5vdCBmb3Ig
cmVhc29ucyBvZiByZWFkDQo+IHBlcmZvcm1hbmNlIHRoYXQgeW91IG1lbnRpb24gaW4gdGhlIGNv
bW1pdCBtZXNzYWdlIG9uIHlvdXIgZmlyc3QNCj4gcGF0Y2guIFNvbWVvbmUgZWxzZSBhdCBHb29n
bGUgcmFuIGEgY29tcGFyaXNvbiBiZXR3ZWVuIGEgbm9ybWFsIHJlYWQoKQ0KPiBhbmQgYSBkaXJl
Y3QgSS9PIHJlYWQoKSBpbnRvIGEgcHJlYWxsb2NhdGVkIHVzZXIgYnVmZmVyIGFuZCBmb3VuZCB0
aGF0DQo+IHdpdGggbGFyZ2UgcmVhZGFoZWFkICgxNiBNQikgdGhlIHRocm91Z2hwdXQgY2FuIGFj
dHVhbGx5IGJlIHNsaWdodGx5DQo+IGhpZ2hlciB0aGFuIGRpcmVjdCBJL08uIElmIHlvdSBoYXZl
IGNvbmNlcm5zIGFib3V0IHJlYWQgcGVyZm9ybWFuY2UsDQo+IGhhdmUgeW91IHRyaWVkIGluY3Jl
YXNpbmcgdGhlIHJlYWRhaGVhZCBzaXplPw0KPg0KPiBUaGUgb3RoZXIgbW90aXZhdGlvbiBpcyB0
byBsb2FkIGEgZ2FqaWxsaW9uIGJ5dGUgZmlsZSBmcm9tIGRpc2sgaW50byBhDQo+IGRtYWJ1ZiB3
aXRob3V0IGV2aWN0aW5nIHRoZSBlbnRpcmUgY29udGVudHMgb2YgcGFnZWNhY2hlIHdoaWxlIGRv
aW5nDQo+IHNvLiBTb21ldGhpbmcgbGlrZSB0aGlzICh3aGljaCBkb2VzIG5vdCBjdXJyZW50bHkg
d29yayBiZWNhdXNlIHJlYWQoKQ0KPiB0cmllcyB0byBHVVAgb24gdGhlIGRtYWJ1ZiBtZW1vcnkg
YXMgeW91IG1lbnRpb24pOg0KPg0KPiBzdGF0aWMgaW50IGRtYWJ1Zl9oZWFwX2FsbG9jKGludCBo
ZWFwX2ZkLCBzaXplX3QgbGVuKQ0KPiB7DQo+ICAgICAgc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRp
b25fZGF0YSBkYXRhID0gew0KPiAgICAgICAgICAubGVuID0gbGVuLA0KPiAgICAgICAgICAuZmQg
PSAwLA0KPiAgICAgICAgICAuZmRfZmxhZ3MgPSBPX1JEV1IgfCBPX0NMT0VYRUMsDQo+ICAgICAg
ICAgIC5oZWFwX2ZsYWdzID0gMCwNCj4gICAgICB9Ow0KPiAgICAgIGludCByZXQgPSBpb2N0bCho
ZWFwX2ZkLCBETUFfSEVBUF9JT0NUTF9BTExPQywgJmRhdGEpOw0KPiAgICAgIGlmIChyZXQgPCAw
KQ0KPiAgICAgICAgICByZXR1cm4gcmV0Ow0KPiAgICAgIHJldHVybiBkYXRhLmZkOw0KPiB9DQo+
DQo+IGludCBtYWluKGludCwgY2hhciAqKmFyZ3YpDQo+IHsNCj4gICAgICAgICAgY29uc3QgY2hh
ciAqZmlsZV9wYXRoID0gYXJndlsxXTsNCj4gICAgICAgICAgcHJpbnRmKCJGaWxlOiAlc1xuIiwg
ZmlsZV9wYXRoKTsNCj4gICAgICAgICAgaW50IGZpbGVfZmQgPSBvcGVuKGZpbGVfcGF0aCwgT19S
RE9OTFkgfCBPX0RJUkVDVCk7DQo+DQo+ICAgICAgICAgIHN0cnVjdCBzdGF0IHN0Ow0KPiAgICAg
ICAgICBzdGF0KGZpbGVfcGF0aCwgJnN0KTsNCj4gICAgICAgICAgc3NpemVfdCBmaWxlX3NpemUg
PSBzdC5zdF9zaXplOw0KPiAgICAgICAgICBzc2l6ZV90IGFsaWduZWRfc2l6ZSA9IChmaWxlX3Np
emUgKyA0MDk1KSAmIH40MDk1Ow0KPg0KPiAgICAgICAgICBwcmludGYoIkZpbGUgc2l6ZTogJXpk
IEFsaWduZWQgc2l6ZTogJXpkXG4iLCBmaWxlX3NpemUsIGFsaWduZWRfc2l6ZSk7DQo+ICAgICAg
ICAgIGludCBoZWFwX2ZkID0gb3BlbigiL2Rldi9kbWFfaGVhcC9zeXN0ZW0iLCBPX1JET05MWSk7
DQo+ICAgICAgICAgIGludCBkbWFidWZfZmQgPSBkbWFidWZfaGVhcF9hbGxvYyhoZWFwX2ZkLCBh
bGlnbmVkX3NpemUpOw0KPg0KPiAgICAgICAgICB2b2lkICp2bSA9IG1tYXAobnVsbHB0ciwgYWxp
Z25lZF9zaXplLCBQUk9UX1JFQUQgfCBQUk9UX1dSSVRFLA0KPiBNQVBfU0hBUkVELCBkbWFidWZf
ZmQsIDApOw0KPiAgICAgICAgICBwcmludGYoIlZNIGF0IDB4JWx4XG4iLCAodW5zaWduZWQgbG9u
Zyl2bSk7DQo+DQo+ICAgICAgICAgIGRtYV9idWZfc3luYyBzeW5jX2ZsYWdzIHsgRE1BX0JVRl9T
WU5DX1NUQVJUIHwNCj4gRE1BX0JVRl9TWU5DX1JFQUQgfCBETUFfQlVGX1NZTkNfV1JJVEUgfTsN
Cj4gICAgICAgICAgaW9jdGwoZG1hYnVmX2ZkLCBETUFfQlVGX0lPQ1RMX1NZTkMsICZzeW5jX2Zs
YWdzKTsNCj4NCj4gICAgICAgICAgc3NpemVfdCByYyA9IHJlYWQoZmlsZV9mZCwgdm0sIGZpbGVf
c2l6ZSk7DQo+ICAgICAgICAgIHByaW50ZigiUmVhZDogJXpkICVzXG4iLCByYywgcmMgPCAwID8g
c3RyZXJyb3IoZXJybm8pIDogIiIpOw0KPg0KPiAgICAgICAgICBzeW5jX2ZsYWdzLmZsYWdzID0g
RE1BX0JVRl9TWU5DX0VORCB8IERNQV9CVUZfU1lOQ19SRUFEIHwNCj4gRE1BX0JVRl9TWU5DX1dS
SVRFOw0KPiAgICAgICAgICBpb2N0bChkbWFidWZfZmQsIERNQV9CVUZfSU9DVExfU1lOQywgJnN5
bmNfZmxhZ3MpOw0KPiB9DQo+DQo+IE9yIHJlcGxhY2UgdGhlIG1tYXAoKSArIHJlYWQoKSB3aXRo
IHNlbmRmaWxlKCkuDQoNCk9yIGNvcHlfZmlsZV9yYW5nZSgpLiBUaGF0J3MgcHJldHR5IG11Y2gg
ZXhhY3RseSB3aGF0IEkgc3VnZ2VzdGVkIG9uIHRoZSANCm90aGVyIG1haWwgdGhyZWFkIGFyb3Vu
ZCB0aGF0IHRvcGljIGFzIHdlbGwuDQoNCj4gU28gSSB3b3VsZCBhbHNvIGxpa2UgdG8gc2VlIHRo
ZSBhYm92ZSBjb2RlIChvciBzb21ldGhpbmcgZWxzZSBzaW1pbGFyKQ0KPiBiZSBhYmxlIHRvIHdv
cmsgYW5kIEkgdW5kZXJzdGFuZCBzb21lIG9mIHRoZSByZWFzb25zIHdoeSBpdCBjdXJyZW50bHkN
Cj4gZG9lcyBub3QsIGJ1dCBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHdlIHNob3VsZCBhY3RpdmVs
eSBwcmV2ZW50IHRoaXMNCj4gdHlwZSBvZiBiZWhhdmlvciBlbnRpcmVseS4NCg0KKzENCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBCZXN0LA0KPiBULkouDQo+DQo+DQo+DQo+DQo+DQo+
DQo+DQo+DQo+Pj4+PiBXZSBhbHJlYWR5IGRpc2N1c3NlZCBlbmZvcmNpbmcgdGhhdCBpbiB0aGUg
RE1BLWJ1ZiBmcmFtZXdvcmsgYW5kDQo+Pj4+PiB0aGlzIHBhdGNoIHByb2JhYmx5IG1lYW5zIHRo
YXQgd2Ugc2hvdWxkIHJlYWxseSBkbyB0aGF0Lg0KPj4+Pj4NCj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+
PiBDaHJpc3RpYW4uDQo+Pj4+IFRoYW5rIHlvdSBmb3IgeW91ciByZXNwb25zZS4gV2l0aCB0aGUg
YXBwbGljYXRpb24gb2YgQUkgbGFyZ2UgbW9kZWwNCj4+Pj4gZWRnZWlmaWNhdGlvbiwgd2UgdXJn
ZW50bHkgbmVlZCBzdXBwb3J0IGZvciBkaXJlY3RfaW8gb24gRE1BQlVGIHRvDQo+Pj4+IHJlYWQg
c29tZSB2ZXJ5IGxhcmdlIGZpbGVzLiBEbyB5b3UgaGF2ZSBhbnkgbmV3IHNvbHV0aW9ucyBvciBw
bGFucw0KPj4+PiBmb3IgdGhpcz8NCj4+PiBXZSBoYXZlIHNlZW4gc2ltaWxhciBwcm9qZWN0cyBv
dmVyIHRoZSB5ZWFycyBhbmQgYWxsIG9mIHRob3NlIHR1cm5lZA0KPj4+IG91dCB0byBiZSBjb21w
bGV0ZSBzaGlwd3JlY2tzLg0KPj4+DQo+Pj4gVGhlcmUgaXMgY3VycmVudGx5IGEgcGF0Y2ggc2V0
IHVuZGVyIGRpc2N1c3Npb24gdG8gZ2l2ZSB0aGUgbmV0d29yaw0KPj4+IHN1YnN5c3RlbSBETUEt
YnVmIHN1cHBvcnQuIElmIHlvdSBhcmUgaW50ZXJlc3QgaW4gbmV0d29yayBkaXJlY3QgSS9PDQo+
Pj4gdGhhdCBjb3VsZCBoZWxwLg0KPj4gSXMgdGhlcmUgYSByZWxhdGVkIGludHJvZHVjdGlvbiBs
aW5rIGZvciB0aGlzIHBhdGNoPw0KPj4NCj4+PiBBZGRpdGlvbmFsIHRvIHRoYXQgYSBsb3Qgb2Yg
R1BVIGRyaXZlcnMgc3VwcG9ydCB1c2VycHRyIHVzYWdlcywgZS5nLg0KPj4+IHRvIGltcG9ydCBt
YWxsb2NlZCBtZW1vcnkgaW50byB0aGUgR1BVIGRyaXZlci4gWW91IGNhbiB0aGVuIGFsc28gZG8N
Cj4+PiBkaXJlY3QgSS9PIG9uIHRoYXQgbWFsbG9jZWQgbWVtb3J5IGFuZCB0aGUga2VybmVsIHdp
bGwgZW5mb3JjZSBjb3JyZWN0DQo+Pj4gaGFuZGxpbmcgd2l0aCB0aGUgR1BVIGRyaXZlciB0aHJv
dWdoIE1NVSBub3RpZmllcnMuDQo+Pj4NCj4+PiBCdXQgYXMgZmFyIGFzIEkga25vdyBhIGdlbmVy
YWwgRE1BLWJ1ZiBiYXNlZCBzb2x1dGlvbiBpc24ndCBwb3NzaWJsZS4NCj4+IDEuVGhlIHJlYXNv
biB3ZSBuZWVkIHRvIHVzZSBETUFCVUYgbWVtb3J5IGhlcmUgaXMgdGhhdCB3ZSBuZWVkIHRvIHNo
YXJlDQo+PiBtZW1vcnkgYmV0d2VlbiB0aGUgQ1BVIGFuZCBBUFUuIEN1cnJlbnRseSwgb25seSBE
TUFCVUYgbWVtb3J5IGlzDQo+PiBzdWl0YWJsZSBmb3IgdGhpcyBwdXJwb3NlLiBBZGRpdGlvbmFs
bHksIHdlIG5lZWQgdG8gcmVhZCB2ZXJ5IGxhcmdlIGZpbGVzLg0KPj4NCj4+IDIuIEFyZSB0aGVy
ZSBhbnkgb3RoZXIgc29sdXRpb25zIGZvciB0aGlzPyBBbHNvLCBkbyB5b3UgaGF2ZSBhbnkgcGxh
bnMNCj4+IHRvIHN1cHBvcnQgZGlyZWN0X2lvIGZvciBETUFCVUYgbWVtb3J5IGluIHRoZSBmdXR1
cmU/DQo+Pg0KPj4+IFJlZ2FyZHMsDQo+Pj4gQ2hyaXN0aWFuLg0KPj4+DQo+Pj4+IFJlZ2FyZHMs
DQo+Pj4+IExlaSBMaXUuDQo+Pj4+DQo+Pj4+Pj4gTGVpIExpdSAoMik6DQo+Pj4+Pj4gICAgIG1t
OiBkbWFidWZfZGlyZWN0X2lvOiBTdXBwb3J0IGRpcmVjdF9pbyBmb3IgbWVtb3J5IGFsbG9jYXRl
ZCBieQ0KPj4+Pj4+IGRtYWJ1Zg0KPj4+Pj4+ICAgICBtbTogZG1hYnVmX2RpcmVjdF9pbzogRml4
IG1lbW9yeSBzdGF0aXN0aWNzIGVycm9yIGZvciBkbWFidWYNCj4+Pj4+PiBhbGxvY2F0ZWQNCj4+
Pj4+PiAgICAgICBtZW1vcnkgd2l0aCBkaXJlY3RfaW8gc3VwcG9ydA0KPj4+Pj4+DQo+Pj4+Pj4g
ICAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCAgNSArKystLQ0KPj4+Pj4+
ICAgIGZzL3Byb2MvdGFza19tbXUuYyAgICAgICAgICAgICAgICAgIHwgIDggKysrKysrKy0NCj4+
Pj4+PiAgICBpbmNsdWRlL2xpbnV4L21tLmggICAgICAgICAgICAgICAgICB8ICAxICsNCj4+Pj4+
PiAgICBtbS9tZW1vcnkuYyAgICAgICAgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrKysrKyst
LS0tLQ0KPj4+Pj4+ICAgIG1tL3JtYXAuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDkg
KysrKystLS0tDQo+Pj4+Pj4gICAgNSBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkNCj4+Pj4+Pg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
