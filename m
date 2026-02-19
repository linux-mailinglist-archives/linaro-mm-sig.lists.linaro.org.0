Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIA6Bc3klmlbqgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 11:24:13 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 782B715DBFE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 11:24:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F35F401C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 10:24:11 +0000 (UTC)
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11010030.outbound.protection.outlook.com [52.101.61.30])
	by lists.linaro.org (Postfix) with ESMTPS id C91BE3F798
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 10:24:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Q8gBgn00;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.61.30 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kMv/kVX89Hh2A2Xz1g8zws2GBaYUEy6TtbLPZ88tPhh9pVdP9HzLjJ8ko4L7z9+19hZ/07PysnqC2r2TGR2VhdXOZKW8i/PoomgYRUjDjAJw9yW3bqIh5rgBeRe3x2KWOuT9y2enAcR9NC7dPfbFczRLEWaWYKLlos5jE7NYKQLdgPqeIUlVXiO2j5zpmbsWB+D3jQCstrrjuUstMsUIJBvnGm4NUcMrm+FmBI2NmlYPYAaWoslLe2bcLvt+bczq32Rjcfg6lCTfsjP+uouzJ6kyyFIEjYxSpxfP8oekilI8nKSPzET7qXkSj+DhNnjE9dAw7Hn61NjdH9sEYkNBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixluDI3dscpc7sPVDbV3njPUfiMtBZzBkLRrC6oYoYg=;
 b=jXpKuC8SLnwhHiXSoEsTOWyKI5FjEoMqyFenCcWnfL8F+9bubdblT5KejMfP1OqysrtRWTNl5GgPZ+D+uymljYONRIRtIEJpeYOhKtSWW9ucdxrQFvuCJ7DJ2E663m95+BQDkN95GuL7v3Ix3wxcPUNFs0nRT7W+o6KTPKnLU7Rcaa4ja5vyxlVfXmSym+UqytlkPvz+EVY7EKUjVgjJ59BAN1fy1ZQCLwJMbprsJmfaiX+uWxYCl40A5DMUO0D7JYAzdNGAUpSqhxjvux4UlWedmX09+XlSP9wu3gIP1TAJzVJFbO0ZqKkdiX6gTpaqHr8Ue3EHmmAw4bWK0QLMxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ixluDI3dscpc7sPVDbV3njPUfiMtBZzBkLRrC6oYoYg=;
 b=Q8gBgn00nsrLer+U/DCy9NGXXrK2vlZnrX2KCJCtIWh5heYv27IDtxMBYb+3ev+pY0L0FDz67szo6GIsqQz/6/39Eg/AjZkgr/9nNM45+kBUSrc06TqlhuHZKXoSTlEWvquk/emW99qq57YioyHUDQI8ZZOnRlBTEq1BFQaVRos=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB6464.namprd12.prod.outlook.com (2603:10b6:8:c4::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.13; Thu, 19 Feb 2026 10:24:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9611.008; Thu, 19 Feb 2026
 10:24:06 +0000
Message-ID: <53a84ddb-9202-48bb-bcb1-e76ee3097eb7@amd.com>
Date: Thu, 19 Feb 2026 11:23:57 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260210102232.1642-1-christian.koenig@amd.com>
 <20260210102232.1642-2-christian.koenig@amd.com>
 <f1345723cc5a61cdec5a6f168f71a323b822b7e2.camel@mailbox.org>
 <f357c2fc-3c72-42ac-b079-849222de4c6e@gmail.com>
 <9f929535744546bcb4eed26f6c27b4497ebc37bb.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9f929535744546bcb4eed26f6c27b4497ebc37bb.camel@mailbox.org>
X-ClientProxiedBy: BN0PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:408:e7::28) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB6464:EE_
X-MS-Office365-Filtering-Correlation-Id: 80c61d68-fe83-4007-12df-08de6fa10244
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?U3I4cDRzMmFLT2xLUm16RHlSYXJ0UW9UbDFtZ0xINElpVDBtVUFSMVI4UWxp?=
 =?utf-8?B?M2dzWk9PVTVxUnhnMzMwZkhFUmRpcVpESTBhS2lsNjJsdWh2QTdlLzY0cDk3?=
 =?utf-8?B?RDdjd2lBbVRkUjA4YVkzS0hTcEFRNGg0Wll3eGFYQmZNZ3lwM28vQklyMXg0?=
 =?utf-8?B?Si9wWjVHTGxxQUFtK2ZXYm1UQ1NXaWo2MUp5NGlWclcyVnFPOHl2bkFwTHBu?=
 =?utf-8?B?N1E0WFoweU0zaENCN1pGYkJ3L2VyVnFTayt4NlFFcnladTltUTcwL21IaUpa?=
 =?utf-8?B?SXM0QVBwQkNsL0NGZElCdTFpa0NDZ2wrOWFHKzNiMVNMZDJXaWFoRWhYRHFV?=
 =?utf-8?B?UDJRT3kzem9xUHlyVWo3cmNaUkt6Yit3Y3Rla3hFSUZOdW01UXRQY2VwQ3ZW?=
 =?utf-8?B?YTNabWFyNVVjVUVkRWFlVE1TcDZwb0RPVlF4OTFIOElEUHNXV25ycXk1VVpw?=
 =?utf-8?B?SERGdlNqSTVXMjMxZERjeS9oVVZkZ2ZYKzE0NjdxS2pNYVlybVA1ZndpcnNz?=
 =?utf-8?B?aUlrVWVoT1Q5R2VPaWJjbGUyZGN2MEhDT1I1RXBnRDBOTGZwRFQ2dGU5N1Vk?=
 =?utf-8?B?bGZVakswcVVtR2I5cGlmSmxKRHV5QUl1aDFCSjRxQ2lSMkR5SHlvRkQyazNS?=
 =?utf-8?B?dkprSUEwNmFucndoMFQ2V1J5bVN2djBzSXFiK0dYc3doMnZJZHlZckltTDRi?=
 =?utf-8?B?Q0kvTzJ6Z01ZbmxRazFYcVQ5em9Rc3FINjBsRmRlMjg3eWRlQ3M5N3BkdFVm?=
 =?utf-8?B?Q0dySTdzRE44MEJwa0dqVUVuWEVNczNVS1VpanFjVExMVm41L21JeGFuRDha?=
 =?utf-8?B?UnYxZGFsdUxnWXFQOVRqenhQTHYvdGRpR0hzQzBhdjJyMHVTVEptOTlsaTc2?=
 =?utf-8?B?TzZ2OXkwVGpqT2UzQXlNQlRUOHdHY0VSQWFPV1p6MGthMkhVZHBlQm15S29Z?=
 =?utf-8?B?NzUxczd1ZVd1N3J4TzNwbUdZRHNRcEhtYmVlRjBva29rQ1NVZHRya0FyMXFx?=
 =?utf-8?B?bmdVVkE2aXorRnZFZTBZbmZSWmU2SUNNMGYrZUpESURWUVgwbVJBUGtaS1Vs?=
 =?utf-8?B?SmZzVnpJUGNkdHpGZlV6TXRBcHRaNHRMUEd1dXRscEdCRDA1ejQ5a0c0THQ2?=
 =?utf-8?B?T0dUWVp1bzdOeUcxT045N1RUNCtwSWZXUHd3TTRaQWtDUmxBZ3l4T25VOWRV?=
 =?utf-8?B?VVh6bWlCcVVYT0NrWWRnNWpjc282dnMrNGN3QVhIbzFSS1JuekxoSzNJNERU?=
 =?utf-8?B?dXFzQlpicXpoNXNoTzVDVDQ1SXozNEhwekJOLzJQeTQzVW5kMXEycTRjYzBa?=
 =?utf-8?B?YmZaZjZ5TG1yQTlMQTdPV3BFNk4yeTdrb1VOS3ZYeGFaZHIyTm1xbitIUWUz?=
 =?utf-8?B?dkFsaDlsaXBXRzRxK1lkYlByVUV5M2RoMGpMSlBWd0doOXRUS1RZYXp3SDk5?=
 =?utf-8?B?djVWNTJ2R2xRM3VQbGpxOUswbU95M1JFNEk5TEJLUmtRYWIvRjJsdE5oMEQr?=
 =?utf-8?B?MlJxUHp2WGEweUY2V0VVOWZkdW1kSXUzLzVlaGZzYXoxVlNuNjdqQW8xYzAv?=
 =?utf-8?B?RHpNVFU1ZmRUZlNKdDVLT1hjc1ZVUnFmUmgzbC9ocW9nODl6cmxDVUloYmw2?=
 =?utf-8?B?aXdTczJ5ek14azhWeWt2a25BNmFFS0hvdXRvY0doM3I3bjFtZUpZTytlUk80?=
 =?utf-8?B?Nlo5aGIwV3NTRWFrelZ2b3dGaVlaOUZsakhtQmZGRDF0Z0dVRnhzbDFPV2hQ?=
 =?utf-8?B?UWxsUUpJclFEQklBQXhqTjlrYzRLR2UzQkErTXVpeWdjR052Q1czcUxxMy94?=
 =?utf-8?B?enhkQnA1OXF0TGs4bnZZQ3JtY0FaRzZXcjlya05zdi9DN0QwODhINVJnaDhu?=
 =?utf-8?B?c2hSaEprc3lnR2RQU3ZuRWFyRjlMdG5hL2FZemJxajJVNDJzZDlHNTdQZTgz?=
 =?utf-8?B?UGx4ZmdLYURyRUZMSThHY0tpOWM1aDVXVGwzdnBFblBtM2pFemkzZURJUnpE?=
 =?utf-8?B?ZDgyclA1VzNzUmFOVFpZZFZLdTBra1dYYnNSY2VIcDdEUElCMHRLRnJVT3Zh?=
 =?utf-8?B?eFZDd3BUWmhVY2R6UEZBY1cyTjZpcVlsanp5RFBJa25BSVJlMythb05mQ05G?=
 =?utf-8?Q?Pc58=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q1JNODNwSmVJQVVCUHA4TnZqcXI1UWlTcUJkOHlJV0ZKdGpUR3owelVnY2NK?=
 =?utf-8?B?S1hQenFJTDBuUDZRQWl4VXZZbGNKajgvKzIzblhUb3A2LzVMVE9JSTFuZXhO?=
 =?utf-8?B?dWlkNE41RkwySGJLY003WlRtSG5ySFpIMjRyZ2s1SVprejQrUFllL2pmWTFL?=
 =?utf-8?B?TkMrdTF5cHE5NHBaaWpQS0xTaXFabXIxRXRONDFhRWRHc2hXeWpqdStJRlN1?=
 =?utf-8?B?VDNVdXZ1ZmlwWkdaZ0hPTnNuQy9PM21rTmZ5bnpXQ291ODNpS3Q5RlRnUEpo?=
 =?utf-8?B?azlZTHV5WVlwYW9OemRSVjJ3N2FHZlN5VVRYVGZpVDhaS0swM0ZhemtNMk9v?=
 =?utf-8?B?aG9QdlhSZ1p0UEEvN3FPcmNVS3QyMTk0WDd3WmZ6VElaZW11dDhMU0lLcC9D?=
 =?utf-8?B?MVFvS0lzeFdUZlJCa0lSVTFPa1MwNm5zSEhsSU0yd00zbHRoSjZJSGMxd3Mv?=
 =?utf-8?B?UDY3S0dEUWpBZE4vK1Y3NVRtcHNKTUhnNmwxYUt6d284WVlKaU0wdHBORFNP?=
 =?utf-8?B?Ymt6Qkk1TEJOZkIzdDBaL2ViUTZhSUwrZERJZnliL3hjcUxBbU9XVjRUeWpr?=
 =?utf-8?B?OUs3NytFOUUzai9qbGFMRVROaTdaQ3hqMnJDK0c5SnY2YVBDL3B0Yzd0cWE4?=
 =?utf-8?B?cWlNTENEM24xTjhUL3FBN2dESFI2MjkvNXRiUFRLd1h0a0Q4TnVCN0JIclpo?=
 =?utf-8?B?VzVraHhBaUVLSGl5bVcvSjhZWnZxaVJRMlVuRjVFOXpRTEdtZW91eHJ5U3kv?=
 =?utf-8?B?RHErSDJIeDdjaVh3R1dKeTNoL041bWtBZjBPVnpxZEo2OXBxWm1CWTFRbzJs?=
 =?utf-8?B?ZURmL3lSaUQvNSsxUE9IME5QVmg2V0J0eTlKTUFZd0l5SzdIMko4SXRXVGNY?=
 =?utf-8?B?K3pyNDBBelpFbWdOZW52OXBGYk9YK0JBL091ZjJsQTROalJtbi9HRjNZMUNZ?=
 =?utf-8?B?Z1IvSTBITkhVMVpVcTdGZWZ3UFJxaEZnV0FLVklnajN3TzNGekJLeWJCbW80?=
 =?utf-8?B?VU9pbTVuRzlUSHUyTjFQUU5pait4Z2d2REdJcnVQZFZ0ak5YNGNsQ1h0SFMx?=
 =?utf-8?B?dWduVytzSnhXZFdxb1RFWE1ua0ZQa3AyN05qaTRRSlh0dVE0V1lRRjVoTDBv?=
 =?utf-8?B?LytydkI3OWVYQWZnb1lLMzNXSVU2TmVkNHhwTVl0aXF2cEExNThlVFZiT0JQ?=
 =?utf-8?B?NmxGVWhvaGtSeGRweFcwQjlZZzBJZEk3YkFBT2g0ZjhibkQ5Tm1qWkNTVkhu?=
 =?utf-8?B?bm9MU25zbmlKdmdaUldWWmY2K3lRYmQveGdWbWFWeEl3RDN4cEZCb08rYkxy?=
 =?utf-8?B?bElCVEI2Z0ZiSktVRko2R05UcjVRY3dSdnZ5ODVyRi9aQjBubGFGZERJZ2Nn?=
 =?utf-8?B?SVMydElhM0d5ZVY5ZTlLRnVjYTZIcVFkZisrNFBGaUF0YUFwS28rdlUvQjVK?=
 =?utf-8?B?bVhySk9NVnQxdmJRWFA2ZWVKU0ZCcmsyMHJ0UFd4VkRYNmZSMTh4QzhOSnpV?=
 =?utf-8?B?NU4yWVUwRUVHQXU4OUJ1UUNOdUQxV2tob0NkQ3BYUWRWRVcxc2ZBcUQ2WmU4?=
 =?utf-8?B?YTYvVkNwcjNLL254ZlNTa0NMdlJKVSsyYnRlZStTVFJNaFFpdTFQaU54cngr?=
 =?utf-8?B?MW9jd2lRelBNaHR1V2Z0UVFVeFQzRlVibDR4SVdPOUNMb0N6RnBxTmdwY0pt?=
 =?utf-8?B?MmxvUkFYTHNEcjhKeVpEVVpHaTRObHNuUUdyeGxqQXhZNmNIaGFId1Znc2ls?=
 =?utf-8?B?dzBUbkxvdVduckhqRWZqUERQWGwrQ28veS9UNkpvc09vK2ZMSCtiYldMd3NB?=
 =?utf-8?B?WFhQbE8ydk5FSGVrdXFYaUs0cmkrSXI0UHNWY0hORUFZL3lyU1hTcjVHRFY4?=
 =?utf-8?B?RC8xVHE1U0RhWUxCVFFKQ2pEaFFGbVBTRFNKc0xxQjczRmFGOUdHUGZDaVox?=
 =?utf-8?B?TVR6Q0Y2cjNWd3hVY3FpZVdhenU3MVJEeFNPRTJFTjVhZzZpZS8yU0VjMlJM?=
 =?utf-8?B?SCt6MzdGN0NubjRXRDZyZkdwdk5ORjNZcEtsZTl1elMzeWYwNTEwZlcwQjBL?=
 =?utf-8?B?U21SbSt6MWhscVBzMjc5NjQzbGdqNkdSZXhBdkRNbkdUUkdkQURWdHBxTDVp?=
 =?utf-8?B?SktZMUdseWlVYWkzNFpWb0s2VFhsU1Z6TDRFSWZEZ3QxUk5PTncrRDk2WERB?=
 =?utf-8?B?RXgrcUo1b0phQlVLY3BVZUkrNi9CVENmN004VmMrUnNoQXFsNEYzUTZhMnFL?=
 =?utf-8?B?VVpQaUhuaEhDcnF6OSsrTE04VklmN0ljWE9oK0RPdEpGWms0RnZyTUlzMW9Q?=
 =?utf-8?Q?/H1Qhs+tcBDzGg0Lb3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c61d68-fe83-4007-12df-08de6fa10244
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 10:24:06.0175
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aR+h1zVsGErbH8XL738EYEqlHjaTZd8Ug7Cm9h4+wLzyvS5Xtb97XpnohBIdJ0qA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6464
X-Spamd-Bar: ----
Message-ID-Hash: TYOVQ367GAPRI6QN7LWDRRF5YTBIID54
X-Message-ID-Hash: TYOVQ367GAPRI6QN7LWDRRF5YTBIID54
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/8] dma-buf: protected fence ops by RCU v5
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TYOVQ367GAPRI6QN7LWDRRF5YTBIID54/>
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.969];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 782B715DBFE
X-Rspamd-Action: no action

T24gMi8xMi8yNiAwOTo1NiwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPj4+PiBAQCAtNDU0LDEz
ICs0NjUsMTkgQEAgZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRfZmxhZyhzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSkNCj4+Pj4gwqBzdGF0aWMgaW5saW5lIGJvb2wNCj4+Pj4gwqBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+PiDCoHsNCj4+Pj4g
Kwljb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0KPj4+PiArDQo+Pj4+IMKgCWlmIChk
bWFfZmVuY2VfdGVzdF9zaWduYWxlZF9mbGFnKGZlbmNlKSkNCj4+Pj4gwqAJCXJldHVybiB0cnVl
Ow0KPj4+PiDCoA0KPj4+PiAtCWlmIChmZW5jZS0+b3BzLT5zaWduYWxlZCAmJiBmZW5jZS0+b3Bz
LT5zaWduYWxlZChmZW5jZSkpIHsNCj4+Pj4gKwlyY3VfcmVhZF9sb2NrKCk7DQo+Pj4+ICsJb3Bz
ID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KPj4+PiArCWlmIChvcHMtPnNpZ25hbGVk
ICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+Pj4NCj4+PiBNYXliZSB5b3UgY2FuIGVkdWNh
dGUgbWUgYSBiaXQgYWJvdXQgUkNVIGhlcmUg4oCTIGNvdWxkbid0IHRoaXMgc3RpbGwNCj4+PiBy
YWNlPyBJZiB0aGUgb3BzIHdlcmUgdW5sb2FkZWQgYmVmb3JlIHlvdSB0YWtlIHJjdV9yZWFkX2xv
Y2soKSwNCj4+PiByY3VfZGVyZWZlcmVuY2UoKSB3b3VsZCBnaXZlIHlvdSBhbiBpbnZhbGlkIHBv
aW50ZXIgaGVyZSBzaW5jZSB5b3UNCj4+PiBkb24ndCBjaGVjayBmb3IgIW9wcywgbm8/DQo+Pg0K
Pj4gUGVyZmVjdGx5IGNvcnJlY3QgdGhpbmtpbmcsIHllcy4NCj4+DQo+PiBCdXQgdGhlIGNoZWNr
IGZvciAhb3BzIGlzIGFkZGVkIGluIHBhdGNoICMyIHdoZW4gd2UgYWN0dWFsbHkgc3RhcnQgdG8g
c2V0IG9wcyA9IE5VTEwgd2hlbiB0aGUgZmVuY2Ugc2lnbmFscy4NCj4+DQo+PiBJIGludGVudGlv
bmFsbHkgc2VwYXJhdGVkIHRoYXQgYmVjYXVzZSBpdCBpcyBiYXNpY2FsbHkgdGhlIHNlY29uZCBz
dGVwIGluIG1ha2luZyB0aGUgc29sdXRpb24gdG8gZGV0YWNoIHRoZSBmZW5jZSBvcHMgZnJvbSB0
aGUgbW9kdWxlIGJ5IFJDVSB3b3JrLg0KPj4NCj4+IFdlIGNvdWxkIG1lcmdlIHRoZSB0d28gcGF0
Y2hlcyB0b2dldGhlciwgYnV0IEkgdGhpbmsgdGhlIHNlcGFyYXRpb24gYWN0dWFsbHkgbWFrZXMg
c2Vuc2Ugc2hvdWxkIGFueWJvZHkgc3RhcnQgdG8gY29tcGxhaW4gYWJvdXQgdGhlIGFkZGl0aW9u
YWwgUkNVIG92ZXJoZWFkLg0KPj4NCj4gDQo+IEFscmlnaHQsIG1ha2VzIHNlbnNlLiBIb3dldmVy
IHRoZSBhYm92ZSBkb2VzIG5vdCByZWFkIGNvcnJlY3QuLg0KPiANCj4gQnV0IHRoZW4gbXkgcXVl
c3Rpb24gd291bGQgYmU6IFdoYXQncyB0aGUgcHVycG9zZSBvZiB0aGlzIHBhdGNoLCB3aGF0DQo+
IGRvZXMgaXQgc29sdmUgb3IgYWRkcmVzcyBhdG9taWNhbGx5Pw0KDQpBZGRpbmcgdGhlIFJDVSBh
bm5vdGF0aW9uIGFuZCByZWxhdGVkIGxvZ2ljLCBlLmcuIHJjdV9yZWFkX2xvY2soKS9yY3VfcmVh
ZF91bmxvY2soKS9yY3VfZGVyZWZlcmVuY2UoKSBldGMuLi4NCg0KVGhpcyBhbGxvd3MgdGhlIGF1
dG9tYXRlZCBzdGF0aWNhbGx5IFJDVSBjaGVja2VyIHRvIHZhbGlkYXRlIHdoYXQgd2UgZG8gaGVy
ZSBhbmQgcG9pbnQgb3V0IHBvdGVudGlhbCBtaXN0YWtlcy4NCg0KQWRkaXRpb25hbCB0byB0aGF0
IHNob3VsZCBhZGRpbmcgdGhlIHJjdV9yZWFkX2xvY2soKSBwcm90ZWN0aW9uIGNhdXNlIHBlcmZv
cm1hbmNlIHByb2JsZW1zIGl0IHdpbGwgYmlzZWN0IHRvIHRoaXMgcGF0Y2ggaGVyZSBhbG9uZS4N
Cg0KPiBBZGRpbmcgUkNVIGhlcmUgZG9lcyBub3QgeWV0IGNoYW5nZSBiZWhhdmlvciBhbmQgaXQg
ZG9lcyBub3Qgc29sdmUgdGhlDQo+IHVubG9hZGluZyBwcm9ibGVtLCBkb2VzIGl0Pw0KDQpOb3Bl
LCBubyBmdW5jdGlvbmFsIGJlaGF2aW9yIGNoYW5nZS4gSXQncyBwdXJlbHkgdG8gZ2V0IHRoZSBh
dXRvbWF0ZWQgY2hlY2tlcnMgZ29pbmcuDQoNCj4gSWYgaXQncyBhIG1lcmUgcHJlcGVyYXRpb25h
bCBzdGVwIGFuZCB0aGUgcGF0Y2hlcyBzaG91bGQgbm90IGJlIG1lcmdlZCwNCj4gSSdkIGd1YXJk
IHRoZSBhYm92ZSB3aXRoIGEgc2ltcGxlIGNvbW1lbnQgbGlrZSAiQ2xlYW51cCBwcmVwYXJhdGlv
bi4NCj4gJ29wcycgY2FuIHlldCBub3QgYmUgTlVMTCwgYnV0IHRoaXMgd2lsbCBiZSB0aGUgY2Fz
ZSBzdWJzZXF1ZW50bHkuIg0KDQpBIGNvbW1lbnQgYWRkZWQgaW4gdGhpcyBwYXRjaCBhbmQgcmVt
b3ZlZCBpbiB0aGUgbmV4dCBvbmU/IE5hLCB0aGF0IHNvdW5kcyBsaWtlIG92ZXJraWxsIHRvIG1l
Lg0KDQpDaHJpc3RpYW4uDQoNCj4gDQo+IA0KPiBQLg0KPiANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
