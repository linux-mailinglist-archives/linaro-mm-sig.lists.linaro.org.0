Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DB3B573D6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 11:00:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EB7584579B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Sep 2025 09:00:12 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2064.outbound.protection.outlook.com [40.107.244.64])
	by lists.linaro.org (Postfix) with ESMTPS id 75C8E44105
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Sep 2025 09:00:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=uEQ6TamH;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.64 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShdNR1SXOCo/4JMbFF/NLRV+Ghf9WqFl624VHFeskwepl4j6j7OAURuv67EPlCk59my6jXrmvomJu/uYH0+gKO/2/4XwgLy1CQEHKlesQTBm/SbhBP9o6Sp+C1MUrtFtcy0GKDFEdN19brCcC47d98tTFN4D+tGbWBL6dxH/3ZXtb71APL7V8IjiDBVyYUq/pitKuMUA7DfFqDEUzRCqsdCvZGZ7CYEqvFdAzgPiPVKnDVg3r53FuQ3Jd3DfLWLm/vj+r4C1greVO+M+TxWyUuvfCwzaC4PRDCnD7TDiXwB07aIuxINAEUjAzYzuQDJID14+hHvg2vtts1ydtfb1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=souMwHADAtKetOnAbK5zZwXeNNUDSIaHDZ1iwOhAcb8=;
 b=qgAw+/LbRbaQIEuGDcdtGWYCWrtec7WefuPoJjMznpI2yUGCCEk66uylSz2CSb8e2WDldqrltj1O0AqggIRReR3dC1lHd+TdRa6UP32vKpzRDgtp9bwdvBsXoPYmqa0LGmtoMC2ktCewipvZs+fQ8Dsr1dZGDS4VUpaWhdaMwpqkp7ZWt/XaK2JQSCvq88IH2QSHGMHrZfovyzJyUGU0+3dvCetxjc7gYQp41OAsYzOq2LjwByRWSuXc9GfH3Rmuwsdiip00jsE8x3wTGySaiWPt9mU6VRwZkaOWcceloDqeC34vVntTxpv4CBYGMjrdgS+BqOszjuE2nVOLShgE2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=souMwHADAtKetOnAbK5zZwXeNNUDSIaHDZ1iwOhAcb8=;
 b=uEQ6TamHkea5xNgHEnsE0VF9uwGs+T7yABUU4Foam1rO2/ahWEgTUvd/MQE56pv2Z1hXPTUdWEo/2WRWHoA5tJpczrrpQPUa+uIB+HBUTsjr28fmlN33M7kH1V82pOOoRpHe1dSOE4+qvNmKPWWq56MX22xHP5m6cdRrs1AelfM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DM4PR12MB7719.namprd12.prod.outlook.com (2603:10b6:8:101::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 08:59:59 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9115.018; Mon, 15 Sep 2025
 08:59:58 +0000
Message-ID: <e47bb7e1-5ec7-4142-89a6-2f7813fa40c1@amd.com>
Date: Mon, 15 Sep 2025 10:59:48 +0200
User-Agent: Mozilla Thunderbird
To: Lyude Paul <lyude@redhat.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org
References: <20250911230147.650077-1-lyude@redhat.com>
 <20250911230147.650077-4-lyude@redhat.com>
 <14af50d2-f759-4d89-ab9e-0afc7f9cb280@amd.com>
 <c00130930901db1ca4ea2d0302350ef024b23f50.camel@redhat.com>
 <e1929999f89cd8d90c4454075df4ebe3bdfab36a.camel@redhat.com>
 <534238a347c24f99cfebfd2af1d79bf24e25ed27.camel@redhat.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <534238a347c24f99cfebfd2af1d79bf24e25ed27.camel@redhat.com>
X-ClientProxiedBy: FR4P281CA0417.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d0::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DM4PR12MB7719:EE_
X-MS-Office365-Filtering-Correlation-Id: ed953019-77fa-48d3-351c-08ddf4363f7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?K09kbmZDSUt2TzI5WEpqTTFlbW1pQXFMWnpXZjJKWjRIZ0JPMWVXYjUraVZO?=
 =?utf-8?B?ZWZ0MFlvNi85Y010SVpTTEZvZ1hmeFVuaGdWcUdSaUlQQ1NGK2VxQWw4ZFdV?=
 =?utf-8?B?anBIOWxZVEhCMXFsdGJQR2JVdDFNQnJLaUpwTEhqN05WSUNLVE5WdkdqQTlM?=
 =?utf-8?B?a0hZVGlZMnJqR0I0eVZpVXgvMEVGNC9QRzV3QStGd1NKZGZwQ3FBc1gzdVZ2?=
 =?utf-8?B?bWJZYkRVM1c4RVNGL0xIRFNDeW93RnhGV042c1hTaWMzMll4OVh5bTZOblVW?=
 =?utf-8?B?QUVseFlzMzdsUUE4eEprRmNORnRMbHAwa3laVVU0ZGl0cWdTTHJKMC9ESHlp?=
 =?utf-8?B?T2lhU242b2hSYzh5Sm5SMUxwbDVjcWs4WC9OdVlPVm8zekwzYnk0aUUrUXVB?=
 =?utf-8?B?TXU0M3VaUEl3N3pZTEcxR2dSSUJqVmhPT2FxK3cvdGtPR2I5QTRZcEVPdWFu?=
 =?utf-8?B?S1RMNG5TWXFVU2hWTmY5bjdIRmRycDM2L3NaNENkZ0p5U3phVnNRNU1OZmVw?=
 =?utf-8?B?SFJBdnRFYkJJcExRSkRVV1k0VDV2cGl1T3VYNVdCNTJ3dUV0WkVYR0ZPQ1Bj?=
 =?utf-8?B?WjJMaHdZbWxtMi9VRThoSGVkMEZLR3V4SXozblpYV094UHM1MGlua3NyeGlT?=
 =?utf-8?B?QU90Wk41K1ZSTHhtOGJFYWtOV2J1eWYyMjRWd2pVUldYakdYdlo3a1lGVjZX?=
 =?utf-8?B?eVlCdlRxTzdIZzdqQVE4NjVYUXU1NWZaUytBUHdRTHJydUdiOGtYTlArS2ZN?=
 =?utf-8?B?d3ZYQ0RkWlpOUzB5UXBncVR2WndybmJqY1hTQ0RqV2xVRFlQbGx1YzRoNGVD?=
 =?utf-8?B?dEtsL0EzVE43S2ZUR1UvY0JUSUxwMTB0dVJrdzFvY2FRZ3Y2SmRFOG9JY3Ft?=
 =?utf-8?B?MStIcjR6d2U3UmpQMSs4SjlMSmVWNlhYc2JRT091MVVsY3l3Tk9HWjJXSW9O?=
 =?utf-8?B?M21nZWR1N1Y0anJBUXRFNXh6eXFCUmtGYTc0VDFHQ2RSdDNRdHF0bGM5YjhU?=
 =?utf-8?B?djFFdndBREZaL2tFZVErZ2UvTTVGaEJJSDJxL0hMRUhKRWUxd1hVelhIY1dZ?=
 =?utf-8?B?SVR1SHVPaEZYUngwR0hUZzRmWWJyWGZnM05GaklENUVVWno1Qk5PanE0d0JV?=
 =?utf-8?B?V3hueFFDcjYwcitJcFpmUXZMcGd6TkxXeGtBOWkrbnhPUU9wMXN4a01DMlJ6?=
 =?utf-8?B?dUNOR1hpYjU1ZzJaY2EyZE83Vjh3YUZaS2FPdFFKYU5JSGJFbWdYMnZqWTlh?=
 =?utf-8?B?c3pVSnlVUkJxNWxrRVB2L0JCekdvTVBiM1QyUEhLaUEzYVZIODRtcEgrd3NQ?=
 =?utf-8?B?YWR6S2poT3JIMnNPa1NaV2MrYTk0bWxQZExPSlZPU3lrQVZoc2diQzJSMkdm?=
 =?utf-8?B?cVM0Z0lpa2MzUXlBZThyN3d5SVp0c2FhYTlVYlpJeE9MNlZoMmN6U3IxdmtN?=
 =?utf-8?B?WG51WDg3LzkvRjJlV0ZLWEpMYmEvYnRtNVQ0T1ZKVVh3Z0RwbFovTmJ0eVd2?=
 =?utf-8?B?dmk4Y1UwOTM4bi9Zdkw4NGRNa1ExbVFBSFpqYmxkQ2YzYk1nei9nV3BmWTI1?=
 =?utf-8?B?MERoRnV2UE1pZ1kxbkxGNTd1Q3JqZDVtdjlOKzJqbC84akowM2pBcG1NWXNi?=
 =?utf-8?B?STg1SlFiWTNJblVzQzduUi8zODd3VUNHWU1vZmcxbG01MnJsNTlGNHlPRkd1?=
 =?utf-8?B?Yk1aY1RiQ3JNQUVDNUtVeDl0Z1k0aVV4Z081MStEVVl4RG0rUW1ZSjBzWTJ0?=
 =?utf-8?B?V29SVllVZk10T0MzWGIvOW9sWDQxbTMzOGQ5NjdOR1hWYTB2K3g1a1pyLytI?=
 =?utf-8?B?NzNVemQxeEphQk1QUGNReFQ1YWhLdlo2WCtkVTlnWEE0TGdKSFRjU1E0V1ZB?=
 =?utf-8?B?M0kyWDdpVENMWSt0VlB4NGIrL25BRkRPa3hQR3l0ZDlVRlc0RExzMDFLOXFE?=
 =?utf-8?Q?+uPuHKQ/dAM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bENVbjdObzFYRFMwbWUxcThMYVhKZnlLNnNFTHlsdGdqQThPSjdNMUZ6VExn?=
 =?utf-8?B?dStrVjE4REJwUEwvMjV0bmRnajUwQU5XMTIvekZmeUZLbVd1RmpoZXNaMFNZ?=
 =?utf-8?B?WUo0QS9BWSt3WUw5ekt2L3lQNVVFR0M5SkhOeklXbUZ4L3huNW9CN1dZazFU?=
 =?utf-8?B?OTk2M0lDcS9oek9KbW91emVqUHNYU0tHakI4QThYNDJ4WmVmbXNaSWlyK2JS?=
 =?utf-8?B?bW5jUXhIVkNneDh4aXNNUzJhNFIvdkVicEd5OUROejUyY1N4d09kNi9PWUJI?=
 =?utf-8?B?b2VuTml6L2dyUHcrMWsyUk5DbnBneHFWMUZramVUdzRjb09hVUhhL3RrdVJH?=
 =?utf-8?B?K3NGVnZYcTZPRG5hVjJ6LzF5bVpBaEVyOXk0cnF3OWE3Y0huNmpKdExPd2pt?=
 =?utf-8?B?bjZIOXNLanJEZ01OMlFOTjdUaFQzT1YvMXpjRkRKSzQwdWJ1WVVaajExQnpQ?=
 =?utf-8?B?ZkNOYXlvZUE4b3k0eVViY3JqamFzN1RnL2pJaVZIQzlRR2RtZVFjdzQyb1p4?=
 =?utf-8?B?blJlUlJxL2tpSTRrUm1KUkx1OUdNYk1GMzQ4NTcxSk1sVGcyemUwRitKbElF?=
 =?utf-8?B?Z1JDejZTbWZ1dkQvNE5NNzJHdXBQaWd1dnVadU9oTExkZlJ2ZWpZS0VFcXQ3?=
 =?utf-8?B?cUo0dndmQ29DSDN2SDJ3L2N5NDc4RlVxaEZKUkZFdkJ3dXRmdXFZRHdSNk5I?=
 =?utf-8?B?eVM3QlAyS25lMGZKaXhMK3loTEh6Rm5KUS9CVEFtUGI2eUx3MXNaZmRUZUZB?=
 =?utf-8?B?dkNIcnFoeXVEYWtCcDdCTStOb1pRR1Azc09yRnNpZm15MTRyczFscWJURWp3?=
 =?utf-8?B?MStUMEhGSW96QmpRb1g4SkRYcmxMUThjM2k2Y1dJWTdpUFRSc1R6TTZFTHlB?=
 =?utf-8?B?ODA0dncvL1liU3loVkdLWGZ2dWt5dkdiYTl6STNOUjdJRkZGSnl5b3l3YnR5?=
 =?utf-8?B?SWRDRk1OczhXZ0xPVHVGZ0hGV3VDWVkyRkMyUUYzc2V2b2hRSno4NDFaSTcz?=
 =?utf-8?B?K1Y2dTVWbzFWV21yT1Y0YlBUUHhDMGhsSWYxUkpkZHNRclp5ZUhsYlM3V0tI?=
 =?utf-8?B?Qmozd3JPVjQxZ2g4N3ArU2tZVnFUN0YydXJabmk4YlBUazNRYWFiWWlIR2dq?=
 =?utf-8?B?dFUxTmIwRW8rWFY5UFlaYUtjSHFZQ0N1MDhPWTcwVWZhaXdxUitWK3V0RzZ5?=
 =?utf-8?B?dDk4ZkpvMzFQRHNxZWZzK2t2aXN5bHEvRUFRQjdySHVlMU1lM0NhbjM5aEhs?=
 =?utf-8?B?d0x6Q1lic2NWcUdTZ1VEWkZUWXF6MGs3d090MG4vVEJpNjNuWXhKV3Z5TGhE?=
 =?utf-8?B?Y1dFWXV3ZXlyMmlJb2xSV0N2Q0lTdDkyN2huV1Y4U1VuWGxLSU1Gck9OOE1s?=
 =?utf-8?B?MDMzTWRhdkJwYUFwNUJBWk9aalRXY2VmbTlGZzhzYlllWFVOY3JFRVp2R2x0?=
 =?utf-8?B?ZGxXcVliUlpJR3lEZjNNWithd0Z6VnFIejVSSWJ0bTFDbDVDRFNwdlgzcWVU?=
 =?utf-8?B?dmgzUjYySjF6ejJzaWtITlRrQUJMWE82ZkFzK21aY1RBczhZaGhjNmpEdDBM?=
 =?utf-8?B?RWtMT2MzTVNRYThOVWlHUzYvT015bVEzanNsZnBpc2hMdXdyRGdaY2paaEh2?=
 =?utf-8?B?ODR2TXp1ZlJvRXVHM0xlWmU5SGlxNTFEclpUSU92MGovbEI2MXRQNGpQSVJS?=
 =?utf-8?B?aEdjdGZqbzBld2hoYTc3M2d5bXlWbkYyeFBpUmZLV25OdGFjWHR5VnI1RGJH?=
 =?utf-8?B?ZzJXOHRwbXBKejNTWERES21EUGljRGVOdnNJZjhQL1Q1RlB3UStaVTg4cTFF?=
 =?utf-8?B?OCs0OGMvc2xPZGJ5b3Jpa3NwS2E3dVNLRW16TXBCNmE3UUt0cEN0RVBqWTVo?=
 =?utf-8?B?SUh4SXVOb1kyUWdTSVZCc2FxekZKRTlhUmllc1MwWk82S2RTam9mWm5oMWsz?=
 =?utf-8?B?SzJPYkdONS9WVW9UR21HNXg2ZitqT0JJNHdXUllwdTY5UkhKSnBQeUtzSEtZ?=
 =?utf-8?B?UHpnbDR0dzBTVEJrNkVyQ1VRaXJtSUhvdm5xUGdXT0lkMmswWCthWmF3WXpt?=
 =?utf-8?B?dVdIU0FlZ0JGL2RiWnJieW85RVdPcXg3TU9UbXdrNXlGdmFVZ2QyZkVTaktO?=
 =?utf-8?Q?ajy7xKsZ/KaY3L3Cy4DmP6d4E?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed953019-77fa-48d3-351c-08ddf4363f7c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2025 08:59:58.8194
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +yorWZee4WtU5OBmmSCsvPRVBtjfTYc9mucnXBGYSaogBbIOnfsHSEBe/7rCzJV6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7719
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 75C8E44105
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.64:from];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,kernel.org,gmail.com,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,linuxfoundation.org,vger.kernel.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: XMLTLAKOWNIJKUPBGLARXHWDCZ2PX276
X-Message-ID-Hash: XMLTLAKOWNIJKUPBGLARXHWDCZ2PX276
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Daniel Almeida <daniel.almeida@collabora.com>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Viresh Kumar <viresh.kumar@linaro.org>, Wedson Almeida Filho <wedsonaf@gmail.com>, Tamir Duberstein <tamird@gmail.com>, Xiangfei Ding <dingxiangfei2009@gmail.com>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 3/3] rust: Add dma_buf stub bindings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XMLTLAKOWNIJKUPBGLARXHWDCZ2PX276/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTHl1ZGUsDQoNCk9uIDEzLjA5LjI1IDAwOjQzLCBMeXVkZSBQYXVsIHdyb3RlOg0KPiBBZ2gh
IFNvcnJ5IGZvciB0aGUgc3BhbSwgSSBzaG91bGQgaGF2ZSBkb3VibGUgY2hlY2tlZCB0aGUgY29k
ZSBiZWZvcmUgd3JpdGluZw0KPiB0aGlzIGFzIEkgcmVhbGl6ZWQgdGhlIHJlYXNvbiBJIGRpZG4n
dCBpbXBsZW1lbnQgdGhpcy4gQ29ycmVjdCBtZSBpZiBJJ20gd3JvbmcNCj4gaGVyZSBzaW5jZSBp
dCdzIHRoZSBmaXJzdCB0aW1lIEkndmUgaW50ZXJhY3RlZCB2ZXJ5IG11Y2ggd2l0aCB0aGlzIEFQ
SSBpbiB0aGUNCj4ga2VybmVsIGJ1dDogaXQgc2VlbXMgbGlrZSB0aGUgcmVmZXJlbmNlIGNvdW50
aW5nIGZvciBkbWFfYnVmIG9iamVjdHMgaXMNCj4gaW50ZW5kZWQgdG8gYmUgdXNlZCBmb3Iga2Vl
cGluZyBhIGRtYV9idWYncyBmZCBhcm91bmQgd2hpbGUgdXNlcnNwYWNlIGlzIHN0aWxsDQo+IGFj
Y2Vzc2luZyBpdCBhbmQgbm90IGZvciB1c2UgaW50ZXJuYWxseSBieSBkcml2ZXJzIHRoZW1zZWx2
ZXMsIGNvcnJlY3Q/DQoNClllcyB0aGF0IGlzIG1vcmUgb3IgbGVzcyBjb3JyZWN0Lg0KDQpUaGUg
RE1BLWJ1ZiByZWZlcmVuY2VzIGFyZSBoYW5kbGVkIGJ5IHRoZSBEUk0gbGF5ZXIsIGluIG90aGVy
IHdvcmRzIGFzIGxvbmcgYXMgeW91IGhhdmUgYSBHRU0gaGFuZGxlIHRoZSBEUk0gbGF5ZXIga2Vl
cHMgYSByZWZlcmVuY2UgdG8gdGhlIERNQS1idWYgcHJvdmlkaW5nIHRoZSBiYWNraW5nIHN0b3Jl
IGZvciB0aGlzIEdFTSBoYW5kbGUuDQoNClNvIHlvdSBzaG91bGQgbm90IG1lc3Mgd2l0aCB0aGlz
IHJlZmVyZW5jZSBjb3VudCBpZiBub3QgYWJzb2x1dGVseSBuZWNlc3NhcnkuDQoNCj4gT24gRnJp
LCAyMDI1LTA5LTEyIGF0IDE4OjMyIC0wNDAwLCBMeXVkZSBQYXVsIHdyb3RlOg0KPj4g4oCmdGhv
dWdoLCBJIGp1c3QgcmVhbGl6ZWQgaW1tZWRpYXRlbHkgYWZ0ZXIgc2VuZGluZyB0aGF0IHJlc3Bv
bnNlIHRvIHlvdSB0aGF0IEkNCj4+IG1lbnRpb25lZCB0aGF0IHRoaXMgdHlwZSBpcyByZWZlcmVu
Y2UgY291bnRlZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgLSBidXQgSQ0KPj4gbmV2ZXIgYWN0dWFs
bHkgYWRkZWQgYW4gaW1wbGVtZW50YXRpb24gZm9yIEFsd2F5c1JlZkNvdW50ZWQuIFNvLCB0aGF0
J3MgYXQNCj4+IGxlYXN0IG9uZSBhZGRpdGlvbmFsIHRoaW5nIEkgd2lsbCBtYWtlIHN1cmUgdG8g
YWRkLiBTaW1pbGFybHkgdGhvdWdoLCBJIGRvbid0DQo+PiB0aGluayBkb2luZyB0aGF0IHdvdWxk
IHJlcXVpcmUgdXMgdG8gaW50ZXJhY3Qgd2l0aCBhbnkgbG9ja2luZyBvciBzZ190YWJsZXMNCj4+
IHNpbmNlIHdlJ3JlIG5vdCB5ZXQgZXhwb3NpbmcgYW55IGFjdHVhbCBvcGVyYXRpb25zIG9uIERt
YUJ1Zi4NCg0KV2VsbCBleHBvcnRpbmcgdGhlIGJ1ZmZlcnMgaXMgdHJpdmlhbCwgYnV0IHRoYXQg
aXMgbm90IHJlYWxseSB1c2VmdWwgb24gaXRzIG93bi4NCg0KU28gd2hlbiB5b3UgZXhwb3J0ZWQg
YSBETUEtYnVmIHlvdSBzaG91bGQgcG90ZW50aWFsbHkgYWxzbyB1c2UgaXQgaW4gc29tZSB3YXks
IGUuZy4gY29tbWFuZCBzdWJtaXNzaW9uLCByZW5kZXJpbmcsIHNjYW5vdXQgZXRjLi4uDQoNCkhv
dyBkbyB5b3UgZG8gdGhpcyB3aXRob3V0IGdyYWJiaW5nIHRoZSBsb2NrIG9uIHRoZSBidWZmZXI/
DQoNClRoZSB1c3VhbGx5IHNlbWFudGljcyBmb3IgYSBjb21tYW5kIHN1Ym1pc3Npb24gaXMgZm9y
IGV4YW1wbGU6DQoNCjEuIExvY2sgYWxsIGludm9sdmVkIGJ1ZmZlcnMuDQoyLiBNYWtlIHN1cmUg
cHJlcmVxdWlzaXRlcyBhcmUgbWVldC4NCjMuIEFsbG9jYXRlIGEgc2xvdCBmb3IgYSBkbWFfZmVu
Y2Ugb24gdGhlIGRtYV9yZXN2IG9iamVjdC4NCjQuIFB1c2ggdGhlIHdvcmsgdG8gdGhlIEhXLg0K
NS4gUmVtZW1iZXIgdGhlIHdvcmsgaW4gdGhlIGRtYV9mZW5jZSBzbG90IG9uIHRoZSBkbWFfcmVz
diBvYmplY3Qgb2YgeW91ciBETUEtYnVmLg0KNi4gVW5sb2NrIGFsbCBpbnZvbHZlZCBidWZmZXJz
Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+Pg0KPj4gT24gRnJpLCAyMDI1LTA5LTEyIGF0
IDE4OjI5IC0wNDAwLCBMeXVkZSBQYXVsIHdyb3RlOg0KPj4+IE9uIEZyaSwgMjAyNS0wOS0xMiBh
dCAxMDoyNSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4gT24gMTIuMDkuMjUg
MDA6NTcsIEx5dWRlIFBhdWwgd3JvdGU6DQo+Pj4+PiBJbiBvcmRlciB0byBpbXBsZW1lbnQgdGhl
IGdlbSBleHBvcnQgY2FsbGJhY2ssIHdlIG5lZWQgYSB0eXBlIHRvIHJlcHJlc2VudA0KPj4+Pj4g
c3RydWN0IGRtYV9idWYuIFNvIC0gdGhpcyBjb21taXQgaW50cm9kdWNlcyBhIHNldCBvZiBzdHVi
IGJpbmRpbmdzIGZvcg0KPj4+Pj4gZG1hX2J1Zi4gVGhlc2UgYmluZGluZ3MgcHJvdmlkZSBhIHJl
Zi1jb3VudGVkIERtYUJ1ZiBvYmplY3QsIGJ1dCBkb24ndA0KPj4+Pj4gY3VycmVudGx5IGltcGxl
bWVudCBhbnkgZnVuY3Rpb25hbGl0eSBmb3IgdXNpbmcgdGhlIERtYUJ1Zi4NCj4+Pj4NCj4+Pj4g
RXNwZWNpYWxseSB0aGUgbGFzdCBzZW50ZW5jZSBpcyBhIGJpdCBwcm9ibGVtYXRpYy4NCj4+Pj4N
Cj4+Pj4gV3JhcHBpbmcgYSBETUEtYnVmIG9iamVjdCBzaG91bGQgYmUgcHJldHR5IGVhc3ksIHRo
ZSBoYXJkIHBhcnQgaXMgdGhlIG9wZXJhdGlvbnMgb24gdGhlIERNQS1idWYgb2JqZWN0Lg0KPj4+
Pg0KPj4+PiBFLmcuIGhvdyBhcmUgbG9ja2luZyBhbmQgc2dfdGFibGUgY3JlYXRpb24gaGFuZGxl
ZD8NCj4+Pg0KPj4+IE1pbmQgY2xhcmlmeWluZyBhIGJpdCB3aGF0IHlvdSdyZSB0YWxraW5nIGFi
b3V0IGhlcmU/DQo+Pj4NCj4+PiBGV0lXOiByZWdhcmRpbmcgc2dfdGFibGUgY3JlYXRpb24sIHdl
IGN1cnJlbnRseSBoYXZlIHR3byB3YXlzIG9mIGRvaW5nIHRoaXMgaW4NCj4+PiBydXN0Og0KPj4+
DQo+Pj4gICogTWFudWFsbHksIHVzaW5nIHRoZSBzY2F0dGVybGlzdCBydXN0IGJpbmRpbmdzIHRo
YXQgd2VyZSByZWNlbnRseSBtZXJnZWQNCj4+PiAgICBpbnRvIGRybS1ydXN0LW5leHQNCj4+PiAg
KiBUaHJvdWdoIGEgRFJNIGhlbHBlciBwcm92aWRlZCBieSBnZW0gc2htZW0sIEFUTSB0aGlzIHdv
dWxkIGJlIGVpdGhlcg0KPj4+ICAgICAtIGBnZW06OnNobWVtOjpCYXNlT2JqZWN0Ojo8VDogRHJp
dmVyT2JqZWN0Pjo6c2dfdGFibGUoKWANCj4+PiAgICAgLSBgZ2VtOjpzaG1lbTo6QmFzZU9iamVj
dDo6PFQ6IERyaXZlck9iamVjdD46Om93bmVkX3NnX3RhYmxlKClgDQo+Pj4gICAgICAgKGJvdGgg
b2YgdGhlc2UganVzdCB1c2UgZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXNfc2d0KCkpDQo+Pj4NCj4+
PiBIb3dldmVyLCBJIGRvbid0IHRoaW5rIHdlIGN1cnJlbnRseSBoYXZlIGFueSBpbnRlcmFjdGlv
bnMgaW4gdGhlIGJpbmRpbmdzDQo+Pj4gd2UndmUgd3JpdHRlbiBzbyBmYXIgYmV0d2VlbiBTR1Rh
YmxlIGFuZCBEbWFCdWYgYW5kIEkgZG9uJ3QgY3VycmVudGx5IGhhdmUgYW55DQo+Pj4gcGxhbnMg
Zm9yIHRoaXMgb24gbXkgcm9hZG1hcC4NCj4+Pg0KPj4+IFJlZ2FyZGluZyBsb2NraW5nOiBJJ20g
bm90IHRvdGFsbHkgc3VyZSB3aGF0IGxvY2tpbmcgeW91J3JlIHJlZmVycmluZyB0byBoZXJlPw0K
Pj4+IFRvIGJlIGNsZWFyIC0gSSdtIGV4cGxpY2l0bHkgL25vdC8gdHJ5aW5nIHRvIGRlYWwgd2l0
aCB0aGUgaXNzdWUgb2Ygc29sdmluZw0KPj4+IGhvdyBvcGVyYXRpb25zIG9uIHRoZSBEbWFCdWYg
b2JqZWN0IHdvcmsgaW4gcnVzdCwgYW5kIGluc3RlYWQgc2ltcGx5IGNvbWUgdXANCj4+PiB3aXRo
IHRoZSBiYXJlIG1pbmltdW0gaW50ZXJmYWNlIG5lZWRlZCBzbyB0aGF0IHdlIGNhbiByZXR1cm4g
YSBEbWFCdWYgY3JlYXRlZA0KPj4+IGZyb20gdGhlIGRybV9nZW1fcHJpbWVfZXhwb3J0KCkgaGVs
cGVyIChlLmcuIGdlbTo6QmFzZU9iamVjdDo6cHJpbWVfZXhwb3J0KCkpDQo+Pj4gZnJvbSBhIGRy
aXZlcidzIGdlbTo6RHJpdmVyT2JqZWN0OjpleHBvcnQoKSBjYWxsYmFjay4gT3IgYWx0ZXJuYXRp
dmVseSwNCj4+PiBkZXN0cm95IGl0IGluIHRoZSBldmVudCB0aGF0IHNhaWQgY2FsbGJhY2sgZmFp
bHMuDQo+Pj4NCj4+PiBVbmxlc3MgdGhlcmUncyBzb21lIGxvY2tpbmcgaW50ZXJhY3Rpb24gSSBt
aXNzZWQgdGhhdCB3ZSBuZWVkIHRvIHNvbHZlIHRvDQo+Pj4gZnVsZmlsbCB0aG9zZSB0d28gZ29h
bHMsIEknbSBub3QgYXdhcmUgb2YgYW55IHJ1c3QgZHJpdmVyIHRoYXQgbmVlZHMgYW55dGhpbmcN
Cj4+PiBiZXlvbmQgdGhhdCBqdXN0IHlldC4gQXMgc3VjaCwgSSBhc3N1bWVkIHRoaXMgaW50ZXJm
YWNlIHdvdWxkIHRvdWNoIGEgc21hbGwNCj4+PiBlbm91Z2ggc3VyZmFjZSBvZiB0aGUgZG1hLWJ1
ZiBBUEkgdGhhdCBpdCBzaG91bGRuJ3Qgc2V0IGFueSBjb25jcmV0ZQ0KPj4+IHJlcXVpcmVtZW50
cyBvbiBob3cgYSBmdWxseS1mbGVkZ2VkIGRtYS1idWYgYXBpIGluIHJ1c3Qgd291bGQgd29yayBp
biB0aGUNCj4+PiBmdXR1cmUuIEFuZCBhdCB0aGUgc2FtZSB0aW1lLCBzdGlsbCBhbGxvdyB1cyB0
byBtb3ZlIGZvcndhcmQgd2l0aCB0aGUgc2htZW0NCj4+PiBiaW5kaW5ncywgYW5kIG1ha2Ugc3Vy
ZSB0aGF0IHRoZSBzdXJmYWNlIGFyZWEgb2YgdGhlIHN0dWIgQVBJIGlzIHNtYWxsIGVub3VnaA0K
Pj4+IHRoYXQgYWRkaW5nIHRoZSByZXN0IG9mIHRoZSBmdW5jdGlvbmFsaXR5IHRvIGl0IGxhdGVy
IGRvZXNuJ3QgcmVxdWlyZSBhbnkgbm9uLQ0KPj4+IHRyaXZpYWwgY2hhbmdlcyB0byBjdXJyZW50
IHVzZXJzLg0KPj4+DQo+Pj4+DQo+Pj4+IFJlZ2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+Pj4N
Cj4+Pj4+DQo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29t
Pg0KPj4+Pj4gUmV2aWV3ZWQtYnk6IERhbmllbCBBbG1laWRhIDxkYW5pZWwuYWxtZWlkYUBjb2xs
YWJvcmEuY29tPg0KPj4+Pj4NCj4+Pj4+IC0tLQ0KPj4+Pj4gVjM6DQo+Pj4+PiAqIFJlbmFtZSBh
c19yZWYoKSB0byBmcm9tX3JhdygpDQo+Pj4+PiBWNDoNCj4+Pj4+ICogQWRkIG1pc3NpbmcgcGVy
aW9kIHRvIHJ1c3Rkb2MgYXQgdG9wIG9mIGZpbGUNCj4+Pj4+DQo+Pj4+PiAgcnVzdC9rZXJuZWwv
ZG1hX2J1Zi5ycyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysN
Cj4+Pj4+ICBydXN0L2tlcm5lbC9saWIucnMgICAgIHwgIDEgKw0KPj4+Pj4gIDIgZmlsZXMgY2hh
bmdlZCwgNDEgaW5zZXJ0aW9ucygrKQ0KPj4+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBydXN0L2tl
cm5lbC9kbWFfYnVmLnJzDQo+Pj4+Pg0KPj4+Pj4gZGlmZiAtLWdpdCBhL3J1c3Qva2VybmVsL2Rt
YV9idWYucnMgYi9ydXN0L2tlcm5lbC9kbWFfYnVmLnJzDQo+Pj4+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NA0KPj4+Pj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNTBiZTNlNGRkNDA5OA0KPj4+Pj4gLS0t
IC9kZXYvbnVsbA0KPj4+Pj4gKysrIGIvcnVzdC9rZXJuZWwvZG1hX2J1Zi5ycw0KPj4+Pj4gQEAg
LTAsMCArMSw0MCBAQA0KPj4+Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
DQo+Pj4+PiArDQo+Pj4+PiArLy8hIERNQSBidWZmZXIgQVBJLg0KPj4+Pj4gKy8vIQ0KPj4+Pj4g
Ky8vISBDIGhlYWRlcjogW2BpbmNsdWRlL2xpbnV4L2RtYS1idWYuaGBdKHNyY3RyZWUvaW5jbHVk
ZS9saW51eC9kbWEtYnVmLmgpDQo+Pj4+PiArDQo+Pj4+PiArdXNlIGJpbmRpbmdzOw0KPj4+Pj4g
K3VzZSBrZXJuZWw6OnR5cGVzOjoqOw0KPj4+Pj4gKw0KPj4+Pj4gKy8vLyBBIERNQSBidWZmZXIg
b2JqZWN0Lg0KPj4+Pj4gKy8vLw0KPj4+Pj4gKy8vLyAjIEludmFyaWFudHMNCj4+Pj4+ICsvLy8N
Cj4+Pj4+ICsvLy8gVGhlIGRhdGEgbGF5b3V0IG9mIHRoaXMgdHlwZSBpcyBlcXVpdmFsZW50IHRv
IHRoYXQgb2YgYHN0cnVjdCBkbWFfYnVmYC4NCj4+Pj4+ICsjW3JlcHIodHJhbnNwYXJlbnQpXQ0K
Pj4+Pj4gK3B1YiBzdHJ1Y3QgRG1hQnVmKE9wYXF1ZTxiaW5kaW5nczo6ZG1hX2J1Zj4pOw0KPj4+
Pj4gKw0KPj4+Pj4gKy8vIFNBRkVUWTogYHN0cnVjdCBkbWFfYnVmYCBpcyB0aHJlYWQtc2FmZQ0K
Pj4+Pj4gK3Vuc2FmZSBpbXBsIFNlbmQgZm9yIERtYUJ1ZiB7fQ0KPj4+Pj4gKy8vIFNBRkVUWTog
YHN0cnVjdCBkbWFfYnVmYCBpcyB0aHJlYWQtc2FmZQ0KPj4+Pj4gK3Vuc2FmZSBpbXBsIFN5bmMg
Zm9yIERtYUJ1ZiB7fQ0KPj4+Pj4gKw0KPj4+Pj4gKyNbZXhwZWN0KHVudXNlZCldDQo+Pj4+PiAr
aW1wbCBEbWFCdWYgew0KPj4+Pj4gKyAgICAvLy8gQ29udmVydCBmcm9tIGEgYCptdXQgYmluZGlu
Z3M6OmRtYV9idWZgIHRvIGEgW2BEbWFCdWZgXS4NCj4+Pj4+ICsgICAgLy8vDQo+Pj4+PiArICAg
IC8vLyAjIFNhZmV0eQ0KPj4+Pj4gKyAgICAvLy8NCj4+Pj4+ICsgICAgLy8vIFRoZSBjYWxsZXIg
Z3VhcmFudGVlcyB0aGF0IGBzZWxmX3B0cmAgcG9pbnRzIHRvIGEgdmFsaWQgaW5pdGlhbGl6ZWQg
YHN0cnVjdCBkbWFfYnVmYCBmb3IgdGhlDQo+Pj4+PiArICAgIC8vLyBkdXJhdGlvbiBvZiB0aGUg
bGlmZXRpbWUgb2YgYCdhYCwgYW5kIHByb21pc2VzIHRvIG5vdCB2aW9sYXRlIHJ1c3QncyBkYXRh
IGFsaWFzaW5nIHJ1bGVzDQo+Pj4+PiArICAgIC8vLyB1c2luZyB0aGUgcmVmZXJlbmNlIHByb3Zp
ZGVkIGJ5IHRoaXMgZnVuY3Rpb24uDQo+Pj4+PiArICAgIHB1YihjcmF0ZSkgdW5zYWZlIGZuIGZy
b21fcmF3PCdhPihzZWxmX3B0cjogKm11dCBiaW5kaW5nczo6ZG1hX2J1ZikgLT4gJidhIFNlbGYg
ew0KPj4+Pj4gKyAgICAgICAgLy8gU0FGRVRZOiBPdXIgZGF0YSBsYXlvdXQgaXMgZXF1aXZhbGVu
dCB0byBgZG1hX2J1ZmAgLg0KPj4+Pj4gKyAgICAgICAgdW5zYWZlIHsgJipzZWxmX3B0ci5jYXN0
KCkgfQ0KPj4+Pj4gKyAgICB9DQo+Pj4+PiArDQo+Pj4+PiArICAgIHB1YihjcmF0ZSkgZm4gYXNf
cmF3KCZzZWxmKSAtPiAqbXV0IGJpbmRpbmdzOjpkbWFfYnVmIHsNCj4+Pj4+ICsgICAgICAgIHNl
bGYuMC5nZXQoKQ0KPj4+Pj4gKyAgICB9DQo+Pj4+PiArfQ0KPj4+Pj4gZGlmZiAtLWdpdCBhL3J1
c3Qva2VybmVsL2xpYi5ycyBiL3J1c3Qva2VybmVsL2xpYi5ycw0KPj4+Pj4gaW5kZXggZmNmZmMz
OTg4YTkwMy4uNTkyNDJkODNlZmUyMSAxMDA2NDQNCj4+Pj4+IC0tLSBhL3J1c3Qva2VybmVsL2xp
Yi5ycw0KPj4+Pj4gKysrIGIvcnVzdC9rZXJuZWwvbGliLnJzDQo+Pj4+PiBAQCAtODEsNiArODEs
NyBAQA0KPj4+Pj4gIHB1YiBtb2QgZGV2aWNlX2lkOw0KPj4+Pj4gIHB1YiBtb2QgZGV2cmVzOw0K
Pj4+Pj4gIHB1YiBtb2QgZG1hOw0KPj4+Pj4gK3B1YiBtb2QgZG1hX2J1ZjsNCj4+Pj4+ICBwdWIg
bW9kIGRyaXZlcjsNCj4+Pj4+ICAjW2NmZyhDT05GSUdfRFJNID0gInkiKV0NCj4+Pj4+ICBwdWIg
bW9kIGRybTsNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
