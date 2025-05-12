Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B57F5AB40C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 19:57:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8FA6459E4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 12 May 2025 17:57:50 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2071.outbound.protection.outlook.com [40.107.212.71])
	by lists.linaro.org (Postfix) with ESMTPS id BBAE841598
	for <linaro-mm-sig@lists.linaro.org>; Mon, 12 May 2025 17:57:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=lL67Su98;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.71 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kkxjs3hM4hjD+gOyXpv7GSmCN6eBQcGiHJrpbLCUhV47UF1uuCMl83l1FKhohcqgC0YJRUkm5k1X276R9OfdcXl+8qiNc3jfnxjokSYhFUjOVbRWVlRAiFWcgkHr0xy5es0FLy+b+F8fG5b/AavF/Y/Z4Jr7Tlk6zSqJ5pcvvwtQ952cbQhXRmTA9NFstPn4SBmVFBBOvnXIXZkmxyEsdi0gqYRJjOM0HH2vJdRUxJR0aPkV1hgmmw/DMdj3BbG2dvKNNqNdNzm1gMHX/gig96Njm7zKcTSrzhqyZgMR2a5Sjruf6ntRP6c4tBxvJi9ia0A5wGZvqGMrpRA1H6uW6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UTOCpSo5vj9PaOc3EJzqNz9pDaBlBPP9YoANzuxqxA=;
 b=kqq/fNLq/nNgJHtPTjUiZbKjgl53m6ZFdoh5PVz82HweO1iexw0pCHOrFcJPwalLMGXEfV/QiQNVTAkSxw9x72bX+CTnf7Ib9/4Q7SVHtQxEICJKpgUVfZCp66HEFBvG+5ue2Gi7BLuGFiFUFk5nnzo6ooIgt9RlS3vtIraoGwQwSbshdC0QcYnQi5R6PZI538/b4eLTA+SqU+xYsdZVYImjruE6YGf2h0blb1yy7bOaPS2EjapJmoJU9Vd6siGCXIttu0KkUne0YNwv7cZqrOTFt8XWnG5ux7umFQwVYlbPDKzo6DycN1h6S4jFy8DW0KqKfa1oGestTN/si0ebaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3UTOCpSo5vj9PaOc3EJzqNz9pDaBlBPP9YoANzuxqxA=;
 b=lL67Su98V/SFax3nd7K3UcVwDIFkmOswHFfBOui+iO0MOri5aN1Sv0n9ARtus7DF9bYKo9RASRZ0KERpFTy1tWCZAQ4Rn91VQ9PeCXk1xPaPjKPYQLI0VkjEYaYvonK/DVXPKkIb1hTRNmb+oh8UII0wkSue17Ig9odgS+GPiMQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7107.namprd12.prod.outlook.com (2603:10b6:806:2a2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.21; Mon, 12 May
 2025 17:57:34 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 17:57:34 +0000
Message-ID: <bb7a5c06-2e93-4088-a5bc-9ca4f5304eab@amd.com>
Date: Mon, 12 May 2025 19:57:12 +0200
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 dri-devel@lists.freedesktop.org
References: <20250509153352.7187-1-tvrtko.ursulin@igalia.com>
 <20250509153352.7187-5-tvrtko.ursulin@igalia.com>
 <f75f6d26-ac93-48cb-a9e2-adffe0af1ed8@amd.com>
 <34263299-6279-44a2-a224-6a094a319ea6@igalia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <34263299-6279-44a2-a224-6a094a319ea6@igalia.com>
X-ClientProxiedBy: FR4P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7107:EE_
X-MS-Office365-Filtering-Correlation-Id: d3177b36-bfb1-40bf-38b0-08dd917e7940
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NHpmaGZqYkNhM3FpNGJ1ZDQrMDRjZzV0cjhUeVovQkhyZGVySnBsNkpycElO?=
 =?utf-8?B?UlEzZ1ljMTM1S3Z6RUlVSzdIQ3A1ZmlCSzFvMk5WWG1NdTRUUUUwTlhJdFVT?=
 =?utf-8?B?bXpJNm1YdVRIQTQ5QUxwd1ExMlFRMGx3MzNrN2U3QVFyZ012bDQ4NG9RWWFk?=
 =?utf-8?B?cXpkdTBmRXJ6S0hVWHJWT3NKK1RqMTF4RWd5RGE0ZWRGTjNqZnNFdENPV1Rt?=
 =?utf-8?B?MVQvRk9Ya0tqY3ZheFI0NFVNa1hNWXRGeU50NzlTNXZzUzZ4UUZqb2o0bzFQ?=
 =?utf-8?B?SGdhdEJKL3I3WUtWYmcxbXV3ZmY3ZzhEUG5ZM1g2aEZuMG1SQUFLNDNNeDMv?=
 =?utf-8?B?SVZyNE9qQVdpV2NzeHVxMjIxZXNYQnIrTmxKakQzdWd0VUJuNldEaDZWb2hy?=
 =?utf-8?B?aDlLTDB1Sys3UDh6aW9hL2ZKb0ppVW9UOXVucmdRbTQ4Mk5iR3JERTZHNGhG?=
 =?utf-8?B?Rmd4MWFPU05mcVhvUDBhZnZ2TnBYWjkxOEtScFJJeEFkdjJLTlZUZnRBcmJo?=
 =?utf-8?B?THhBZUhvaEpPcGI3cGRHdi84NEhadThkclpjaTlLS2l5TW9VaGpRb2NCTVJB?=
 =?utf-8?B?bHg2OEZIQm13eitXbWZHT1RZSTAxMWM4bjYzc3lDc1h2cFVJVnRvT0hYbTFX?=
 =?utf-8?B?MnB3WVJvOHJqV0xkd1FteGdGOXBnZ1hrV29ZWFVYUjZSZktRZ3ZhRngvVUVV?=
 =?utf-8?B?MGhDWnFOUHlFL3FPeDhxRFg0STJ2dDNLSzlZZEtLaSt3Qm5vQ1NRZHk5eUZJ?=
 =?utf-8?B?NHA1VEUvbVRUczRORTdhVkZDKzBRYk9kQ0JObmp5d09kZGxwbzlsSUpqd25x?=
 =?utf-8?B?Y3NMNWluRDhjMFVYNnJCWGJqbE1XUitGVVFuYldqNXZoWEkwSG16TE9mZnVy?=
 =?utf-8?B?RzBnTGd6OURNYzJTRmFwbExCVk9kZ09ZTTJ3LzdXY0tpdHJMd2dWZnNwaWI5?=
 =?utf-8?B?eVNRWlhpVEhnUzU1Q1VUUlhvZ2p1U1hHTDRmWXYyNzRWVHZEZ1ZTbE83QWsw?=
 =?utf-8?B?UGxLME4xY0d3dFl6NjNiNzQrSGtuSW16MWQ3eGJHZC9IcmRVZ0NnMFJUSkFF?=
 =?utf-8?B?R2J5ZkNHd3JsMXE3bWZ1RWJGTkdlVW43U04zSTlPM3Z5QVVtU2wzczM1UjBz?=
 =?utf-8?B?VkxsbjkxcDVMK1Axcnd0UjRKNHhZV0QyMTZOS2xxa2Z6UDZIR3ZHb2lHWWRo?=
 =?utf-8?B?OFJLNlFxVlVDTXVHVXQwcWN4ZzdHU0VySG9Bd2pTQ1RtOWErT0dOcnRxK0Yv?=
 =?utf-8?B?a0RPZllLTnVIeURobjBDRlJvWGFPZElJQ0VWQXRBMzc0K0lWL09zVHZBbk5m?=
 =?utf-8?B?UzhBdGNNcWl1YTlDdTBmUm80YmNTemg1USs1WGltWGM3VWNXVFlNMW5qUjJD?=
 =?utf-8?B?VE51b2dvK2REbzVwa0Jra3p1cFhac3ZkMWdvak54ZmVjMG1CcEpoYVdyclJV?=
 =?utf-8?B?VUhwUFkxQWE2OVFXUGZTQnkyeXRZUnlFaWRwSGhJdkg5RkZjRVgrOXV4aWtR?=
 =?utf-8?B?K0dMVEpCdWpTUVF0WS8yYm9aU3E0ZWRmckhVQkVBSnBnVEhmdGRjWEw3VWZ2?=
 =?utf-8?B?WlcvSXI3dFFrMnd2cVUrcExzZ2cwc25zMnJCZVQ0NUlJOU92T0RvSU1VNkdu?=
 =?utf-8?B?QVk5UmprcEYrQjZkZlp6ODNzY2twS0wveW9vTFduSTlZVmswSUk0bHhoNWZR?=
 =?utf-8?B?cjZqdFpyRVlnVHlSUDdGT0VBN3pxME5lQ3FBSlBSZWNRSys4SUJMVm9EcTZx?=
 =?utf-8?B?ZGJUYitrb0U4VzRsM1hQWGVrVjJNTWgrU3o5YUFaUmRCdi9iSlhQTUxYVUVp?=
 =?utf-8?B?WjQ3b09NYllNYzZ5M0F3VktDREJFcVlkSk92QmhRbG56MUxuSkZ5NXRRRnpU?=
 =?utf-8?B?aHU0akovWXB1WVFDZDNyellTVHptRGJIR3lsSUNQWFVTeU9SK0p4bjB4eG1D?=
 =?utf-8?Q?nPvRWIXiJGg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?KzVGNDFGVi96am5DZGIyVUxBVVNYUzFTZ2RHbm1xSEpoZ3JjRzBvc0xTb0RW?=
 =?utf-8?B?cXZzZHpwN2hxa0lvMUZCUVJObVpVNmVBQjMrY0JGZ1RDSGZ6SFFyRis1ZVdU?=
 =?utf-8?B?dE5nTjdFdjZ6YVlaZzdFOXdtUVU3ZXNZT1dsUFM1VVZlYWNHMm0rUlFnQzVl?=
 =?utf-8?B?WTJpVldoVEFLQ3pDRlFIWCs0L2pMTSt4MDhtTC9zSFMzNFFGWGlIaGtyYVZQ?=
 =?utf-8?B?VU5PemJwb0swZHZ1UkMwbmdFenNKREN2QnhTMEs5T3NxTTBxSGh0bGFwWUtI?=
 =?utf-8?B?TnhJbytkWTIrdEk5c01UMHE4cmpYOUhjRnBQU29od3h3dEFuK0k5dHFPRDNh?=
 =?utf-8?B?OWFWREhoTmRxVzlkMnkvbkFKRUE1eDc2Y3ZLaGE5ZnRsK0xwZ0ExWWlkOUhM?=
 =?utf-8?B?YVZ4d3Z2UW9pQnppdlpIMFJCOEdqenFvT1VhVXY3NEJZdjJVdS8zUWNKNi91?=
 =?utf-8?B?d3BFNjdZT25ETjBKZXhWSlczV2dCaWxubW9EdE1jZ2kzeHR3c2RkTERHQ3oy?=
 =?utf-8?B?QTFQeWk3bmZuc1dmZzA3MDNPdnlTdW9LL0lBNmI1NE1pczNUdVZQS1JZdjZJ?=
 =?utf-8?B?WXJ4Ylc0eG1CaG1aMzY3cmlnZ1I3Z3NTV3BhY1huWEcxMExGU1ZBTzZCVDhr?=
 =?utf-8?B?RjdsTzREd2JpWmxSeEdGaTYyVTZTWVpLRjlwd0d3MGtGZlR6Q0Y2U2crZWZQ?=
 =?utf-8?B?cXBiZC9WbTlDZGV6OTNmb3Q1RHlETTdyNC9IQWlsOGN0SlNJZTJMZ0kvL1BB?=
 =?utf-8?B?L09mcXRqT25XUno4ZGRsSldFUHVDNEt0elpQRlk3MW1vZUdrZEpWZmZNNlhq?=
 =?utf-8?B?ampRVGUya1dsNEpQVHYrU1d1MjVPRUVSRGVBa1NqekJramNSK21DQzlsTmRY?=
 =?utf-8?B?SnpuNTNsOWtINXRzZ242cStKQVE2L05HbVhrUmxmQXJ1QjVsTHZLKzRlNDVx?=
 =?utf-8?B?dVhVcitDR1JQMDZBNTZxckE1c2E4VTRYL0tLbEJhUzBBTjQvVU5rdlExUith?=
 =?utf-8?B?NTJjbkZKemY0RjZNMW5rSCtTWVVVUFAvcmZCNVluVVB3bUdOVGNldDZOM3BQ?=
 =?utf-8?B?MVNJbUtwS0JWNFhLNktodkgzR24rRDNqQTFBMStSMG5DZXNzRGVFUm9VTDFZ?=
 =?utf-8?B?d1N3VE1uTTNSRklsWFozMUJmSzBzd1Q5QXFzbkpyajhITEcrSDA2OWljazV4?=
 =?utf-8?B?bGtSTnkvaVdma21tSVdzSjVzTC9OdzlsNjZDUkdKb2c3WTBUSEhDYzlkVzVa?=
 =?utf-8?B?MHpoWHBRNHRyQlphTWpjYndHMU0yWEFUVkJDSVFYRzNoN2gvd1lMdUNRT0JM?=
 =?utf-8?B?MlB5NHBCbkVuU3JOMGQ0d2Z5NzBiK3VsMERMVE5scG81RGdUYjVGQXNyWE91?=
 =?utf-8?B?RkVLMHVSbmVIcG9PWFRkSE1rNFpONVV2WWxqelI3dlFzZXdIQnFhWXpxaGRi?=
 =?utf-8?B?cHJjT3RPVkFHcnRVS2hYLzQ5QlhOSStYV09GaDBkZ05oRDVOczlSSFUzak1S?=
 =?utf-8?B?RVhmZkFDMG1XZzJEeS81aXRRL21jbzc4N2diczhPZWRQMG9TWjlRNFhZZy91?=
 =?utf-8?B?c3kwMnRNN0NNQy9iNS9acmZPRlpFTkRpNW9raVpaVG1aVWcwQjR3d2RsTDJZ?=
 =?utf-8?B?bkNUcVd1NFJ1RWw1cGlDNEQyVTJIM1lMZDlFdG9Uajk1cWl0NVEyZEFsMEd2?=
 =?utf-8?B?RHArUElwTjRPY240TWcrMGlqZjhYeXBpOHVJMTV3dU1QZ3ZtQ2ZHUVFCMGo2?=
 =?utf-8?B?S3NEcTNIWjdFWElERzllRmNxUXdBcXdQOVR4NWhIOVRCVGkxL0lENVpzRkx3?=
 =?utf-8?B?dXhvVzJDMWlEL0pNUVljbnV3a0Y4ZmVMc3B6Wng5cGJQc1RZakdnMFlPdTlN?=
 =?utf-8?B?OXlqS3ZmZWN1elRuZnRvaEt1SFQ5akM0YUtWYkZVbVNnaGx1TTczcnV6N2ti?=
 =?utf-8?B?UmRlWE5xeDY3UiswRGxrZ3oyZ2ZSTGt6eE5ENGdkN3c0bDNsNHFUNHhoOGRR?=
 =?utf-8?B?SVhYVTcya1B5MU9rL1NsZTRIbjVwa0xra3NrNUVDdkl3NnlyVU1VNkdydStF?=
 =?utf-8?B?MmlsdjI2cmdkdkF2L1ExMGt1NEh5MVdaS3l2a250VWU2ek1ZR1owU3NScG9o?=
 =?utf-8?Q?hh9mKSmvUuZhBy1hezdh/zObp?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3177b36-bfb1-40bf-38b0-08dd917e7940
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 17:57:34.6157
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BpPK9x+5nBgbTpgB4tfAfgLCGiNI3bw0NtS7RwPgKMX+K6CowVr8kKEpl9Eq8iKM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7107
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: BBAE841598
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.71:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:mid,amd.com:dkim,igalia.com:email,mail-bn1nam02on2071.outbound.protection.outlook.com:rdns,NAM02-BN1-obe.outbound.protection.outlook.com:helo];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 4WITCIWJB2K2UAPI337JJOD5WIIRMOVT
X-Message-ID-Hash: 4WITCIWJB2K2UAPI337JJOD5WIIRMOVT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Matthew Brost <matthew.brost@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 04/13] dma-fence: Move array and chain checks to flags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4WITCIWJB2K2UAPI337JJOD5WIIRMOVT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xMi8yNSAxMToxNCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiBPbiAxMi8wNS8y
MDI1IDA5OjE5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gT24gNS85LzI1IDE3OjMzLCBU
dnJ0a28gVXJzdWxpbiB3cm90ZToNCj4+PiBXaXRoIHRoZSBnb2FsIG9mIHJlZHVjaW5nIHRoZSBu
ZWVkIGZvciBkcml2ZXJzIHRvIHRvdWNoIGZlbmNlLT5vcHMsIHdlDQo+Pj4gYWRkIGV4cGxpY2l0
IGZsYWdzIGZvciBzdHJ1Y3QgZG1hX2ZlbmNlX2FycmF5IGFuZCBzdHJ1Y3QgZG1hX2ZlbmNlX2No
YWluDQo+Pj4gYW5kIG1ha2UgdGhlIHJlc3BlY3RpdmUgaGVscGVycyAoZG1hX2ZlbmNlX2lzX2Fy
cmF5KCkgYW5kDQo+Pj4gZG1hX2ZlbmNlX2lzX2NoYWluKCkpIHVzZSB0aGVtLg0KPj4+DQo+Pj4g
VGhpcyBhbHNvIGFsbG93cyB1cyB0byByZW1vdmUgdGhlIGV4cG9ydGVkIHN5bWJvbHMgZm9yIHRo
ZSByZXNwZWN0aXZlDQo+Pj4gb3BlcmF0aW9uIHRhYmxlcy4NCj4+DQo+PiBUaGF0IGxvb2tzIGxp
a2Ugb3ZlcmtpbGwgdG8gbWUuIFdlIGRvbid0IGRlLXJlZmVyZW5jZSB0aGUgb3BzIGZvciB0aGUg
Y2hlY2ssIGluc3RlYWQganVzdCB0aGUgdmFsdWVzIGFyZSBjb21wYXJlZC4NCj4+DQo+PiBTaW5j
ZSB0aGUgYXJyYXkgYW5kIGNoYWluIGFyZSBhbHdheXMgYnVpbGQgaW4gdGhhdCBzaG91bGQgYmUg
Y29tcGxldGVseSB1bnByb2JsZW1hdGljIGZvciBkcml2ZXIgdW5sb2FkLg0KPiANCj4gWW91IGFy
ZSByaWdodCB0aGlzIGlzIG5vdCBzdHJpY3RseSBuZWVkZWQuIElkZWEgd2FzIGp1c3QgdG8gcmVk
dWNlIGFueSBhY2Nlc3MgdG8gb3BzIGFzIG11Y2ggYXMgd2UgY2FuIGFuZCB0aGlzIGZlbGwgdW5k
ZXIgdGhhdCBzY29wZS4NCj4gDQo+IEFub3RoZXIgYmVuZWZpdCBvbmUgY291bGQgcGVyaGFwcyBh
cmd1ZSBpcyB0d28gZmV3ZXIgRVhQT1JUX1NZTUJPTHMsIHdoaWNoIGlzIHBlcmhhcHMgYSBsaXR0
bGUgYml0IGNsZWFuZXIgZGVzaWduIChsZXNzIGV4cG9ydGluZyBvZiBpbXBsZW1lbnRhdGlvbiBk
ZXRhaWxzIHRvIHRoZSBvdXRzaWRlKSwgYnV0IGl0IGlzIG5vdCBhIHN1cGVyIHN0cm9uZyBhcmd1
bWVudC4NCg0KDQpJIHdvdWxkIHJhdGhlciBzYXkgdGhhdCB1c2luZyB0aGUgc3ltYm9scyBpbXBy
b3ZlcyB0aGluZ3MuIEJhY2tncm91bmQgaXMgdGhhdCBvdGhlcndpc2UgZXZlcnkgZHJpdmVyIGNv
dWxkIGFjY2lkZW50YWxseSBvciBiZWNhdXNlIG9mIG1hbGljaW91cyBpbnRlbmQgc2V0IHRoaXMg
ZmxhZy4NCg0KVGhlIHN5bWJvbCBpcyBub3Qgc28gZWFzaWx5IGNoYW5nZWFibGUuDQoNClJlZ2Fy
ZHMsDQpDaHJpc3RpYW4uIA0KDQo+IA0KPiBJZiB3ZSB3aWxsIG5vdCBiZSBnb2luZyBmb3IgdGhp
cyBvbmUgdGhlbiBJIHdvdWxkIGJlIHRha2luZyAxLzEzIHZpYSBkcm0taW50ZWwtZ3QtbmV4dC4N
Cj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+Pj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+Pj4gLS0tDQo+Pj4gwqAg
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIHwgMiArLQ0KPj4+IMKgIGRyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDIgKy0NCj4+PiDCoCBpbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5owqDCoMKgwqDCoMKgwqDCoCB8IDkgKysrKy0tLS0tDQo+Pj4gwqAgMyBmaWxlcyBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jIGIvZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS1hcnJheS5jDQo+Pj4gaW5kZXggNjY1N2Q0YjMwYWY5Li5kYWY0NDRmNWQyMjgg
MTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQo+Pj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1hcnJheS5jDQo+Pj4gQEAgLTE2Nyw3ICsx
NjcsNiBAQCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVuY2VfYXJyYXlfb3BzID0g
ew0KPj4+IMKgwqDCoMKgwqAgLnJlbGVhc2UgPSBkbWFfZmVuY2VfYXJyYXlfcmVsZWFzZSwNCj4+
PiDCoMKgwqDCoMKgIC5zZXRfZGVhZGxpbmUgPSBkbWFfZmVuY2VfYXJyYXlfc2V0X2RlYWRsaW5l
LA0KPj4+IMKgIH07DQo+Pj4gLUVYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2FycmF5X29wcyk7DQo+
Pj4gwqAgwqAgLyoqDQo+Pj4gwqDCoCAqIGRtYV9mZW5jZV9hcnJheV9hbGxvYyAtIEFsbG9jYXRl
IGEgY3VzdG9tIGZlbmNlIGFycmF5DQo+Pj4gQEAgLTIwNyw2ICsyMDYsNyBAQCB2b2lkIGRtYV9m
ZW5jZV9hcnJheV9pbml0KHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5LA0KPj4+IMKgwqDC
oMKgwqAgc3Bpbl9sb2NrX2luaXQoJmFycmF5LT5sb2NrKTsNCj4+PiDCoMKgwqDCoMKgIGRtYV9m
ZW5jZV9pbml0KCZhcnJheS0+YmFzZSwgJmRtYV9mZW5jZV9hcnJheV9vcHMsICZhcnJheS0+bG9j
aywNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250ZXh0LCBzZXFubyk7
DQo+Pj4gK8KgwqDCoCBfX3NldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfQVJSQVlfQklULCAmYXJyYXkt
PmJhc2UuZmxhZ3MpOw0KPj4+IMKgwqDCoMKgwqAgaW5pdF9pcnFfd29yaygmYXJyYXktPndvcmss
IGlycV9kbWFfZmVuY2VfYXJyYXlfd29yayk7DQo+Pj4gwqAgwqDCoMKgwqDCoCBhdG9taWNfc2V0
KCZhcnJheS0+bnVtX3BlbmRpbmcsIHNpZ25hbF9vbl9hbnkgPyAxIDogbnVtX2ZlbmNlcyk7DQo+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPj4+IGluZGV4IGE4YTkwYWNmNGYzNC4uZjRh
YmU0MWZiMDkyIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hh
aW4uYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYw0KPj4+IEBA
IC0yMjUsNyArMjI1LDYgQEAgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgZG1hX2ZlbmNlX2No
YWluX29wcyA9IHsNCj4+PiDCoMKgwqDCoMKgIC5yZWxlYXNlID0gZG1hX2ZlbmNlX2NoYWluX3Jl
bGVhc2UsDQo+Pj4gwqDCoMKgwqDCoCAuc2V0X2RlYWRsaW5lID0gZG1hX2ZlbmNlX2NoYWluX3Nl
dF9kZWFkbGluZSwNCj4+PiDCoCB9Ow0KPj4+IC1FWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9jaGFp
bl9vcHMpOw0KPj4+IMKgIMKgIC8qKg0KPj4+IMKgwqAgKiBkbWFfZmVuY2VfY2hhaW5faW5pdCAt
IGluaXRpYWxpemUgYSBmZW5jZSBjaGFpbg0KPj4+IEBAIC0yNjMsNiArMjYyLDcgQEAgdm9pZCBk
bWFfZmVuY2VfY2hhaW5faW5pdChzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbiwNCj4+PiDC
oCDCoMKgwqDCoMKgIGRtYV9mZW5jZV9pbml0NjQoJmNoYWluLT5iYXNlLCAmZG1hX2ZlbmNlX2No
YWluX29wcywgJmNoYWluLT5sb2NrLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29udGV4dCwgc2Vxbm8pOw0KPj4+ICvCoMKgwqAgX19zZXRfYml0KERNQV9GRU5DRV9GTEFHX0NI
QUlOX0JJVCwgJmNoYWluLT5iYXNlLmZsYWdzKTsNCj4+PiDCoCDCoMKgwqDCoMKgIC8qDQo+Pj4g
wqDCoMKgwqDCoMKgICogQ2hhaW5pbmcgZG1hX2ZlbmNlX2NoYWluIGNvbnRhaW5lciB0b2dldGhl
ciBpcyBvbmx5IGFsbG93ZWQgdGhyb3VnaA0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+IGluZGV4IGFjNjUz
NTcxNmRiZS4uNWJhZmQwYTVmMWYxIDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+Pj4gQEAgLTk4
LDYgKzk4LDggQEAgc3RydWN0IGRtYV9mZW5jZSB7DQo+Pj4gwqAgwqAgZW51bSBkbWFfZmVuY2Vf
ZmxhZ19iaXRzIHsNCj4+PiDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX1NFUU5PNjRfQklULA0K
Pj4+ICvCoMKgwqAgRE1BX0ZFTkNFX0ZMQUdfQVJSQVlfQklULA0KPj4+ICvCoMKgwqAgRE1BX0ZF
TkNFX0ZMQUdfQ0hBSU5fQklULA0KPj4+IMKgwqDCoMKgwqAgRE1BX0ZFTkNFX0ZMQUdfU0lHTkFM
RURfQklULA0KPj4+IMKgwqDCoMKgwqAgRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwNCj4+
PiDCoMKgwqDCoMKgIERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULA0KPj4+IEBAIC02
MzIsOSArNjM0LDYgQEAgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2dldF9zdHViKHZvaWQp
Ow0KPj4+IMKgIHN0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0
dWIoa3RpbWVfdCB0aW1lc3RhbXApOw0KPj4+IMKgIHU2NCBkbWFfZmVuY2VfY29udGV4dF9hbGxv
Yyh1bnNpZ25lZCBudW0pOw0KPj4+IMKgIC1leHRlcm4gY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9v
cHMgZG1hX2ZlbmNlX2FycmF5X29wczsNCj4+PiAtZXh0ZXJuIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzIGRtYV9mZW5jZV9jaGFpbl9vcHM7DQo+Pj4gLQ0KPj4+IMKgIC8qKg0KPj4+IMKgwqAg
KiBkbWFfZmVuY2VfaXNfYXJyYXkgLSBjaGVjayBpZiBhIGZlbmNlIGlzIGZyb20gdGhlIGFycmF5
IHN1YmNsYXNzDQo+Pj4gwqDCoCAqIEBmZW5jZTogdGhlIGZlbmNlIHRvIHRlc3QNCj4+PiBAQCAt
NjQzLDcgKzY0Miw3IEBAIGV4dGVybiBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBkbWFfZmVu
Y2VfY2hhaW5fb3BzOw0KPj4+IMKgwqAgKi8NCj4+PiDCoCBzdGF0aWMgaW5saW5lIGJvb2wgZG1h
X2ZlbmNlX2lzX2FycmF5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+IMKgIHsNCj4+PiAt
wqDCoMKgIHJldHVybiBmZW5jZS0+b3BzID09ICZkbWFfZmVuY2VfYXJyYXlfb3BzOw0KPj4+ICvC
oMKgwqAgcmV0dXJuIHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0FSUkFZX0JJVCwgJmZlbmNlLT5m
bGFncyk7DQo+Pj4gwqAgfQ0KPj4+IMKgIMKgIC8qKg0KPj4+IEBAIC02NTQsNyArNjUzLDcgQEAg
c3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9pc19hcnJheShzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSkNCj4+PiDCoMKgICovDQo+Pj4gwqAgc3RhdGljIGlubGluZSBib29sIGRtYV9mZW5jZV9p
c19jaGFpbihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiDCoCB7DQo+Pj4gLcKgwqDCoCBy
ZXR1cm4gZmVuY2UtPm9wcyA9PSAmZG1hX2ZlbmNlX2NoYWluX29wczsNCj4+PiArwqDCoMKgIHJl
dHVybiB0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19DSEFJTl9CSVQsICZmZW5jZS0+ZmxhZ3MpOw0K
Pj4+IMKgIH0NCj4+PiDCoCDCoCAvKioNCj4+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
