Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2591EC6F296
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 15:11:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 405813F840
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Nov 2025 14:11:32 +0000 (UTC)
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010020.outbound.protection.outlook.com [52.101.193.20])
	by lists.linaro.org (Postfix) with ESMTPS id 48DDD3F70E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Nov 2025 14:11:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=TyL1hzZx;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.193.20 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F55f5AYH4NG/3LbHstQFXHKWFs3ozrnIDcgKT3xTOOPlj4xhWzDok2Kl5BgSfO+dTP+ZgNzYCI0ye+trSnf+k7rIx1cT8LOd4V87dCtjVSusZbZnSMmf3Mth+b8PJEPy/PPXR2c7DhG3BIFDCtfxY0fmqEtpaQEsbxt5Ldcm0hf155BTlSYu9tzS6LzHnrgarnFpPFzN+t+qZeP6pTthFUywlb8EmrtRUwySpxHnK9s1UJmLQjCA6Edbi7SV1naZTWwWfV+Fh1N+Eu/LZXoo8B5XyP1mu/Dl/NkAQafz53I43Stsz27T4lmYEG5sZWqvgdo4JqpR7Ew6CPpb68D7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eiZ7nRObJqE6TnwqLCHninvorZEilfjukWBmJU2XFGE=;
 b=PJrOTDC43W3aHeCLwqxfFJglWHTjW5GoZmMEzVKfi2iyEC+vxiSl5DAFes1XuT0stm3mGq8n62/5yjt1BpFfQmmLXAnRm0pRoxHfbnUUGgHPvTAqty+Zl6wnJIj5akKKbX+luEKJpCWr5S7Snw7bJi8tjzqbTY0/d0xWZSyUqzni7jPC7QYMCRAikW1EUVorEfj64jN1j2ExEatAJUWQ0Jg1egKdgt7iBS5TgHxLIe/lgBIPyoYmosVueHedT1xuinh+F1BOP3Doig9NkFgv0Owub3Eqfg2Of5ATgsNt61cD4zrgZJgp1Mjt5hxExnByNNTvtwbNzcN1g9tcC4ILFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eiZ7nRObJqE6TnwqLCHninvorZEilfjukWBmJU2XFGE=;
 b=TyL1hzZxR8pQz2ekj9YjTqHZKzo7wtXsRuv/RDdcxTphQzMcGX41ofmyJDXFigfhU8CvYGSs+CXkuNkP+co7OX658qv7ONW+5gNr/N6Dp8nHSzwBzFrFp2KBaxMqucRcarrwpbPQDKW2t3zhvui38o2Q8NwJRxLlqqZAYd5LR/g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4207.namprd12.prod.outlook.com (2603:10b6:208:1d9::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 14:11:09 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Wed, 19 Nov 2025
 14:11:09 +0000
Message-ID: <6714dc49-6b5c-4d58-9a43-95bb95873a97@amd.com>
Date: Wed, 19 Nov 2025 15:11:01 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119134245.GD18335@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251119134245.GD18335@unreal>
X-ClientProxiedBy: FR4P281CA0347.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f4::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4207:EE_
X-MS-Office365-Filtering-Correlation-Id: 34f31839-c545-406c-990a-08de27757d05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cGhoa1FYNVBKQzZMSGxoL2ZYVDdBcWpYOXpjMllXZXh4NWM2UWplS21FMlNJ?=
 =?utf-8?B?S25OT1IvZmp0Y1FjRlVKUG1SWmR5cEVuak9QdjhhRGkweUswa0lmQytvN0VP?=
 =?utf-8?B?UktKQzdnZGc5bFRvZjVtRS9YU3hON2JBeThYRWVtWFovLzAzZG0ya1krSkJD?=
 =?utf-8?B?aUlQM0x6TG42NFJmbHc1V2xUbCtTMnJMUXhOVlpwNUtGd2dZSjVvRFh1dU01?=
 =?utf-8?B?em5yQWNqSk5ZY1lnWFRpQ3dYamRmbEhiOFAwV2Y3cklITjY3YnpNaURUaFNL?=
 =?utf-8?B?YWQ1T2pHTGFnVnk2N01jY0cyMG9QUjZxVm9td0F4Yko0QWRJODkyclV1UHpB?=
 =?utf-8?B?RWkvYklVTlVXVWMyQTJKNHRWNXRxT3lTdk1LZzJpclk2bWJRRll2WG9mNThI?=
 =?utf-8?B?ME5XVDdpVTlLZ25FbEF3SjhLY2lBUlVkQm9NZ2RKN05EVmhqaTNYdFBUeW9z?=
 =?utf-8?B?UU9ORXVoU3ZrV2Qyc25oQkJTVE1VR0dnY3lZL2xVRWp2aVM1SEIvbUVmTEZa?=
 =?utf-8?B?U0poWXdPMDdlbXNGZ3pPTFZvWFByUFEzOXdJZDRRRTVSVjFVV2xNbmppWCty?=
 =?utf-8?B?U3NkQ1lSYlFpMUJJaEowUW9nQ2tpazZ1TjJJcUpKNis2SHMxNFVONFd6QVBB?=
 =?utf-8?B?RjIxL0JCSXpXanBIZTVRODM0VjFGdDR6T3hFZXNNd2Qxd1MzSXFYbFVmendo?=
 =?utf-8?B?WThZM3V3NmxWVDNtbldrRnpGY0lsQ0U4U3YrMmNrTm9yNks2Z3I5cUxQaGE4?=
 =?utf-8?B?UVM2UHE1SWZWeDVqUFFxeE1XMEV6WkVZOUEzOUFZWWR1aFA0dDh5cGYxUHdP?=
 =?utf-8?B?NjFPcTRmQ2VuUkJyNHdSejVkRkJqaXM5OGp5b0Z0dnhjNUNOam1DQ05XTGZm?=
 =?utf-8?B?dFdhMW5zdTE4bVRMajJNTlNmOEJLTDNVd0FaNDFMeVNiVENnYmVVVThVQUFw?=
 =?utf-8?B?STgrOXdPaU84Z1lUZWh3YlRHVFlxYW1EZEU4RWovVzlsbFVTcTBNdHhTUHhV?=
 =?utf-8?B?aVRyN2tnU0crUTNqZ0p4L00vSHJ3V21RY2ZmamZ5VWlDOFRxdytNdUNEVWxa?=
 =?utf-8?B?cW9kMk1LejZ5R1JIbWx5RmRBamJ4WlJMczJaU2hpbkNaYmdaYnlLYU84N2pk?=
 =?utf-8?B?WjMzL2dzQXBlT0hSb0dnOVBSV21iMDNzajhGWkxWT1lBYURwckt2N3d3SE03?=
 =?utf-8?B?czB4NlRSZlBzYVJmVyt2ODd5bDZmRk45ZTdXV25qQ3NHTllQZjVZR0NXKzgy?=
 =?utf-8?B?L1EyN1BONDkva2QvQm1XblMvOFVjNjlaUEoraE8rZVl1VUt4MnNnYnlWaEc5?=
 =?utf-8?B?NmxRQ3lnUGdMdDFmcWU0U3IxTG5vODlQallrRnExUjJ5bzYwejFwRk1Xb1JK?=
 =?utf-8?B?L09ybkFDMWtzMTBnZ1lPbXBRUE9tR240RUhQUWxxaG1ycmI1Y0QzbnNnZlJX?=
 =?utf-8?B?YzRHeDdlMTlWbEpKNk02NlBPSndtYlNZN2dwZUIwTU5jajZ0ejY3a2tGanNW?=
 =?utf-8?B?cFJHMHcyZ3R1UXMrd0kzdUh2Uk1xWmhIWWNRcGo0TkdhQ25NZUVVT1NOVWxu?=
 =?utf-8?B?UGxrZzlHWDJ1SkJpRDYxc0oyYU5aU3FacFl3ZmhZZFBpdlpML1hRMXFERS9L?=
 =?utf-8?B?SWRCbGhiNEVNd2xiZnlLSllmbVhhSXZaQ3hISmdyeWhXN29lZWVaSnJXa2Jo?=
 =?utf-8?B?RzVBaElvN0xlOWpIYU5WVW1IM3VhcGFIWjUvQ2w2WS80NXRSMEM4YUpndEVU?=
 =?utf-8?B?Q011MVhzd1lUSDNQbFIyVU5PdXg4MEozODIrSklEWVpuMTFaM21VTE1kdkJ1?=
 =?utf-8?B?WkN3VTZVVzVnOVhFTUxPMkRiKzNNdlB2TlVDTGFLOUlXYnIzTk5GM0VLaFZS?=
 =?utf-8?B?R2ZZMG5Yd1FrOXRFdkhNR0I5Mm1PU1lYWVF4TkE5TVFXK2VtWXN0QjNHQVFS?=
 =?utf-8?Q?V4EK/dR3Jg4NFGLNlA8WdzG55XFE6wrG?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?K1Foc0crN0VLM2QxVlI2Wko4SmxOU2kyd1UyQVFvSU1hamlrbHVXVzEvOGhX?=
 =?utf-8?B?N3lFOUVqWk9QRmdBSVBoTnNCWkV3enpmK0lFcWJlRnJpMnRvUU9DM09MYTFu?=
 =?utf-8?B?Qm1ndGtTSXNsVUxjVUROSXZjL2NQajNtZk1VdGR3a0l3VklUSUwyeGVDcEho?=
 =?utf-8?B?d3FBVlhYTHNncCtzNTJibkQ1c2loTzFIUERiSDgwUDBtTzYydXV3UDRxTW9q?=
 =?utf-8?B?dTEyS3FwOFNUaEsvYkpXL1lVVHVzeVJmT2M3b2dpRzJiWnZWZVRpcFcxKy9t?=
 =?utf-8?B?Vjg0SnI1clVHL3puSnhabjNNQjZpREs4NmFKQlpaTlA3Z0hXWnhZTU5BK1Yx?=
 =?utf-8?B?Z210QmFFc04ybUVkQmQwTXZ1MzdpbHowR2poeDFXWWwyUUdoNkRtaUdwck9T?=
 =?utf-8?B?Szh5Y2I2Z3hLUGtQT3JPNjdjZHB1NXFSc1FtSTVtNlhoZ0NiSldlRjdzT0s1?=
 =?utf-8?B?YVFkbjVlWklYa1A0c3dyVmJiUnBkSzNCZzVTc2pIcEdDZnNjL2VxMXZOLyt2?=
 =?utf-8?B?NDJWVDY1TnJwR25xUmF0U2tTTW4wUisycmtaYzVsMHVBVHVrNTFJQlNBejhJ?=
 =?utf-8?B?UmtIYzVzMXEzZElzNDFuUlJXZW5NL2NGS2pUQVZaMUUwUjZ4amhXcyszUnF6?=
 =?utf-8?B?UWdFOWxtRUlSdWc3Q0MwUG9od2V4SWRPNkdNMkk2KytWZjA3ZjJjOU4rclRl?=
 =?utf-8?B?Sm1mZ1J2d3ErZjBaakpsNndiazJMenJjYTJGTVRCQ1VmZXVoRlE3d1d6aHkx?=
 =?utf-8?B?SUhhRVhSOGtaaGRTZ2pLRjNtRlRQQ1Z5WHcvaWNDMHBsU05sem12REt1QThM?=
 =?utf-8?B?ekllejZOL0NtdWlwdzE2UEV1VWdxRllldkNKRUVRL1V3UElhZkZlcVlwQlkv?=
 =?utf-8?B?R0lIWWlDb2c3dXlYQUUyTTB3RnZQRTVpL0ZOSk55RFZLS0pIVWlvTnlvUVRQ?=
 =?utf-8?B?VkxSQy8yQXRRQitNZGY3ZktQakI5TG9OOWV1cW8wSHVzQzhYZVYzYUFyM2o4?=
 =?utf-8?B?KzN2Rk8xTTVIb3l4blUxei9mQkpuM0tOUFBNRXl1M1h1Vkc3STJVMzAwYXM5?=
 =?utf-8?B?dW5MN2NpYXk4eGlZMDVWUjJLL1dWdzhpc1ZwbXNtNS9heW9qSGVoZXZKQmhQ?=
 =?utf-8?B?SGhRV0pJTzZLSGdyaWFpcS9yaTZLT1liK1oyREo3QWtVaGJ0UlNFelZta3NJ?=
 =?utf-8?B?WTQvbVY3V0tCMEFvaXgwQ1lERzlsNlNNMzIrN3FEa1FCYTJSYlBYYnlKZmVy?=
 =?utf-8?B?OUxTK2JRRHpheXBFQlEydEh6Qm1MWXN0U2Fsc0NqOU9razN3SUNvaTZRT054?=
 =?utf-8?B?VTNQK1dsMXkxZnBZZU5pd25UTkl5eW1jN0hvVXJ2QlUzd2lIT3pJRWpYdHZk?=
 =?utf-8?B?YXRSYVREQ1hSZUxYN2FaN1JuWEpBaWtQMmlwQVpUZlppV2doOUxMaHpaTFo4?=
 =?utf-8?B?RURJdzNseVdpVmZxM204Q29ROU5LR1BDc0ZWRUk0Mk4xN0cyUmtabElwRmJJ?=
 =?utf-8?B?MUtmVExCZEVCWko0M2gxNmUySkZzdG9CLzk1Q1JNbktzWVhOMW5McHJXSnJZ?=
 =?utf-8?B?YmhxVWZDWnRRdWZDa0Q3MW03ZE5oMzFyQTR6YmcrS1lST2FVSjlmNlE0SWZR?=
 =?utf-8?B?SXFlUDZBenh3ZlJuK0hwSFJwUS9nZlpwOTJyWkpRQk15WTRObWlwR0JIQXRw?=
 =?utf-8?B?VFJmQUFJaEQ0Z0ZXbWRXck5MT0w5NVd3ZTRZS1ZVdEtkOXAwalFwd2p6MGFU?=
 =?utf-8?B?cW90dmxZbVdJcml3ajlJbktTRDl6b29GWmVRV2F1YlRyZ29MNktQNWM0ekpI?=
 =?utf-8?B?ellrTlQrVVhtb1V6ZHhQQ3ovTjlpNXpXK2RTU1IwYWlhcDRGZFBUQ3RLWTBs?=
 =?utf-8?B?R3Z6eFp2aWFOWHJ4bXBmcVd2aytDUitTS2NUTE1XWTUzWmR4MjVocnpBeDMv?=
 =?utf-8?B?M0pvR2w5ajd5NmY0aytoTnN0MTNONEdsNG5xOWs0cGwvMlN4NzE2VjhEV3Rk?=
 =?utf-8?B?YlFYMUtxMVY1YzRhd0ZKYi9hQ2lPSGJyZjU1anQrSExmc1ozS0thZmZMSk53?=
 =?utf-8?B?Z3l0N0xPNytQaFhQMjhobEEyQ1lPTjJKa2lCVkNsbmlJQ3hxa1FnOEtyczZu?=
 =?utf-8?Q?lkSSC6ng0A9+FgRI/KEN6sL+O?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34f31839-c545-406c-990a-08de27757d05
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 14:11:09.8082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0+Jc8VIYaEUptvZ/s0we6G6ycFlJakE7MOow/P6fT0ceCp0WJt9qZ35haDcpD8St
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4207
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.193.20:from];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	BLOCKLISTDE_FAIL(0.00)[52.101.193.20:server fail];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[34];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,52.101.193.20:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 48DDD3F70E
X-Spamd-Bar: -----
Message-ID-Hash: L6JIDBJOJVWRSKN5BQQXMI3OAW6VMRMY
X-Message-ID-Hash: L6JIDBJOJVWRSKN5BQQXMI3OAW6VMRMY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6JIDBJOJVWRSKN5BQQXMI3OAW6VMRMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTkvMjUgMTQ6NDIsIExlb24gUm9tYW5vdnNreSB3cm90ZToNCj4gT24gV2VkLCBOb3Yg
MTksIDIwMjUgYXQgMDI6MTY6NTdQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
DQo+Pg0KPj4gT24gMTEvMTEvMjUgMTA6NTcsIExlb24gUm9tYW5vdnNreSB3cm90ZToNCj4+PiBG
cm9tOiBMZW9uIFJvbWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPj4+DQo+Pj4gQWRkIGRt
YV9idWZfbWFwKCkgYW5kIGRtYV9idWZfdW5tYXAoKSBoZWxwZXJzIHRvIGNvbnZlcnQgYW4gYXJy
YXkgb2YNCj4+PiBNTUlPIHBoeXNpY2FsIGFkZHJlc3MgcmFuZ2VzIGludG8gc2NhdHRlci1nYXRo
ZXIgdGFibGVzIHdpdGggcHJvcGVyDQo+Pj4gRE1BIG1hcHBpbmcuDQo+Pj4NCj4+PiBUaGVzZSBj
b21tb24gZnVuY3Rpb25zIGFyZSBhIHN0YXJ0aW5nIHBvaW50IGFuZCBzdXBwb3J0IGFueSBQQ0kN
Cj4+PiBkcml2ZXJzIGNyZWF0aW5nIG1hcHBpbmdzIGZyb20gdGhlaXIgQkFSJ3MgTU1JTyBhZGRy
ZXNzZXMuIFZGSU8gaXMgb25lDQo+Pj4gY2FzZSwgYXMgc2hvcnRseSB3aWxsIGJlIFJETUEuIFdl
IGNhbiByZXZpZXcgZXhpc3RpbmcgRFJNIGRyaXZlcnMgdG8NCj4+PiByZWZhY3RvciB0aGVtIHNl
cGFyYXRlbHkuIFdlIGhvcGUgdGhpcyB3aWxsIGV2b2x2ZSBpbnRvIHJvdXRpbmVzIHRvDQo+Pj4g
aGVscCBjb21tb24gRFJNIHRoYXQgaW5jbHVkZSBtaXhlZCBDUFUgYW5kIE1NSU8gbWFwcGluZ3Mu
DQo+Pj4NCj4+PiBDb21wYXJlZCB0byB0aGUgZG1hX21hcF9yZXNvdXJjZSgpIGFidXNlIHRoaXMg
aW1wbGVtZW50YXRpb24gaGFuZGxlcw0KPj4+IHRoZSBjb21wbGljYXRlZCBQQ0kgUDJQIHNjZW5h
cmlvcyBwcm9wZXJseSwgZXNwZWNpYWxseSB3aGVuIGFuIElPTU1VDQo+Pj4gaXMgZW5hYmxlZDoN
Cj4+Pg0KPj4+ICAtIERpcmVjdCBidXMgYWRkcmVzcyBtYXBwaW5nIHdpdGhvdXQgSU9WQSBhbGxv
Y2F0aW9uIGZvcg0KPj4+ICAgIFBDSV9QMlBETUFfTUFQX0JVU19BRERSLCB1c2luZyBwY2lfcDJw
ZG1hX2J1c19hZGRyX21hcCgpLiBUaGlzDQo+Pj4gICAgaGFwcGVucyBpZiB0aGUgSU9NTVUgaXMg
ZW5hYmxlZCBidXQgdGhlIFBDSWUgc3dpdGNoIEFDUyBmbGFncyBhbGxvdw0KPj4+ICAgIHRyYW5z
YWN0aW9ucyB0byBhdm9pZCB0aGUgaG9zdCBicmlkZ2UuDQo+Pj4NCj4+PiAgICBGdXJ0aGVyLCB0
aGlzIGhhbmRsZXMgdGhlIHNsaWdodGx5IG9ic2N1cmUsIGNhc2Ugb2YgTU1JTyB3aXRoIGENCj4+
PiAgICBwaHlzX2FkZHJfdCB0aGF0IGlzIGRpZmZlcmVudCBmcm9tIHRoZSBwaHlzaWNhbCBCQVIg
cHJvZ3JhbW1pbmcNCj4+PiAgICAoYnVzIG9mZnNldCkuIFRoZSBwaHlzX2FkZHJfdCBpcyBjb252
ZXJ0ZWQgdG8gYSBkbWFfYWRkcl90IGFuZA0KPj4+ICAgIGFjY29tbW9kYXRlcyB0aGlzIGVmZmVj
dC4gVGhpcyBlbmFibGVzIGNlcnRhaW4gcmVhbCBzeXN0ZW1zIHRvDQo+Pj4gICAgd29yaywgZXNw
ZWNpYWxseSBvbiBBUk0gcGxhdGZvcm1zLg0KPj4+DQo+Pj4gIC0gTWFwcGluZyB0aHJvdWdoIGhv
c3QgYnJpZGdlIHdpdGggSU9WQSBhbGxvY2F0aW9uIGFuZCBETUFfQVRUUl9NTUlPDQo+Pj4gICAg
YXR0cmlidXRlIGZvciBNTUlPIG1lbW9yeSByZWdpb25zIChQQ0lfUDJQRE1BX01BUF9USFJVX0hP
U1RfQlJJREdFKS4NCj4+PiAgICBUaGlzIGhhcHBlbnMgd2hlbiB0aGUgSU9NTVUgaXMgZW5hYmxl
ZCBhbmQgdGhlIEFDUyBmbGFncyBhcmUgZm9yY2luZw0KPj4+ICAgIGFsbCB0cmFmZmljIHRvIHRo
ZSBJT01NVSAtIGllIGZvciB2aXJ0dWFsaXphdGlvbiBzeXN0ZW1zLg0KPj4+DQo+Pj4gIC0gQ2Fz
ZXMgd2hlcmUgUDJQIGlzIG5vdCBzdXBwb3J0ZWQgdGhyb3VnaCB0aGUgaG9zdCBicmlkZ2UvQ1BV
LiBUaGUNCj4+PiAgICBQMlAgc3Vic3lzdGVtIGlzIHRoZSBwcm9wZXIgcGxhY2UgdG8gZGV0ZWN0
IHRoaXMgYW5kIGJsb2NrIGl0Lg0KPj4+DQo+Pj4gSGVscGVyIGZ1bmN0aW9ucyBmaWxsX3NnX2Vu
dHJ5KCkgYW5kIGNhbGNfc2dfbmVudHMoKSBoYW5kbGUgdGhlDQo+Pj4gc2NhdHRlci1nYXRoZXIg
dGFibGUgY29uc3RydWN0aW9uLCBzcGxpdHRpbmcgbGFyZ2UgcmVnaW9ucyBpbnRvDQo+Pj4gVUlO
VF9NQVgtc2l6ZWQgY2h1bmtzIHRvIGZpdCB3aXRoaW4gc2ctPmxlbmd0aCBmaWVsZCBsaW1pdHMu
DQo+Pj4NCj4+PiBTaW5jZSB0aGUgcGh5c2ljYWwgYWRkcmVzcyBiYXNlZCBETUEgQVBJIGZvcmJp
ZHMgdXNlIG9mIHRoZSBDUFUgbGlzdA0KPj4+IG9mIHRoZSBzY2F0dGVybGlzdCB0aGlzIHdpbGwg
cHJvZHVjZSBhIG1hbmdsZWQgc2NhdHRlcmxpc3QgdGhhdCBoYXMNCj4+PiBhIGZ1bGx5IHplcm8t
bGVuZ3RoIGFuZCBOVUxMJ2QgQ1BVIGxpc3QuIFRoZSBsaXN0IGlzIDAgbGVuZ3RoLA0KPj4+IGFs
bCB0aGUgc3RydWN0IHBhZ2UgcG9pbnRlcnMgYXJlIE5VTEwgYW5kIHplcm8gc2l6ZWQuIFRoaXMg
aXMgc3Ryb25nZXINCj4+PiBhbmQgbW9yZSByb2J1c3QgdGhhbiB0aGUgZXhpc3RpbmcgbWFuZ2xl
X3NnX3RhYmxlKCkgdGVjaG5pcXVlLiBJdCBpcw0KPj4+IGEgZnV0dXJlIHByb2plY3QgdG8gbWln
cmF0ZSBETUFCVUYgYXMgYSBzdWJzeXN0ZW0gYXdheSBmcm9tIHVzaW5nDQo+Pj4gc2NhdHRlcmxp
c3QgZm9yIHRoaXMgZGF0YSBzdHJ1Y3R1cmUuDQo+Pj4NCj4+PiBUZXN0ZWQtYnk6IEFsZXggTWFz
dHJvIDxhbWFzdHJvQGZiLmNvbT4NCj4+PiBUZXN0ZWQtYnk6IE5pY29saW4gQ2hlbiA8bmljb2xp
bmNAbnZpZGlhLmNvbT4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxlb25y
b0BudmlkaWEuY29tPg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwg
MjM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAg
aW5jbHVkZS9saW51eC9kbWEtYnVmLmggICB8ICAxOCArKysrDQo+Pj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMjUzIGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4+IGluZGV4IDJiY2Y5
Y2VjYTk5Ny4uY2I1NWRmZjFkYWQ1IDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gQEAgLTEy
NTQsNiArMTI1NCwyNDEgQEAgdm9pZCBkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQo
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPj4+ICB9DQo+Pj4gIEVYUE9SVF9T
WU1CT0xfTlNfR1BMKGRtYV9idWZfdW5tYXBfYXR0YWNobWVudF91bmxvY2tlZCwgIkRNQV9CVUYi
KTsNCj4+PiAgDQo+Pj4gK3N0YXRpYyBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKmZpbGxfc2dfZW50cnko
c3RydWN0IHNjYXR0ZXJsaXN0ICpzZ2wsIHNpemVfdCBsZW5ndGgsDQo+Pj4gKwkJCQkJIGRtYV9h
ZGRyX3QgYWRkcikNCj4+PiArew0KPj4+ICsJdW5zaWduZWQgaW50IGxlbiwgbmVudHM7DQo+Pj4g
KwlpbnQgaTsNCj4+PiArDQo+Pj4gKwluZW50cyA9IERJVl9ST1VORF9VUChsZW5ndGgsIFVJTlRf
TUFYKTsNCj4+PiArCWZvciAoaSA9IDA7IGkgPCBuZW50czsgaSsrKSB7DQo+Pj4gKwkJbGVuID0g
bWluX3Qoc2l6ZV90LCBsZW5ndGgsIFVJTlRfTUFYKTsNCj4+PiArCQlsZW5ndGggLT0gbGVuOw0K
Pj4+ICsJCS8qDQo+Pj4gKwkJICogRE1BQlVGIGFidXNlcyBzY2F0dGVybGlzdCB0byBjcmVhdGUg
YSBzY2F0dGVybGlzdA0KPj4+ICsJCSAqIHRoYXQgZG9lcyBub3QgaGF2ZSBhbnkgQ1BVIGxpc3Qs
IG9ubHkgdGhlIERNQSBsaXN0Lg0KPj4+ICsJCSAqIEFsd2F5cyBzZXQgdGhlIHBhZ2UgcmVsYXRl
ZCB2YWx1ZXMgdG8gTlVMTCB0byBlbnN1cmUNCj4+PiArCQkgKiBpbXBvcnRlcnMgY2FuJ3QgdXNl
IGl0LiBUaGUgcGh5c19hZGRyIGJhc2VkIERNQSBBUEkNCj4+PiArCQkgKiBkb2VzIG5vdCByZXF1
aXJlIHRoZSBDUFUgbGlzdCBmb3IgbWFwcGluZyBvciB1bm1hcHBpbmcuDQo+Pj4gKwkJICovDQo+
Pj4gKwkJc2dfc2V0X3BhZ2Uoc2dsLCBOVUxMLCAwLCAwKTsNCj4+PiArCQlzZ19kbWFfYWRkcmVz
cyhzZ2wpID0gYWRkciArIGkgKiBVSU5UX01BWDsNCj4+PiArCQlzZ19kbWFfbGVuKHNnbCkgPSBs
ZW47DQo+Pj4gKwkJc2dsID0gc2dfbmV4dChzZ2wpOw0KPj4+ICsJfQ0KPj4+ICsNCj4+PiArCXJl
dHVybiBzZ2w7DQo+Pj4gK30NCj4+PiArDQo+Pj4gK3N0YXRpYyB1bnNpZ25lZCBpbnQgY2FsY19z
Z19uZW50cyhzdHJ1Y3QgZG1hX2lvdmFfc3RhdGUgKnN0YXRlLA0KPj4+ICsJCQkJICBzdHJ1Y3Qg
ZG1hX2J1Zl9waHlzX3ZlYyAqcGh5c192ZWMsDQo+Pj4gKwkJCQkgIHNpemVfdCBucl9yYW5nZXMs
IHNpemVfdCBzaXplKQ0KPj4+ICt7DQo+Pj4gKwl1bnNpZ25lZCBpbnQgbmVudHMgPSAwOw0KPj4+
ICsJc2l6ZV90IGk7DQo+Pj4gKw0KPj4+ICsJaWYgKCFzdGF0ZSB8fCAhZG1hX3VzZV9pb3ZhKHN0
YXRlKSkgew0KPj4+ICsJCWZvciAoaSA9IDA7IGkgPCBucl9yYW5nZXM7IGkrKykNCj4+PiArCQkJ
bmVudHMgKz0gRElWX1JPVU5EX1VQKHBoeXNfdmVjW2ldLmxlbiwgVUlOVF9NQVgpOw0KPj4+ICsJ
fSBlbHNlIHsNCj4+PiArCQkvKg0KPj4+ICsJCSAqIEluIElPVkEgY2FzZSwgdGhlcmUgaXMgb25s
eSBvbmUgU0cgZW50cnkgd2hpY2ggc3BhbnMNCj4+PiArCQkgKiBmb3Igd2hvbGUgSU9WQSBhZGRy
ZXNzIHNwYWNlLCBidXQgd2UgbmVlZCB0byBtYWtlIHN1cmUNCj4+PiArCQkgKiB0aGF0IGl0IGZp
dHMgc2ctPmxlbmd0aCwgbWF5YmUgd2UgbmVlZCBtb3JlLg0KPj4+ICsJCSAqLw0KPj4+ICsJCW5l
bnRzID0gRElWX1JPVU5EX1VQKHNpemUsIFVJTlRfTUFYKTsNCj4+PiArCX0NCj4+PiArDQo+Pj4g
KwlyZXR1cm4gbmVudHM7DQo+Pj4gK30NCj4+PiArDQo+Pj4gKy8qKg0KPj4+ICsgKiBzdHJ1Y3Qg
ZG1hX2J1Zl9kbWEgLSBob2xkcyBETUEgbWFwcGluZyBpbmZvcm1hdGlvbg0KPj4+ICsgKiBAc2d0
OiAgICBTY2F0dGVyLWdhdGhlciB0YWJsZQ0KPj4+ICsgKiBAc3RhdGU6ICBETUEgSU9WQSBzdGF0
ZSByZWxldmFudCBpbiBJT01NVS1iYXNlZCBETUENCj4+PiArICogQHNpemU6ICAgVG90YWwgc2l6
ZSBvZiBETUEgdHJhbnNmZXINCj4+PiArICovDQo+Pj4gK3N0cnVjdCBkbWFfYnVmX2RtYSB7DQo+
Pj4gKwlzdHJ1Y3Qgc2dfdGFibGUgc2d0Ow0KPj4+ICsJc3RydWN0IGRtYV9pb3ZhX3N0YXRlICpz
dGF0ZTsNCj4+PiArCXNpemVfdCBzaXplOw0KPj4+ICt9Ow0KPj4+ICsNCj4+PiArLyoqDQo+Pj4g
KyAqIGRtYV9idWZfbWFwIC0gUmV0dXJucyB0aGUgc2NhdHRlcmxpc3QgdGFibGUgb2YgdGhlIGF0
dGFjaG1lbnQgZnJvbSBhcnJheXMNCj4+PiArICogb2YgcGh5c2ljYWwgdmVjdG9ycy4gVGhpcyBm
dW5jaXRvbiBpcyBpbnRlbmRlZCBmb3IgTU1JTyBtZW1vcnkgb25seS4NCj4+PiArICogQGF0dGFj
aDoJW2luXQlhdHRhY2htZW50IHdob3NlIHNjYXR0ZXJsaXN0IGlzIHRvIGJlIHJldHVybmVkDQo+
Pj4gKyAqIEBwcm92aWRlcjoJW2luXQlwMnBkbWEgcHJvdmlkZXINCj4+PiArICogQHBoeXNfdmVj
OglbaW5dCWFycmF5IG9mIHBoeXNpY2FsIHZlY3RvcnMNCj4+PiArICogQG5yX3JhbmdlczoJW2lu
XQludW1iZXIgb2YgZW50cmllcyBpbiBwaHlzX3ZlYyBhcnJheQ0KPj4+ICsgKiBAc2l6ZToJW2lu
XQl0b3RhbCBzaXplIG9mIHBoeXNfdmVjDQo+Pj4gKyAqIEBkaXI6CVtpbl0JZGlyZWN0aW9uIG9m
IERNQSB0cmFuc2Zlcg0KPj4+ICsgKg0KPj4+ICsgKiBSZXR1cm5zIHNnX3RhYmxlIGNvbnRhaW5p
bmcgdGhlIHNjYXR0ZXJsaXN0IHRvIGJlIHJldHVybmVkOyByZXR1cm5zIEVSUl9QVFINCj4+PiAr
ICogb24gZXJyb3IuIE1heSByZXR1cm4gLUVJTlRSIGlmIGl0IGlzIGludGVycnVwdGVkIGJ5IGEg
c2lnbmFsLg0KPj4+ICsgKg0KPj4+ICsgKiBPbiBzdWNjZXNzLCB0aGUgRE1BIGFkZHJlc3NlcyBh
bmQgbGVuZ3RocyBpbiB0aGUgcmV0dXJuZWQgc2NhdHRlcmxpc3QgYXJlDQo+Pj4gKyAqIFBBR0Vf
U0laRSBhbGlnbmVkLg0KPj4+ICsgKg0KPj4+ICsgKiBBIG1hcHBpbmcgbXVzdCBiZSB1bm1hcHBl
ZCBieSB1c2luZyBkbWFfYnVmX3VubWFwKCkuDQo+Pj4gKyAqLw0KPj4+ICtzdHJ1Y3Qgc2dfdGFi
bGUgKmRtYV9idWZfbWFwKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwNCj4+DQo+
PiBUaGF0IGlzIGNsZWFybHkgbm90IGEgZ29vZCBuYW1lIGZvciB0aGlzIGZ1bmN0aW9uLiBXZSBh
bHJlYWR5IGhhdmUgb3ZlcmxvYWRlZCB0aGUgdGVybSAqbWFwcGluZyogd2l0aCBzb21ldGhpbmcg
Y29tcGxldGVseSBkaWZmZXJlbnQuDQo+IA0KPiBUaGlzIGZ1bmN0aW9uIHBlcmZvcm1zIERNQSBt
YXBwaW5nLCBzbyB3aGF0IG5hbWUgZG8geW91IHN1Z2dlc3QgaW5zdGVhZCBvZiBkbWFfYnVmX21h
cCgpPw0KDQpTb21ldGhpbmcgbGlrZSBkbWFfYnVmX3BoeXNfdmVjX3RvX3NnX3RhYmxlKCkuIEkn
bSBub3QgZ29vZCBhdCBuYW1pbmcgZWl0aGVyLg0KDQo+IA0KPj4NCj4+PiArCQkJICAgICBzdHJ1
Y3QgcDJwZG1hX3Byb3ZpZGVyICpwcm92aWRlciwNCj4+PiArCQkJICAgICBzdHJ1Y3QgZG1hX2J1
Zl9waHlzX3ZlYyAqcGh5c192ZWMsDQo+Pj4gKwkJCSAgICAgc2l6ZV90IG5yX3Jhbmdlcywgc2l6
ZV90IHNpemUsDQo+Pj4gKwkJCSAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQ0KPj4+
ICt7DQo+Pj4gKwl1bnNpZ25lZCBpbnQgbmVudHMsIG1hcHBlZF9sZW4gPSAwOw0KPj4+ICsJc3Ry
dWN0IGRtYV9idWZfZG1hICpkbWE7DQo+Pj4gKwlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnbDsNCj4+
PiArCWRtYV9hZGRyX3QgYWRkcjsNCj4+PiArCXNpemVfdCBpOw0KPj4+ICsJaW50IHJldDsNCj4+
PiArDQo+Pj4gKwlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7DQo+
Pj4gKw0KPj4+ICsJaWYgKFdBUk5fT04oIWF0dGFjaCB8fCAhYXR0YWNoLT5kbWFidWYgfHwgIXBy
b3ZpZGVyKSkNCj4+PiArCQkvKiBUaGlzIGZ1bmN0aW9uIGlzIHN1cHBvc2VkIHRvIHdvcmsgb24g
TU1JTyBtZW1vcnkgb25seSAqLw0KPj4+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPj4+
ICsNCj4+PiArCWRtYSA9IGt6YWxsb2Moc2l6ZW9mKCpkbWEpLCBHRlBfS0VSTkVMKTsNCj4+PiAr
CWlmICghZG1hKQ0KPj4+ICsJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOw0KPj4+ICsNCj4+PiAr
CXN3aXRjaCAocGNpX3AycGRtYV9tYXBfdHlwZShwcm92aWRlciwgYXR0YWNoLT5kZXYpKSB7DQo+
Pj4gKwljYXNlIFBDSV9QMlBETUFfTUFQX0JVU19BRERSOg0KPj4+ICsJCS8qDQo+Pj4gKwkJICog
VGhlcmUgaXMgbm8gbmVlZCBpbiBJT1ZBIGF0IGFsbCBmb3IgdGhpcyBmbG93Lg0KPj4+ICsJCSAq
Lw0KPj4+ICsJCWJyZWFrOw0KPj4+ICsJY2FzZSBQQ0lfUDJQRE1BX01BUF9USFJVX0hPU1RfQlJJ
REdFOg0KPj4+ICsJCWRtYS0+c3RhdGUgPSBremFsbG9jKHNpemVvZigqZG1hLT5zdGF0ZSksIEdG
UF9LRVJORUwpOw0KPj4+ICsJCWlmICghZG1hLT5zdGF0ZSkgew0KPj4+ICsJCQlyZXQgPSAtRU5P
TUVNOw0KPj4+ICsJCQlnb3RvIGVycl9mcmVlX2RtYTsNCj4+PiArCQl9DQo+Pj4gKw0KPj4+ICsJ
CWRtYV9pb3ZhX3RyeV9hbGxvYyhhdHRhY2gtPmRldiwgZG1hLT5zdGF0ZSwgMCwgc2l6ZSk7DQo+
Pg0KPj4gT2gsIHRoYXQgaXMgYSBjbGVhciBuby1nbyBmb3IgdGhlIGNvcmUgRE1BLWJ1ZiBjb2Rl
Lg0KPj4NCj4+IEl0J3MgaW50ZW50aW9uYWxseSB1cCB0byB0aGUgZXhwb3J0ZXIgaG93IHRvIGNy
ZWF0ZSB0aGUgRE1BIGFkZHJlc3NlcyB0aGUgaW1wb3J0ZXIgY2FuIHdvcmsgd2l0aC4NCj4gDQo+
IEkgZGlkbid0IGZ1bGx5IHVuZGVyc3RhbmQgdGhlIGVtYWlsIGVpdGhlci4gVGhlIGltcG9ydGVy
IG5lZWRzIHRvDQo+IGNvbmZpZ3VyZSBETUEgYW5kIGl0IHN1cHBvcnRzIG9ubHkgTU1JTyBhZGRy
ZXNzZXMuIEV4cG9ydGVyIGNvbnRyb2xzIGl0DQo+IGJ5IGFza2luZyBmb3IgcGVlcjJwZWVyLg0K
DQpJIG1pc3MgaW50ZXJwcmV0ZWQgdGhlIGNhbGwgdG8gcGNpX3AycGRtYV9tYXBfdHlwZSgpIGhl
cmUgaW4gdGhhdCBub3cgdGhlIERNQS1idWYgY29kZSBkZWNpZGVzIGlmIHRyYW5zYWN0aW9ucyBn
byBvdmVyIHRoZSByb290IGNvbXBsZXggb3Igbm90Lg0KDQpCdXQgdGhlIGV4cG9ydGVyIGNhbiBj
YWxsIHBjaV9wMnBkbWFfbWFwX3R5cGUoKSBldmVuIGJlZm9yZSBjYWxsaW5nIHRoaXMgZnVuY3Rp
b24sIHNvIHRoYXQgbG9va3MgZmluZSB0byBtZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0K
PiANCj4gVGhhbmtzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
