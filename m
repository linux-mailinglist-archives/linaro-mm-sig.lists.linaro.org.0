Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 77597CCBD30
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Dec 2025 13:43:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C4EE3FDB2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 18 Dec 2025 12:43:54 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012052.outbound.protection.outlook.com [52.101.53.52])
	by lists.linaro.org (Postfix) with ESMTPS id D5EE83F9D9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Dec 2025 12:43:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ky1GjzR7;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g4SbzZsWt09MQ1ZzA475EQW4nVM1BuZz7jQQpRFCvsW5NdMhHK93HneNt2UMXNkSnErqYThPu6UbPQIOVWt2wAZdK4F1Ao4fFAhF0RLkpbiVMq6ODVrIjC/FxgLEfFD85mBt4KzBted9iWpPbRITIYFneXU5AJv4MYsCAt65JutFsvjFY4Jnsgu8uNrQPOV0prNq3yz5pivl/QyJQ+n8FR7/W9+br3pR2o5R/EkD9x8lv3tviEQKUT8rTD6jvVbD8t+qeU/yQrV4zYKiuC5Lz5xPeXvkniGdaRRr8hFU/jkaATKUKO8PikKxLTvfU1ELWlTvpWZFiNxhmwpnwWWubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5cUbtqBOu65JPY0uA0foEE3ZBz7UpkhGhgYs0fBYQY=;
 b=EdTaPIDmcDad6/TVb2KPAfw5XY2j3m/gU4qwcpfj4h0uY+KMi7j2nvvu7eBJKp+5ozXWkoA27Qvcy5m8SWaUeCc2sR3FUiTV/WVnEBx3gMsV0jfNDH8DVx6hj1wGtdArrw18n0S+wQsFxcsLumG4GTHJS7mkj9/r29y/oKvWSgO36Wl8RL+hhC96prHfhqLsplcX2UrZC/hWza19G82VmhCDh3O5HKn6jOCiPoT0Q8DTvI1+qXIw4sgtZkudfW64f2TcKvGj455mjjk5LtuHf/75N/9pOPuX8vIyxYXf3my4fCZpx6qAs0OtS3dKV8CywLttssa07K2Oa3M3c7vFkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5cUbtqBOu65JPY0uA0foEE3ZBz7UpkhGhgYs0fBYQY=;
 b=ky1GjzR7WVvCGlY4qF5WtK0Gec2bQFDsSZVE2UbfnBAL6uQOCLjNPhsv18JikWfdDW/HPPrS7pqDtEhb6yFJ+eEG4RNsFIlTLp4CKekYDh+XdIL+gnQKcPkpRTDnhBHZ4AkfcgY/su+KvBiajRtcvX2k30wmYesSsYTESEyLMA0=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ5PPFDF5E260D0.namprd12.prod.outlook.com (2603:10b6:a0f:fc02::9a6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Thu, 18 Dec
 2025 12:43:42 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 12:43:42 +0000
Message-ID: <dbe0c5c6-3da2-4d25-8d56-b72526625e8e@amd.com>
Date: Thu, 18 Dec 2025 13:43:38 +0100
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-6-christian.koenig@amd.com>
 <875587a6-a7d6-4d99-bfd7-49b6570941aa@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <875587a6-a7d6-4d99-bfd7-49b6570941aa@ursulin.net>
X-ClientProxiedBy: BN0PR04CA0144.namprd04.prod.outlook.com
 (2603:10b6:408:ed::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ5PPFDF5E260D0:EE_
X-MS-Office365-Filtering-Correlation-Id: a8dd0827-285b-489c-51c6-08de3e33136c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Q2FSQ3RoNFNQcGw2WTJrVm9xTWROUTQ2YTUyNWJ1dnYrZnViTHVTdjVwRUVo?=
 =?utf-8?B?ZUU4N1VlV2xGTHBZK3JKZEl1cTVnQXQyaGJwNlUxYlVmZTZrOEZCMzJoM21M?=
 =?utf-8?B?Zmh3L0p5aTlRc1lLQ2c2N255c3JWL0JMTkhHeWtNWkJUUExmMTlGK0JIK3Fo?=
 =?utf-8?B?R3lZcC9oWlc1N0hDZ21PTTNSbm90OG53aStiOFd2YVUxZmpzb3FSZ2l2YStX?=
 =?utf-8?B?ck5qVGFxV2hXeDVBcXpBRmNPZ1NSdnhES08vc1lWdFFmR0hvUEs0SzQvbnhv?=
 =?utf-8?B?TG9jVkRhUXlGam9iaENLbUFiWHExbGFiOEdIL1dSQUFjUnh0UDNYUWtqQzcy?=
 =?utf-8?B?Z1BpR0M5dUlERUdhUUpPVUxZQWxYWVRqMm95TjRSZ2ZRVGpTeEp1TVd0QnJF?=
 =?utf-8?B?NmU4L3FNMzlYRkxUaGJzbGwwa2dVdjhHMTlaUWVla3JvOHJqRS9VQlVLbk8y?=
 =?utf-8?B?VHZkUVMzRnlZU3QvUHZHemxTU2E3RlErTDI1MDZMUGpGVk9PaUI4MGo5Tkw1?=
 =?utf-8?B?MXZoMkdyMkdPS1FtQTY4cXlQWWR6Si9IQnVFYUhRZ2x2NWMzRzR1Nnh5NG1i?=
 =?utf-8?B?YUlTTk9FS3l1YzhoaWVBak9wVkRPUC9xTGhBKzRXMjhwL2VaSmhLb1RYZks5?=
 =?utf-8?B?RVZQRjdaR0dzMmhUbHFCcVBSMTUzNE1KTStBVGkxYlQ5dStrcVE1OXBYOU9x?=
 =?utf-8?B?ZFhPUHlVM3lPc3BQZzZRd2xyOGNoLzlaOFJFWmlEcS9DMFp0a0ZYdjdPL3lE?=
 =?utf-8?B?NUw0Y2JUYjltaXIxejZRNzYwaHJyOWxjNGd1RFRRaHRoaXVIOG1jbDlOT2Qy?=
 =?utf-8?B?R0Z1MTYzZ2llS0Y1M29lS0pLdHFsREpDVGc1T2hWNHVLc3lTQWVXM2JFUTBv?=
 =?utf-8?B?RmJSczZKN2xYZG5nVzRCY0xjTksyWm42a2JhN0ZuYzhQMU15dUF0QW9jalI1?=
 =?utf-8?B?K1FoaDQ4UmRXMThlblBTTksxeEV4TkU3RTBRTjkrYlY5U1FyY2JGd3Ezais1?=
 =?utf-8?B?a1VjTmtpS0toaDFIU0JVNWpZRkVmTFpvTzZxTGtMcUYrb3p6S0JTazJwS25L?=
 =?utf-8?B?UDZKbVZROU1vTlNIVVVrQVY2c1c3ZHRiTzVPZXF4WmlVdkZ6TFp2SWNjK05D?=
 =?utf-8?B?Um9FZysxUXFranRTSHZUUTVaaU9CUDdZWjFWVTN0VnhmNVBLQkx3SDlaQ0VR?=
 =?utf-8?B?bEZSbXUxQjhQa0JpWklPTG1RM0tTamR1aUw2WWc4eGVIRGRjdStwbkpNMDRC?=
 =?utf-8?B?ckxId0psYlpqOFJ2Ly80a1VvL3Z2RlRQK3pUbVFvMHYxcUtjUTgybUY0RGZJ?=
 =?utf-8?B?NmtqVndJOTQ3UVdMTkY0Q3VpcjhMSzFZRkh0MjFEM3pSZ1JGVFkwRzNzTnlR?=
 =?utf-8?B?U29MaGRyYW5VL3VuU0FIYXRVQkFXMklvK3kzZVVkT012V2t2RnVCcjhXdHBD?=
 =?utf-8?B?ZHRkdHJ5akJOT0srQWFaNld1WG56YkVXV3pXOU10dWdBR3VsaVlIRmhnQjMw?=
 =?utf-8?B?SHM4VEF5ZmxaSDVuQjlpUE80R0svZHJmaytIeUpvNmJHV3ByUTk5V3QrOEZ6?=
 =?utf-8?B?V2VOS0h1Z09lbFhZM08vd0dCbGdxVGZZb0lvdXFOTTdIVUtMcWlGajNPL1Bx?=
 =?utf-8?B?dzJnQnFxbmpXRjUrZDd4NEtncDFNWWRxSGEyL2dQRTNtbFR0WVI5Z2U3Y0Zn?=
 =?utf-8?B?andNWHVncGJwZVl0cnNMK2FOamhoN3B4Vi9oZGFKTW5kZW1NSjIweUtjWGJa?=
 =?utf-8?B?cGpaVGtaUHVsTFhPQVN0QWx5VjhFaWlxTTh0a0MrUEt6eTAwbW5UMEs2ZlY4?=
 =?utf-8?B?enBYWDEvNzJ3bm50S0lqT1AveFJ0emRiUmlpRy9EK1RIaTk5MjZzMTBOQzcx?=
 =?utf-8?B?SEtrRVNYYm9FZEFNbHFrV3dYeEdNeXBEZFVRZk5rbkVtL3VQRmQ1RldKL055?=
 =?utf-8?Q?+e/nTZqk19MmTHgXLfnNuZUqlpHmfVCy?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RG9leEhQUGN5YXQ1OHBQWjUrVGlwbC9nOXF1eUhIblNJYytlTXpobjloRzZr?=
 =?utf-8?B?V250RXEzSEhFNStRZDN0Y0pBdnVpakVtYmNPYitxNXRQcXdxdlNIQzJFS1Ry?=
 =?utf-8?B?S1RmcmNoNFM0cE50QnZzVjl4VityaVNyTnNyK2JOR2hzcWYvaVVaelc5Y0w5?=
 =?utf-8?B?a0owdURKZUd5ZlZJUXdWVUNTSzM3OFZ0KzlHc3pwVWw0OTk3UzBqRWpOb2VD?=
 =?utf-8?B?b0Iyb0lzalZTc3JFV3hMVDdnekRRWnd2YXAzT2FaeVdyYUhUQTBVcEZ4UkN4?=
 =?utf-8?B?N08zUFd4Uk1lSUxTTis2a3RxdHNJdWhXdEtZNTBvR0JzSXBpWW1oRVdjRmQw?=
 =?utf-8?B?czYxOWdFN1NFdUR3UjduMlVxVWhxb0lPL1FvVEUxYTBHWkh0U05xRzVWMmVL?=
 =?utf-8?B?c0YzVGcwWHB6YVYwWkJVaGlYc0NYaDh1enNPMS8zc3U3RUcwblR2TVlkWWtr?=
 =?utf-8?B?aHpSZjF4VHZsNE5RZXc0VTMySi92UVlTVDZscmpmSHFsdjNBaGRrMEpLMlVR?=
 =?utf-8?B?RzlrQWpMbXY1eTBja2wyRm1KekNiNzFZV3oycWRpMXc3eUhCRWlFQUtiRUdY?=
 =?utf-8?B?ZnRjYzlqOFlKdXJYdVNtcXRNd0I1UnlPVTY1L1lOSGJ2OGg5cExraHp2WEtM?=
 =?utf-8?B?M1daSldqYmVTZmdyOFFqWkZkMVp3cDdoN0k2TTc4Z1FwS0xWZTFteFF2MEx3?=
 =?utf-8?B?a0hXM01VSVQ3cFJkNmhoZjVZeGc0eVVLZThZZWREZUZIbG4rK05MQTVhM01Y?=
 =?utf-8?B?TUZ3ZDV2a1hxeVJtbTFSR2ZQUkZaZzhpZlRuOHNBU2dlQWxSOUUxTVdGZ0R1?=
 =?utf-8?B?czB0RklianJBTFMzWjFLNnRWVEFPRFVJSFdqNHpUdlYxTnM2Vm9MNlQ1TDJt?=
 =?utf-8?B?Z3JsZHdpZk8xY0U2cXpTQ0NadkZUckVFbGJmNVZVbExJbW9tcVdDbUZTYTFS?=
 =?utf-8?B?dU9ldFBSV2FPR2tqdjF3bHE1MW9PSlA4V0NRQXd4TVh4cm13anhVR0pFMm9s?=
 =?utf-8?B?MFh4WXdqWDdReWlNL05hZVg1VEJwK3haVFBLSjhCTkZQOTBIUEQ4ZUVwRWlk?=
 =?utf-8?B?WGRXNGJJbUhEYXh3R2ROWklOZWwwbUF3RTNpWElFdXVRQ0xzZWI0cVRQem53?=
 =?utf-8?B?OU1wemhlbmpHWlRFcjFhd3YvWThnbXovWVN3bU55NXRUWHo0dzNxTkhkb3E3?=
 =?utf-8?B?WTA2N2JXSncvTWppazBHUk9sN3IzSndkdk1PNE9SZTZFTUVGK2VBY2Z3VWZm?=
 =?utf-8?B?em5zM1BXUzFCRVdXVG9VNUxRcGNqcnVOd2lqM1A2UnJxdEJ3c0s1Sk8yMVdz?=
 =?utf-8?B?NDM3ZnFVWU9lNjNMaWRLcWZPcmZSWmlMV0swcWZhcEhkd2lNRXJGYVkyTXVi?=
 =?utf-8?B?dHV5TFByVDB3dkxJNFF2VkNqeWNhWWRQcWZpRzV3TkMzYzJpaEp6aVAwR204?=
 =?utf-8?B?S3JnVEFEY21wNDV4K0lkaWdZN2xvcmdoTm56dTc0aEV2RWxkQURDUmpId3NW?=
 =?utf-8?B?OXh1MjBSOVY5dFRHU2dUaEUwTHNvLzJkRHFpTURVU3g5bkxxdTdON1JGQXNr?=
 =?utf-8?B?Y2VvOU1rWFVBMnFwRHZta3VDMnBjUmZzSldicnBLY1RzeFhzaU8vN2N2ajVD?=
 =?utf-8?B?Q2k2NmUxR0lyVjdwSGVRcGVMUkFzaXBobVlablZ0V0pLYy9iZVdlZW44SDM4?=
 =?utf-8?B?MllyWGdGN0ZvU1JDOEM2d21ZNHRUMmJFYk14Ym9xanRwUlhQNmhrcVI2VnVL?=
 =?utf-8?B?WHFKRCtWQnAvNnRiRVpmNjRQMEhRMGJrd1RaSEJwYXh0UVVRaUtGdTg4Y2U0?=
 =?utf-8?B?RzlGS2NOckdCbmgzNDA3aTZwc29OT081SWdGbmZVMTh6SjJ4OEhGTEJHWTk4?=
 =?utf-8?B?V3RnU2h3THhTOTdQVU5CL1ZUV1pEWmd1YTZxNnZiUWk2ZmdQMkxEM0tDbU9U?=
 =?utf-8?B?aEV0eXgxVytFYVcyb1hoZytJS2VvV21mdzJpU05FMC83RkRwN2hjbFA3cnpE?=
 =?utf-8?B?OEpuSERXN1ZvVFdndXcwUlpSaHlabzdwa0dNQWo0RTE3Vmh1Yi9COFhReWdD?=
 =?utf-8?B?ejQyYVp0VmR3THFXdUNNRVdpTDZWYnc4RGgrdktOUVlzMlpRc1dBckphV0x1?=
 =?utf-8?Q?E6uH6y51BuTBijU6dIKbQrur7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8dd0827-285b-489c-51c6-08de3e33136c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 12:43:42.6323
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P8jtQBCBBVzZJNHHYytdMwscUgHOKbhnJEPvEpR94V6xHbCnFocBM3uz+V5xErnw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFDF5E260D0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.52:from];
	TO_DN_SOME(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[52.101.53.52:server fail];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D5EE83F9D9
X-Spamd-Bar: ----
Message-ID-Hash: IXAXPK7GJ7L6ATKOIDGSWV5UA57UXCRN
X-Message-ID-Hash: IXAXPK7GJ7L6ATKOIDGSWV5UA57UXCRN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 05/19] dma-buf/selftests: test RCU ops and inline lock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IXAXPK7GJ7L6ATKOIDGSWV5UA57UXCRN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTY6MDQsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0KLi4uDQo+PiBAQCAtOTAs
NiArNzMsMTEgQEAgc3RhdGljIGludCB0ZXN0X3NpZ25hbGluZyh2b2lkICphcmcpDQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgZ290byBlcnJfZnJlZTsNCj4+IMKgwqDCoMKgwqAgfQ0KPj4gwqAgK8Kg
wqDCoCBpZiAocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmLT5vcHMsIHRydWUpKSB7DQo+PiAr
wqDCoMKgwqDCoMKgwqAgcHJfZXJyKCJGZW5jZSBvcHMgbm90IGNsZWFyZWQgb24gc2lnbmFsXG4i
KTsNCj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVycl9mcmVlOw0KPj4gK8KgwqDCoCB9DQo+IA0K
PiBCdW1wIHRvIGFmdGVyIHRoZSBzaWduYWxlZCBjaGVjayBqdXN0IGJlbG93PyBPdGhlcndpc2Ug
dGhlIHNpZ25hbGVkIHN0YXRlIGhhc24ndCBiZWVuIGFzY2VydGFpbmVkIHlldC4NCg0KRG9uZS4g
SSd2ZSBwdXQgaXQgdG8gdGhlIGVuZCBvZiB0aGUgdGVzdC4NCg0KPj4gKw0KPj4gwqDCoMKgwqDC
oCBpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZChmKSkgew0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHByX2VycigiRmVuY2Ugbm90IHJlcG9ydGluZyBzaWduYWxlZFxuIik7DQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAgZ290byBlcnJfZnJlZTsNCj4+IEBAIC01NDAsMTkgKzUyOCw3IEBAIGludCBkbWFf
ZmVuY2Uodm9pZCkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBTVUJURVNUKHRlc3Rfc3R1YiksDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQo+PiDC
oMKgwqDCoMKgIH07DQo+PiAtwqDCoMKgIGludCByZXQ7DQo+PiDCoCDCoMKgwqDCoMKgIHByX2lu
Zm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6ZW9mKHN0cnVjdCBkbWFfZmVuY2UpKTsN
Cj4+IC0NCj4+IC3CoMKgwqAgc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1vY2tfZmVuY2UsDQo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU0xBQl9UWVBFU0FGRV9CWV9SQ1Ug
fA0KPiANCj4gSG0uLiByYWNlX3NpZ25hbF9jYWxsYmFjayBsb29rcyBsaWtlIGl0IGNvdWxkIGJl
IGRlcGVuZGluZyBvbiBTTEFCX1RZUEVTQUZFX0JZX1JDVS4gVG8geW91IG5vdD8NCg0KSHVpPyBB
cyBmYXIgYXMgSSBjYW4gc2VlIGl0IGRvZXNuJ3QuDQoNClRoZSByYWNlX3NpZ25hbF9jYWxsYmFj
ayB0ZXN0IGp1c3QgZGVwZW5kcyBvbiB0aGUgZ2VuZXJhbCBSQ1UgZnVuY3Rpb25hbGl0eSBvZiBm
ZW5jZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBU
dnJ0a28NCj4gDQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgU0xBQl9IV0NB
Q0hFX0FMSUdOKTsNCj4+IC3CoMKgwqAgaWYgKCFzbGFiX2ZlbmNlcykNCj4+IC3CoMKgwqDCoMKg
wqDCoCByZXR1cm4gLUVOT01FTTsNCj4+IC0NCj4+IC3CoMKgwqAgcmV0ID0gc3VidGVzdHModGVz
dHMsIE5VTEwpOw0KPj4gLQ0KPj4gLcKgwqDCoCBrbWVtX2NhY2hlX2Rlc3Ryb3koc2xhYl9mZW5j
ZXMpOw0KPj4gLQ0KPj4gLcKgwqDCoCByZXR1cm4gcmV0Ow0KPj4gK8KgwqDCoCByZXR1cm4gc3Vi
dGVzdHModGVzdHMsIE5VTEwpOw0KPj4gwqAgfQ0KPiANCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
