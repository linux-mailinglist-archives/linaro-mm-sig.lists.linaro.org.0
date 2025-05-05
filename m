Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93877AA972C
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 17:17:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A5FB544904
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 15:17:47 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-sn1nam02on2089.outbound.protection.outlook.com [40.107.96.89])
	by lists.linaro.org (Postfix) with ESMTPS id B16AF447CD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 15:17:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Bue22Hvp;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.96.89 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p03lp9VeLU0oJliKxHKoc4s4B3bzTKeExqo0L9yl1jWvj+SXfY2K6kTGRzNkqB1Mbj4+biN/3pZsXg3Gl4U0qGOcaQIJKe85Tc8zOKo3ESfd56SVzOsyMJsQc0GpKFnDHBZ+pnWbUyfQnqw4VDLziFIIjAV6hBJkbCNh+zC0zkuNqJbvVQheqXQNvdomds/XwqyyPX6VxtDaTdOj0K9HAQhWqmfkoZNlPAfwEp/jM/sRhWuzVZscB4DVuq9nGgtYMkP6xcWJz/+2LX5TgSzmdaYT6pestA+VY+hAVMzUGr34K+dUIz4q0IAl/tEpCHCoxQtiDvMaSbYuyhIekz7NfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Au/xRYS0c43rEWFg2NQq2lo6HUW4cukDDrM+Ji8GiUU=;
 b=feRKw/p2gb3udedbdLucB6j5ROJcaxU/NqEMuDEJBsUJMWf4amsfE4VxSt9LmY2h/FK4OGK9ZJpcMc0YCcXS89FhTLHeofp5ixNekAG8bHfXYqiyQmyiiqr/Xq3JkQvvCZ6fUJIgOtB6GkP8j7TVQK/SWzWZFzhsicLaE22MHGOZOoQ04d09Z6RwnTtrznje2mgFCMCK/O57VH4krniWUyhyMx4CgFFqrfhCdVTNOkY5w/M++CyWcljBh2FiKlWVMskrGgepAi5qkwxzwFG112ZM00WA+G4WPDfBJ9Rv3dmARHfGwwQqzxLciVdD4BWKZefwQoYrn2T9jqUl2o/UQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Au/xRYS0c43rEWFg2NQq2lo6HUW4cukDDrM+Ji8GiUU=;
 b=Bue22Hvpxernv6knqGhU3eIsfGjuE+s3aDNRgSIm30sOGBmTI5JzeB9BCi68vMSH3/o9Uc3qHEVU7JEjNWKv16IB1ybdGzvKFI+xTGJwrPNCFcs2J595qfBttq6ukUlZNK3D2bsrm9Cracdx7VvCfVa1RFMHaMtZ7skEcim1QDU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB5663.namprd12.prod.outlook.com (2603:10b6:a03:42a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Mon, 5 May
 2025 15:17:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Mon, 5 May 2025
 15:17:27 +0000
Message-ID: <5f940da3-a32d-4ca7-966d-8b1df78c0d68@amd.com>
Date: Mon, 5 May 2025 17:17:18 +0200
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>
References: <20250502165831.44850-1-robdclark@gmail.com>
 <20250502165831.44850-22-robdclark@gmail.com>
 <3a4297fd-4554-4727-ab05-feaddaf63ea5@amd.com>
 <CAF6AEGtmjLM-tK9Y=gT5XupW62X_eY2fiBJCYUnKqO9A9C4xFg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGtmjLM-tK9Y=gT5XupW62X_eY2fiBJCYUnKqO9A9C4xFg@mail.gmail.com>
X-ClientProxiedBy: BLAPR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:208:335::26) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB5663:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d96eaaa-1687-43d8-1a3b-08dd8be7f1bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WGs1b0EwL25INnJuZHhxU3IwNzBlRktDSEc5a1VQcTRHOGw1aXVqM3lwMEtX?=
 =?utf-8?B?eVd6cVhLZC9iM2p5VTNweTYxK1dGOWVJNXhEcGMxWU1CbGw0eUhsdHVqMm1n?=
 =?utf-8?B?UFZoZEM3RlVlMDFjQ0txWDlmYXRUZzJXaDhPcVdLdUM4ejNIVTZTUzJ3UGFH?=
 =?utf-8?B?YVVtNnJLNmV4aUtBWE11UUdvM3VLcjV2dnREWU9VYnR6M0Rwb2hhRXVVUmNr?=
 =?utf-8?B?UDAybUVyUUdUc1Q0Q1hLaXloUDBGRGM4NkpvZDdOVVZudExGV09vbzRPMGlm?=
 =?utf-8?B?eTFiK1JiMlZrMnhXUjRnSVVsUWdpdXZpeVFjZU9zeGdsRG1ibU1LRFhHNzFP?=
 =?utf-8?B?QklxeXVRNW5mOW5NK2ZEQWNTdEJyQWRpTFNrWlJ2ZzNuNTVjb3AxYmp6RmN4?=
 =?utf-8?B?bjZtb01ITTk2Z2pyazVQNVVqNnJKYVhMR3VrSHVjNDFBRVVRSXhsOFIwMEZR?=
 =?utf-8?B?RXVyM1lmanpaMkthWlFxNzJXL1QvRDZ4R2tYZUJFZE8wSVhVZjd4TFF6VXJ1?=
 =?utf-8?B?aExrS1JhSTF0c2Rjb3pVOUZlK0tuNUJDb1BwRjRQWjNlVnhDMzBEaWZVWVBo?=
 =?utf-8?B?Vk0zajRpYjN3VENIZCtmand3Y0gramJncUxTcHJlenhvV1hSOHJBWVk2TmFN?=
 =?utf-8?B?LzQ5UGR2ZCtBbm5LenNibDN3WVhsUlRwcDZSSXlUKzR1VGxwd3BoNFJoR203?=
 =?utf-8?B?RnhyMGlEZmlpYnBpV25lSVFPWFRVbU1XLzE1VVl0NkU5VURETDZqNStrSVA3?=
 =?utf-8?B?TmVLVlNWTXl4dzFJa200OGpZUkFrSzFYK1dKQ0xYM0lzczVnVWR2a1VhVzVa?=
 =?utf-8?B?MGdWOUJKcGx2Sks3OUFURGpKM3gxWUdWNkF5a3JOcHdzb1ltMTI0cTVNOE5S?=
 =?utf-8?B?Nm5UY1oyRjVFQVVRVWtKdGVhTmJoVHJGRVB4Ym1ZRVF3aTg4Nzd1Q3VTRDZI?=
 =?utf-8?B?NGhyNjNqblBWN3NjVDljQ2JCK05rb0R5STR5WmxmWjZWNjBTUGVNeWpCcStu?=
 =?utf-8?B?RVBUNHp0Vm52Y1dVNStCN3dDUEtzUUlITjNxUUVjelhibUo5Yy93T2swZjkw?=
 =?utf-8?B?Q2FYMHF0ZWJHcWo2cmZPZ1ZZN0JVd2FtZFpZTlptS1pSZEFWVXJpSDFYTzIv?=
 =?utf-8?B?dG9FQ3RIcE50VWFQZVB4djFzYmY3S2dhcVZLaFQ1TXJpcVFOMGt6MDBHYWps?=
 =?utf-8?B?UHFkN2FXUDc3cS9BQUlkMENBU2pFellJN0d5L3N6cEhUTFVBSzJwbkpqY25o?=
 =?utf-8?B?anI4TWVSeDA1QzM2QTRwa01FMnBQT2JXaHNBSmFuQWZUdS9uNXViUVVRaFN1?=
 =?utf-8?B?Y1BqN1BMVDU4S3ZNY0pmdG9lcjByZ1dpaFhQNFcwcksyMGZUMXVpOUhGMkh5?=
 =?utf-8?B?QVJqOGN6L3NTS1F3TWVuZU0vR1diUCtpYVQ1OTFHUjY0R2dTTlBNb2J5d0to?=
 =?utf-8?B?bXdUNVpkT3d1akZZMnJwVEFVQWMvMVIrVkFyUmRsVlhJKytxWHJVUE94d0lr?=
 =?utf-8?B?YnhqWnNycVNEcVNuaEluYWJPMTZqOWZ5a3dDTUUxZ2V2bkpKMXlzajYzM09I?=
 =?utf-8?B?aTRSdk9NL2gyYnF5TzlrRXA5dzR0K3hIU0JxL2djamZ1M2t4ZGJkN25JSTRI?=
 =?utf-8?B?UTdIMk5sZnJUajFBTm5wQllYcWRHWmYxbEp4YWVONnhpUlJUQytTN05BSVVu?=
 =?utf-8?B?bTVvRkxMOUpFaklvRWd2eEFSeDZEWFlsTG5XbCtRbXhPendSeWdtdjNLMlpD?=
 =?utf-8?B?QXlHdUYyeWRzckZEeWlpd21oVUpqYjd3RHc0dVFuenFhb1hDcy9VTktvQkQr?=
 =?utf-8?B?NzZ6d2tHb3BwNTNWQ1pPNlVhYzQ2ZXhXZFIyei91RUl3ZW1jL2VldkZhUG1m?=
 =?utf-8?B?Q3ZqeUtndmkvL1h5OUwwVXZ3bWxiMzg0SXZpWXBhWU5yRnNHWDdWLzJlWjV3?=
 =?utf-8?Q?8pENW+gB3p0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cE5XZ0xHVGJIMGt5T04yQWtBN0EwemxzOTVXc1Fmb25WaklucmtNZkpsOVdo?=
 =?utf-8?B?NldQSGhsUm1ha1ViVTVVSzNBMFRIS0hSeVVScmNSS1NIVDJOOUpqN0VMYlkw?=
 =?utf-8?B?MVNWN3BvTjk1QVdlc0ZENHdvdXJuckVsbnNLdHFvMWwwRnNud2w0dUNzY25z?=
 =?utf-8?B?SlhyR1BXSUplOW52eHBHenlEVjA4YXNtTFBLa29TdDUycGE0K2lMVDAwd0k1?=
 =?utf-8?B?d1NaYnluZXBoTXRWYlNIWUt0OEFTTzZHM3I4NW1tWXNPYmdGQndUL2pHUG8v?=
 =?utf-8?B?UVZuZ3lOWUN4VFZtbWlML01zS1pzdlp6OW9FZFFVUU1yMENLYnBCUUo5dVFX?=
 =?utf-8?B?NXRzcXRWdUxvdnF1aVBDUk5salZZVzk2Z0o4T0pLRUN0eXJVN3ZZM1plY0JN?=
 =?utf-8?B?V3R3eVZ4WEpPV05SdW9VYjN6VTYvREpjMk95MmJCejQ3UTQ0cnE3UmI5R3lD?=
 =?utf-8?B?SVlCR3E1ZCt2TlIwRS90SE1LZmlOcnRMUWYyaGx1aW1iRkU3MzA5UXpUWkxE?=
 =?utf-8?B?ZGJsMllTbUs2dURyOG9Ia0ZPMW9NVmtubG5LcmxTTFY4b0pHTUExM2pSbTRk?=
 =?utf-8?B?WkhBZ0lJWTB6TkRsUmRFL0NTSmhWRGxvTHhBTDNLMGVGS1lnQlR6ejNKVnU0?=
 =?utf-8?B?andzOW5jNjZEVDB3OHY5TlllZ0ppREY2VklNM2pNSFEyNWJWTkl2VnJsVUVz?=
 =?utf-8?B?ZGl4R1h4NWVEdWlDYW5JeGpwZWg5MW16ZW9SSnprQnNjUkcwa3AwSW5FeTFR?=
 =?utf-8?B?eGlPMFh2M3NIVWw1SmZDby81dTExdU9DTFJkOG1oRlgxTkh5RDJReVdGUC90?=
 =?utf-8?B?Y3lKNkJlOVhLckVTVk0wVmtaQWhDQnNyVHpabmd6NWZ4d0pwTFMyUkg4UWxE?=
 =?utf-8?B?NHhDc2hBZUZNODlrMHU5ZjVaMHJsWTUxWUdZUDM4azFTcnlRbDY5MzVmaWxQ?=
 =?utf-8?B?NXhKSVlrTkdFa1FqSUg0TktBRDdEMDNBYVZneXozZkRKWkNlSUdlbWt3a2Fw?=
 =?utf-8?B?UmNYUUswRjFnb2ZaeFlYTzl4VTU1YVg2cHo2SDFQQ0hBclUzYmJQdW5id1ds?=
 =?utf-8?B?QkU2U2dodnhheVM1bUdJcEJLMFEyd0lkVUE5VGhlRWFNbkxCR0JkZURET1Mr?=
 =?utf-8?B?UTE3bGF1UHlHTFd0T2xreHRacDh1cmRwaVExaHZMUFJsZlNNSFNjQUw2anFk?=
 =?utf-8?B?RHYyMUVFTXVNbnNkVHVnVDM0Y0FUUjdTcnV2bVdnakR4YU9XTFkyM0UzdEVy?=
 =?utf-8?B?UkU1ZldhNE40WjBlVisxczRrT2x6RUJWV1NuTk1CTjZrMlRkbmUwUkE3aEhx?=
 =?utf-8?B?bGlaTlBGSGluSlF2WXV0TWhRbVdBOFF6Uk5aRElWcVptMlFlUXl4eUVEaVJJ?=
 =?utf-8?B?WGtpRWoyd0RqYnArSU9LVzZicktDSGpjN3ZuQzNDWERDeTh6dUZQL1UyRXR1?=
 =?utf-8?B?N3V1elM5Y2FodGlmQ3NpV0dGd1BSZTBuRDBsNDEzd211QWFQcUMvckJBK1Qv?=
 =?utf-8?B?V09nYkhyUExKL1BVMmhkbGpvOFFtVURudjZ6S2F4Y3NOdXFuTEpWeldkUDZ5?=
 =?utf-8?B?SGdYTFo3WmkyaHcwUTUvbjFaNnBTaGNWSlNyQWpRMnp5UGJ2eUlkajAzWkRl?=
 =?utf-8?B?dnFBc2FGNlFseXJoMVIwS3VucS9WbE15ZE9zUUdoNUs5a21RUGEyS1ZPLzhO?=
 =?utf-8?B?NkdHT3cwNXVTUzQwYUlHK1FFOW45S2hCMy81ek1wVDk3cUNQK3l6UlZWSEdP?=
 =?utf-8?B?UFF4RzdTWTI0aXhtZCsyQXRPckgvdEZRcXBUa041c3FLZldkOFJZbzYwMFUr?=
 =?utf-8?B?b3c1bmE4R3drQXorY1lpUzBKcjcrL1EwTzRCUmorYmRSWkUzcGRwVzFXTnV4?=
 =?utf-8?B?UVRKQ3NUMTBZenRIVWduQXQ4MnBlT2V2NlkzMGVYbkE5UDlaeUZzekkwdFZk?=
 =?utf-8?B?V0VVdWpzNVB6ZWdMZ25vbndpamcyQ29lUGxhOFhDcktSYi9UZHRoRk5hN0ZP?=
 =?utf-8?B?dy9RZVFlOSs4Z1RYV3NZcC9pakpMUFlyZ3c2SWJtb3JLMGRMbUpWL0w3ZG5v?=
 =?utf-8?B?bEJ0Ym11bjBRamdTSno4Q3k1WWgxeFBtYU81YThhaWhLdEpIcGNXSFg3M1RX?=
 =?utf-8?Q?JhVukguyI3uLgFl5SR4Mg3twW?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d96eaaa-1687-43d8-1a3b-08dd8be7f1bf
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 15:17:26.9036
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJGU10OQXODCWW2x9AgQNjkNhlSMMZeM/KbDqlRZEGt/DsAMOuKQxp+QSSqcNpGg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5663
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B16AF447CD
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[20];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.96.89:from];
	FREEMAIL_TO(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,kernel.org,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,linaro.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[40.107.96.89:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: S7NB32WHLXKSXZL75AQVZPNBTAXR6KEI
X-Message-ID-Hash: S7NB32WHLXKSXZL75AQVZPNBTAXR6KEI
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Simona Vetter <simona@ffwll.ch>, Konrad Dybcio <konradybcio@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 21/33] drm/msm: Add _NO_SHARE flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S7NB32WHLXKSXZL75AQVZPNBTAXR6KEI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS81LzI1IDE2OjE1LCBSb2IgQ2xhcmsgd3JvdGU6DQo+IE9uIE1vbiwgTWF5IDUsIDIwMjUg
YXQgMTI6NTTigK9BTSBDaHJpc3RpYW4gS8O2bmlnDQo+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+IHdyb3RlOg0KPj4NCj4+IE9uIDUvMi8yNSAxODo1NiwgUm9iIENsYXJrIHdyb3RlOg0KPj4+
IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+Pg0KPj4+IEJ1ZmZl
cnMgdGhhdCBhcmUgbm90IHNoYXJlZCBiZXR3ZWVuIGNvbnRleHRzIGNhbiBzaGFyZSBhIHNpbmds
ZSByZXN2DQo+Pj4gb2JqZWN0LiAgVGhpcyB3YXkgZHJtX2dwdXZtIHdpbGwgbm90IHRyYWNrIHRo
ZW0gYXMgZXh0ZXJuYWwgb2JqZWN0cywgYW5kDQo+Pj4gc3VibWl0LXRpbWUgdmFsaWRhdGluZyBv
dmVyaGVhZCB3aWxsIGJlIE8oMSkgZm9yIGFsbCBOIG5vbi1zaGFyZWQgQk9zLA0KPj4+IGluc3Rl
YWQgb2YgTyhuKS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJr
QGNocm9taXVtLm9yZz4NCj4+PiAtLS0NCj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2
LmggICAgICAgfCAgMSArDQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jICAgICAg
IHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAgZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ2VtX3ByaW1lLmMgfCAxNSArKysrKysrKysrKysrKysNCj4+PiAgaW5jbHVkZS91YXBpL2Ry
bS9tc21fZHJtLmggICAgICAgICAgfCAxNCArKysrKysrKysrKysrKw0KPj4+ICA0IGZpbGVzIGNo
YW5nZWQsIDUzIGluc2VydGlvbnMoKykNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vbXNtL21zbV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oDQo+Pj4g
aW5kZXggYjc3ZmQyYzUzMWMzLi5iMGFkZDIzNmNiYjMgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZHJ2LmgNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21z
bV9kcnYuaA0KPj4+IEBAIC0yNDYsNiArMjQ2LDcgQEAgaW50IG1zbV9nZW1fcHJpbWVfdm1hcChz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCj4+PiAg
dm9pZCBtc21fZ2VtX3ByaW1lX3Z1bm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3Ry
dWN0IGlvc3lzX21hcCAqbWFwKTsNCj4+PiAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICptc21fZ2Vt
X3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPj4+ICAgICAg
ICAgICAgICAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLCBzdHJ1Y3Qgc2dfdGFi
bGUgKnNnKTsNCj4+PiArc3RydWN0IGRtYV9idWYgKm1zbV9nZW1fcHJpbWVfZXhwb3J0KHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLCBpbnQgZmxhZ3MpOw0KPj4+ICBpbnQgbXNtX2dlbV9wcmlt
ZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KPj4+ICB2b2lkIG1zbV9nZW1fcHJp
bWVfdW5waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KPj4+DQo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ2VtLmMNCj4+PiBpbmRleCAzNzA4ZDQ1NzkyMDMuLmQwZjQ0Yzk4MTM1MSAxMDA2NDQNCj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYw0KPj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9tc20vbXNtX2dlbS5jDQo+Pj4gQEAgLTUzMiw2ICs1MzIsOSBAQCBzdGF0aWMgaW50
IGdldF9hbmRfcGluX2lvdmFfcmFuZ2VfbG9ja2VkKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2Jq
LA0KPj4+DQo+Pj4gICAgICAgbXNtX2dlbV9hc3NlcnRfbG9ja2VkKG9iaik7DQo+Pj4NCj4+PiAr
ICAgICBpZiAodG9fbXNtX2JvKG9iaiktPmZsYWdzICYgTVNNX0JPX05PX1NIQVJFKQ0KPj4+ICsg
ICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKw0KPj4+ICAgICAgIHZtYSA9IGdldF92
bWFfbG9ja2VkKG9iaiwgdm0sIHJhbmdlX3N0YXJ0LCByYW5nZV9lbmQpOw0KPj4+ICAgICAgIGlm
IChJU19FUlIodm1hKSkNCj4+PiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHZtYSk7DQo+
Pj4gQEAgLTEwNjAsNiArMTA2MywxNiBAQCBzdGF0aWMgdm9pZCBtc21fZ2VtX2ZyZWVfb2JqZWN0
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+ICAgICAgICAgICAgICAgcHV0X3BhZ2Vz
KG9iaik7DQo+Pj4gICAgICAgfQ0KPj4+DQo+Pj4gKyAgICAgaWYgKG1zbV9vYmotPmZsYWdzICYg
TVNNX0JPX05PX1NIQVJFKSB7DQo+Pj4gKyAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKnJfb2JqID0NCj4+PiArICAgICAgICAgICAgICAgICAgICAgY29udGFpbmVyX29mKG9iai0+
cmVzdiwgc3RydWN0IGRybV9nZW1fb2JqZWN0LCBfcmVzdik7DQo+Pj4gKw0KPj4+ICsgICAgICAg
ICAgICAgQlVHX09OKG9iai0+cmVzdiA9PSAmb2JqLT5fcmVzdik7DQo+Pj4gKw0KPj4+ICsgICAg
ICAgICAgICAgLyogRHJvcCByZWZlcmVuY2Ugd2UgaG9sZCB0byBzaGFyZWQgcmVzdiBvYmo6ICov
DQo+Pj4gKyAgICAgICAgICAgICBkcm1fZ2VtX29iamVjdF9wdXQocl9vYmopOw0KPj4+ICsgICAg
IH0NCj4+PiArDQo+Pj4gICAgICAgZHJtX2dlbV9vYmplY3RfcmVsZWFzZShvYmopOw0KPj4+DQo+
Pj4gICAgICAga2ZyZWUobXNtX29iai0+bWV0YWRhdGEpOw0KPj4+IEBAIC0xMDkyLDYgKzExMDUs
MTUgQEAgaW50IG1zbV9nZW1fbmV3X2hhbmRsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1
Y3QgZHJtX2ZpbGUgKmZpbGUsDQo+Pj4gICAgICAgaWYgKG5hbWUpDQo+Pj4gICAgICAgICAgICAg
ICBtc21fZ2VtX29iamVjdF9zZXRfbmFtZShvYmosICIlcyIsIG5hbWUpOw0KPj4+DQo+Pj4gKyAg
ICAgaWYgKGZsYWdzICYgTVNNX0JPX05PX1NIQVJFKSB7DQo+Pj4gKyAgICAgICAgICAgICBzdHJ1
Y3QgbXNtX2NvbnRleHQgKmN0eCA9IGZpbGUtPmRyaXZlcl9wcml2Ow0KPj4+ICsgICAgICAgICAg
ICAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpyX29iaiA9IGRybV9ncHV2bV9yZXN2X29iaihjdHgt
PnZtKTsNCj4+PiArDQo+Pj4gKyAgICAgICAgICAgICBkcm1fZ2VtX29iamVjdF9nZXQocl9vYmop
Ow0KPj4+ICsNCj4+PiArICAgICAgICAgICAgIG9iai0+cmVzdiA9IHJfb2JqLT5yZXN2Ow0KPj4+
ICsgICAgIH0NCj4+PiArDQo+Pj4gICAgICAgcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRlKGZp
bGUsIG9iaiwgaGFuZGxlKTsNCj4+Pg0KPj4+ICAgICAgIC8qIGRyb3AgcmVmZXJlbmNlIGZyb20g
YWxsb2NhdGUgLSBoYW5kbGUgaG9sZHMgaXQgbm93ICovDQo+Pj4gQEAgLTExMjQsNiArMTE0Niw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3RfZnVuY3MgbXNtX2dlbV9vYmpl
Y3RfZnVuY3MgPSB7DQo+Pj4gICAgICAgLmZyZWUgPSBtc21fZ2VtX2ZyZWVfb2JqZWN0LA0KPj4+
ICAgICAgIC5vcGVuID0gbXNtX2dlbV9vcGVuLA0KPj4+ICAgICAgIC5jbG9zZSA9IG1zbV9nZW1f
Y2xvc2UsDQo+Pj4gKyAgICAgLmV4cG9ydCA9IG1zbV9nZW1fcHJpbWVfZXhwb3J0LA0KPj4+ICAg
ICAgIC5waW4gPSBtc21fZ2VtX3ByaW1lX3BpbiwNCj4+PiAgICAgICAudW5waW4gPSBtc21fZ2Vt
X3ByaW1lX3VucGluLA0KPj4+ICAgICAgIC5nZXRfc2dfdGFibGUgPSBtc21fZ2VtX3ByaW1lX2dl
dF9zZ190YWJsZSwNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2Vt
X3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fcHJpbWUuYw0KPj4+IGluZGV4
IGVlMjY3NDkwYzkzNS4uMWE2ZDgwOTkxOTZhIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2dlbV9wcmltZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZ2VtX3ByaW1lLmMNCj4+PiBAQCAtMTYsNiArMTYsOSBAQCBzdHJ1Y3Qgc2dfdGFibGUgKm1z
bV9nZW1fcHJpbWVfZ2V0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+
ICAgICAgIHN0cnVjdCBtc21fZ2VtX29iamVjdCAqbXNtX29iaiA9IHRvX21zbV9ibyhvYmopOw0K
Pj4+ICAgICAgIGludCBucGFnZXMgPSBvYmotPnNpemUgPj4gUEFHRV9TSElGVDsNCj4+Pg0KPj4+
ICsgICAgIGlmIChtc21fb2JqLT5mbGFncyAmIE1TTV9CT19OT19TSEFSRSkNCj4+PiArICAgICAg
ICAgICAgIHJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPj4+ICsNCj4+PiAgICAgICBpZiAoV0FS
Tl9PTighbXNtX29iai0+cGFnZXMpKSAgLyogc2hvdWxkIGhhdmUgYWxyZWFkeSBwaW5uZWQhICov
DQo+Pj4gICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsNCj4+Pg0KPj4+IEBA
IC00NSw2ICs0OCwxNSBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm1zbV9nZW1fcHJpbWVfaW1w
b3J0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+Pj4gICAgICAgcmV0dXJuIG1z
bV9nZW1faW1wb3J0KGRldiwgYXR0YWNoLT5kbWFidWYsIHNnKTsNCj4+PiAgfQ0KPj4+DQo+Pj4g
Kw0KPj4+ICtzdHJ1Y3QgZG1hX2J1ZiAqbXNtX2dlbV9wcmltZV9leHBvcnQoc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIGludCBmbGFncykNCj4+PiArew0KPj4+ICsgICAgIGlmICh0b19tc21f
Ym8ob2JqKS0+ZmxhZ3MgJiBNU01fQk9fTk9fU0hBUkUpDQo+Pj4gKyAgICAgICAgICAgICByZXR1
cm4gRVJSX1BUUigtRVBFUk0pOw0KPj4+ICsNCj4+PiArICAgICByZXR1cm4gZHJtX2dlbV9wcmlt
ZV9leHBvcnQob2JqLCBmbGFncyk7DQo+Pj4gK30NCj4+PiArDQo+Pj4gIGludCBtc21fZ2VtX3By
aW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4+PiAgew0KPj4+ICAgICAgIHN0
cnVjdCBwYWdlICoqcGFnZXM7DQo+Pj4gQEAgLTUzLDYgKzY1LDkgQEAgaW50IG1zbV9nZW1fcHJp
bWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+ICAgICAgIGlmIChvYmotPmlt
cG9ydF9hdHRhY2gpDQo+Pj4gICAgICAgICAgICAgICByZXR1cm4gMDsNCj4+Pg0KPj4+ICsgICAg
IGlmICh0b19tc21fYm8ob2JqKS0+ZmxhZ3MgJiBNU01fQk9fTk9fU0hBUkUpDQo+Pj4gKyAgICAg
ICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+PiArDQo+Pj4gICAgICAgcGFnZXMgPSBtc21fZ2Vt
X3Bpbl9wYWdlc19sb2NrZWQob2JqKTsNCj4+PiAgICAgICBpZiAoSVNfRVJSKHBhZ2VzKSkNCj4+
PiAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIocGFnZXMpOw0KPj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvZHJtL21zbV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vbXNtX2RybS5oDQo+
Pj4gaW5kZXggYjk3NGY1YTI0ZGJjLi4xYmNjYzM0Nzk0NWMgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5j
bHVkZS91YXBpL2RybS9tc21fZHJtLmgNCj4+PiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL21zbV9k
cm0uaA0KPj4+IEBAIC0xNDAsNiArMTQwLDE5IEBAIHN0cnVjdCBkcm1fbXNtX3BhcmFtIHsNCj4+
Pg0KPj4+ICAjZGVmaW5lIE1TTV9CT19TQ0FOT1VUICAgICAgIDB4MDAwMDAwMDEgICAgIC8qIHNj
YW5vdXQgY2FwYWJsZSAqLw0KPj4+ICAjZGVmaW5lIE1TTV9CT19HUFVfUkVBRE9OTFkgIDB4MDAw
MDAwMDINCj4+PiArLyogUHJpdmF0ZSBidWZmZXJzIGRvIG5vdCBuZWVkIHRvIGJlIGV4cGxpY2l0
bHkgbGlzdGVkIGluIHRoZSBTVUJNSVQNCj4+PiArICogaW9jdGwsIHVubGVzcyByZWZlcmVuY2Vk
IGJ5IGEgZHJtX21zbV9nZW1fc3VibWl0X2NtZC4gIFByaXZhdGUNCj4+PiArICogYnVmZmVycyBt
YXkgTk9UIGJlIGltcG9ydGVkL2V4cG9ydGVkIG9yIHVzZWQgZm9yIHNjYW5vdXQgKG9yIGFueQ0K
Pj4+ICsgKiBvdGhlciBzaXR1YXRpb24gd2hlcmUgYnVmZmVycyBjYW4gYmUgaW5kZWZpbml0ZWx5
IHBpbm5lZCwgYnV0DQo+Pj4gKyAqIGNhc2VzIG90aGVyIHRoYW4gc2Nhbm91dCBhcmUgYWxsIGtl
cm5lbCBvd25lZCBCT3Mgd2hpY2ggYXJlIG5vdA0KPj4+ICsgKiB2aXNpYmxlIHRvIHVzZXJzcGFj
ZSkuDQo+Pg0KPj4gV2h5IGlzIHBpbm5pbmcgZm9yIHNjYW5vdXQgYSBwcm9ibGVtIHdpdGggdGhv
c2U/DQo+Pg0KPj4gTWF5YmUgSSBtaXNzZWQgc29tZXRoaW5nIGJ1dCBmb3Igb3RoZXIgZHJpdmVy
cyB0aGF0IGRvZXNuJ3Qgc2VlbSB0byBiZSBhIHByb2JsZW0uDQo+IA0KPiBJIGd1ZXNzIF90ZWNo
bmljYWxseV8gaXQgY291bGQgYmUgb2sgYmVjYXVzZSB3ZSB0cmFjayBwaW4tY291bnQNCj4gc2Vw
YXJhdGVseSBmcm9tIGRtYV9yZXN2LiAgQnV0IHRoZSBtb3RpdmF0aW9uIGZvciB0aGF0IHN0YXRl
bWVudCB3YXMNCj4gc2ltcGx5IHRoYXQgX05PX1NIQVJFIGJ1ZmZlcnMgc2hhcmUgYSByZXN2IG9i
aiB3aXRoIHRoZSBWTSwgc28gdGhleQ0KPiBzaG91bGQgbm90IGJlIHVzZWQgaW4gYSBkaWZmZXJl
bnQgVk0gKGluIHRoaXMgY2FzZSwgdGhlIGRpc3BsYXksIHdoaWNoDQo+IGhhcyBpdCdzIG93biBW
TSkuDQoNCkFoLCB5ZXMgdGhhdCBtYWtlcyBwZXJmZWN0IHNlbnNlLg0KDQpZb3Ugc2hvdWxkIGlu
ZGVlZCBhdm9pZCBpbXBvcnRpbmcgdGhlIEJPIGludG8gYSBkaWZmZXJlbnQgVk0gd2hlbiBpdCBz
aGFyZXMgdGhlIHJlc2VydmF0aW9uIG9iamVjdCB3aXRoIGl0LiBUaGF0IHdpbGwgb25seSBjYXVz
ZSB0cm91YmxlLg0KDQpCdXQgYXQgbGVhc3QgYW1kZ3B1L3JhZGVvbiBhbmQgSSB0aGluayBpOTE1
IGFzIHdlbGwgZG9uJ3QgbmVlZCB0byBkbyB0aGF0LiBTY2Fub3V0IGlzIGp1c3Qgc2VwYXJhdGUg
ZnJvbSBhbGwgVk1zLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQoNCj4gDQo+IEJSLA0KPiAt
Ug0KPiANCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4NCj4+PiArICoNCj4+PiAr
ICogSW4gZXhjaGFuZ2UgZm9yIHRob3NlIGNvbnN0cmFpbnRzLCBhbGwgcHJpdmF0ZSBCT3MgYXNz
b2NpYXRlZCB3aXRoDQo+Pj4gKyAqIGEgc2luZ2xlIGNvbnRleHQgKGRybV9maWxlKSBzaGFyZSBh
IHNpbmdsZSBkbWFfcmVzdiwgYW5kIGlmIHRoZXJlDQo+Pj4gKyAqIGhhcyBiZWVuIG5vIGV2aWN0
aW9uIHNpbmNlIHRoZSBsYXN0IHN1Ym1pdCwgdGhlcmUgYXJlIG5vIHBlci1CTw0KPj4+ICsgKiBi
b29rZWVwaW5nIHRvIGRvLCBzaWduaWZpY2FudGx5IGN1dHRpbmcgdGhlIFNVQk1JVCBvdmVyaGVh
ZC4NCj4+PiArICovDQo+Pj4gKyNkZWZpbmUgTVNNX0JPX05PX1NIQVJFICAgICAgMHgwMDAwMDAw
NA0KPj4+ICAjZGVmaW5lIE1TTV9CT19DQUNIRV9NQVNLICAgIDB4MDAwZjAwMDANCj4+PiAgLyog
Y2FjaGUgbW9kZXMgKi8NCj4+PiAgI2RlZmluZSBNU01fQk9fQ0FDSEVEICAgICAgICAweDAwMDEw
MDAwDQo+Pj4gQEAgLTE0OSw2ICsxNjIsNyBAQCBzdHJ1Y3QgZHJtX21zbV9wYXJhbSB7DQo+Pj4N
Cj4+PiAgI2RlZmluZSBNU01fQk9fRkxBR1MgICAgICAgICAoTVNNX0JPX1NDQU5PVVQgfCBcDQo+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1TTV9CT19HUFVfUkVBRE9OTFkgfCBc
DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1TTV9CT19OT19TSEFSRSB8IFwN
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTVNNX0JPX0NBQ0hFX01BU0spDQo+
Pj4NCj4+PiAgc3RydWN0IGRybV9tc21fZ2VtX25ldyB7DQo+Pg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
