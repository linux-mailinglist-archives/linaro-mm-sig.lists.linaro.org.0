Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B0805A1296A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 18:09:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BAF51445FB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 17:09:52 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2061.outbound.protection.outlook.com [40.107.92.61])
	by lists.linaro.org (Postfix) with ESMTPS id B512644126
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 17:09:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b="REm/Xuwu";
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.92.61 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8Z9ovHtlUW025PX9QeTLWg2a6SyJUx1h8AcnaLM6bVXqQ3O/asWQY8+eNUjNrBM92S2kkRn/OszpTmQw86xCJOYyNjoKqulSaKAuFy2Oq8Xuo6YrGDM5VTnKgBzP13TfKXOzYLLi53n4M9xJBvusim1h39eQp50xs4vvHvjHkda5YsTTlUZTjLV9Tvew1TKRu2iajwokar3DJnwt6QfKjJQ9nAjwswTE/kR67+Blpw8hSM1h87DeJBjiEO2WRDBYjW/EEVVQpNLgPDX5t259NuLZh9Nvx/1JGccRIddraCC3aMtmV19be+nJxXporAIdU/di/zvq/AXQ1SeJO6zCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GRV2I4g1XhjgIH1bALDay4cetipGa04+L4tY481nvfk=;
 b=ZnvzNrBX+GqvIyCG2ar+eB6E0ZuikTEPeh+cUynDM9oEa0SkxTGfdspDXvC1T0cNV2wMM9/pRIBDYRZ4rFH1zvJAuLDtBDqTq/4Wzx+8MljFWwi3HPf0nxcWeluBNeIpOCcFLDeu5nVMr2bwOkolbOrC6rMbbfATrqylaiFhQnobQ7mq6LJDPTccCum5YOe/R8XbU54bBmoSiA/Ag8wbdnjs08TjWNRNhEemR2RnJQdxLmSjHJC34lL6x4n5Os55LkUZPpHMbQSyihvqi8jyCnpjVp2yna7oqhQGKjSALJCjke6pMa8O2UZ+O4RQJtSVFggajN6afAdMD79pfHLR4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GRV2I4g1XhjgIH1bALDay4cetipGa04+L4tY481nvfk=;
 b=REm/XuwuHJQ5H/yX8p2Askz6auwHR1g/anGWM5uEkxH1KbyiddZsOtXYpqJnkvxTHF9qMCx9ro/NT+lam2hvTOCqA3tisl2DwUA46rXQ/PX0NLmX9qnwmnHrn3Ga3cOD0DGF90dcUk9+s2nCJ4nYDJfKT80UAmHMTma3f9HcWXd5iGjHYiKevTWgCghS17oO+UOV61lDLq32yf/9RlKfuW7l/16l6QynIfwjpkhCahC3C1a/baZtZFUlwUOPQ3ArwSBVvQpZvPz3svQTSivnejrMMxYXaNGFUgiOIaA+iGp+EKioF+//0zIBmM3WoEnsG+muJeF85BCLLLV1rU55eQ==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by DM4PR12MB5772.namprd12.prod.outlook.com (2603:10b6:8:63::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Wed, 15 Jan
 2025 17:09:43 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 17:09:43 +0000
Date: Wed, 15 Jan 2025 13:09:42 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250115170942.GT5556@nvidia.com>
References: <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
 <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
 <86afb69a-79bd-4719-898e-c6c2e62103f7@amd.com>
 <20250115151056.GS5556@nvidia.com>
 <6f7a14aa-f607-45f9-9e15-759e26079dec@amd.com>
Content-Disposition: inline
In-Reply-To: <6f7a14aa-f607-45f9-9e15-759e26079dec@amd.com>
X-ClientProxiedBy: BLAPR03CA0105.namprd03.prod.outlook.com
 (2603:10b6:208:32a::20) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|DM4PR12MB5772:EE_
X-MS-Office365-Filtering-Correlation-Id: d488f33d-ee94-433f-1306-08dd358767af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bm0xZTcrQjZhZWk2UDZ4L0pVVjFMK2dsRnVObklnUmVGcnFRYkcrZHdTa3Na?=
 =?utf-8?B?anBqeVZyVmswaDBvS1o5MUtrdUd3NDlJbENhTkVoNGI2bmRQTEdnVFpCN3Ix?=
 =?utf-8?B?UWtwRndmRDd5MFcxOHgwL2RXSTZkZk02SUNscE9uTVJnclZkelpRZ0p5ekpy?=
 =?utf-8?B?RDNaMWNDU1VQaEtaTWtsaDJzSkRvQnNZbDFIUzljSmJmdEppMWNsblRxdm5F?=
 =?utf-8?B?QkFlUFNSQjZNeDFWck85TFhzdTVXcmV5K05DMXdxRmppYy92R1V6cXo4a0U5?=
 =?utf-8?B?NVl5eE1jK2ZQbUhKcllwdXl2UE9VbE5PUDN5N2Y3VE5CeU05RDZyVk1JbmFM?=
 =?utf-8?B?eVdKTGJsdVhzNnRRR0RJdEhxYUlJZnYveUJlMjZrUGh4eVpQeUJsVHhMeDRT?=
 =?utf-8?B?cE4zTXJQREg4WVFmamRoWkVneWwyYzlaWWdHUzdiQ2poazk2THdVMldTUUZk?=
 =?utf-8?B?TnZpS3huS0Y1WWZYUS81MU1Sd0htVTV4SWhKYzB2blJBNzNTNXVaV25kaS9T?=
 =?utf-8?B?RnFQNm9heDZzZm43Z3B0TENDSHBCOUJGd1NRNGhYZnBjSlVjWjJ6bUgxMFcy?=
 =?utf-8?B?RzJydTdGU0lXS0QvcVEyOXRnWWlodk45THZGcWYyKzJYMzBHV0Z0VURTY2xO?=
 =?utf-8?B?U0MxNXRYMjBlT2owaERNQTU5RUtCSlRCWG1Nd3p4WEFuNU4yUDBsVUkwd0s4?=
 =?utf-8?B?Qmc2U09UU05rRllKQXFycDY2eTlxWUVWcWlrNFRWSnJWbkV3Z25sbmI1SG9q?=
 =?utf-8?B?WWFkcSs3bUdwSTJvVlY4NndRZzNrUHZsWmRkNmhTQnZ0MXl0SDVYNlEzckZK?=
 =?utf-8?B?TEdZSVVmS0phdUJTN2NYRGFIaGNmNUxvb2NkVnAvZEFFU0lsMUd2NU9JdWJQ?=
 =?utf-8?B?enQ2KzMrQm0vWWtLc0U1RE40VzBQWjFNUzg1amNWS0h5cWdvTjVoMjh0YUFM?=
 =?utf-8?B?dTh2UWNkdjFrYjFhZXVZVURlY3VtTzNWTWJhUkZNbXc4Zm1PRCtaSERtRHY0?=
 =?utf-8?B?bUhPeThTTnE3KzNaUVUrWHhBTWJub3hlVU1ySjkzWmdsZWRIdFZpKzN1YkFZ?=
 =?utf-8?B?Qk9JcG5Cd1FacEFYUk5sQjk0dkowaE4rM2lLNmIvQXUyTVc1dk0vNHJjN2Zu?=
 =?utf-8?B?bDd0Z1RsSjhlTDZUY3ptazdsZFBpWVlwbUJ1NEY4Z2ZnZnp2Nk0xbGlkajcv?=
 =?utf-8?B?UWphSFFiamtFaFVvNEtXZm5kQWx4c1U4dVpDeFk0cVRBMVB2TFNDSHNMU2d1?=
 =?utf-8?B?c3AyMFVDQWlycWRHZHlPam9BUUFkZjlSWU9Remh4THVXcFM0N3VzS2VLOTFz?=
 =?utf-8?B?NHE1Z0NUZVFkUng1dUpDbFJzbGIxOTNTSGJ6clVCbURHWlFJL2E4OFQyeVJW?=
 =?utf-8?B?dWlOd2pDU3NhdmNzSnVTRms4dmxRZE5md01BQ2hMenFMcjk4WkVEd3ovaE5m?=
 =?utf-8?B?NGV4OHJ5VmcyS3h0VGZFeEdTeUUzeWxzb2JTaWthZWtITHg4YjYzOVFBcmd6?=
 =?utf-8?B?RklZMlNNakhQR0VYRCtLeGxuMDMyeGt6SWJNNHQ2R2x4aHhoUUJoMFZtcW9t?=
 =?utf-8?B?enhIRjcwdk9qUk5lYzh2M2hsSWw3OUs2MGxSU3UwL1QzVXArOWFHWERHb2Ji?=
 =?utf-8?B?VzI4NnNSb0JpUXZGdWkyN0lESkgvcHExemwxeXhLWEhmZFRiQmdONm9udGp6?=
 =?utf-8?B?bFFLelFmNjFRL1liOXF2QzUzcXgyVzJxYnNyMmxuQlNwZXI2dUtXZERCM3Ji?=
 =?utf-8?B?S1BtbmVaTjFyTjBuaE5rcWE5a2xqMFR3eS8zTW9wZVkzSm4zamhBMm1rSi8w?=
 =?utf-8?B?U256Q3BQQjFMZGlwTzJ6Q3hOVVJHaStIMU1BN3UvQVI4WHUrYVRpbEFqQXdC?=
 =?utf-8?Q?PnERupmBGdVIu?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WnNGdENscHhERytBY3RKUTJGeGhXcXEva1FDQ3dDU0ZvcVBldHRDbC9oeisw?=
 =?utf-8?B?VDJuemE1eVlrRi9pWE12cFhQWXduanBndVI4bjBLQmljc1hrM1cxYTVJd3cy?=
 =?utf-8?B?bERHZkxnR2pISXE2dEpHcnZ1VTJFeFVLbittVEJTQ2g1emg3MmFXRmxXaVl1?=
 =?utf-8?B?akVsci9VRy9VcmwyK0Exb29EQ2JaSGs1QmlEa3BjT0FLcGpIMXpmUGF6RXZs?=
 =?utf-8?B?Nmlqa000NkNFenAwVTRLRzJINXVpWkI4UW9SRVpVckY4T1VrTEtHYlNHWjlR?=
 =?utf-8?B?WXU0anlzNGxjZW1XRWxseHNiaTQ2OFlFc2JteHU2OGRFMkpadWZhQitpcEw3?=
 =?utf-8?B?M2Y1SGprQlBkRlIrTGFrbFRuOTJtbGxlRXg1TTVWZGM1MjluU1FITXNwZktW?=
 =?utf-8?B?V05QSGllUUdVRS9yWFJpQmJsMC9nS2tkZXJPVVp2QzZnYUROSU11UXlRdW9x?=
 =?utf-8?B?ZXMvRkJnUzNMTllOVFh1b1VVNnBoOWN3NGVkU3J0cVRzcEFhUTM5dEZuR09T?=
 =?utf-8?B?Z1FYc1V3R1FMaE9Kc0toK1QyWUlNaTgyVjAzamhVUHVRZ0VPMXRETUpVYTJK?=
 =?utf-8?B?K0phczJNRm1qd3IwS1NoSHptSFBCOS82aTM3L216eFBrOGdjSnRpOUFHa0dE?=
 =?utf-8?B?Y1hpb2w2YVFXSTRFS2R6QmhOR3kyQzFubUN6K25CWUVEb20yQnJIcDBjMlFw?=
 =?utf-8?B?dmhnaEVONGxpUlQzcUFYcDYzRnZIQ3dBVTJYUXhjckRQNklHR0ZMR0xJK1NM?=
 =?utf-8?B?Q25pbExaS0c1emp6NDNwdys0Q2tHckJRVk5seldESk5TaVBMdXN1MjFVSUNK?=
 =?utf-8?B?WHY3V3RtZ3pNb0x4NnFIZTJJb1Y1RWRLNDZWMFg5QmVQUG9PbEQvYWtGOHB1?=
 =?utf-8?B?T1plSyswL0p0ZWJYWUpVcjBOaXF6bFdnaE1jK1BHUi84RGlkK254YllTYTVq?=
 =?utf-8?B?Y05wN20rN1ErbEZVWmRvM1MrNTdjTkwvdDVVQzRoMU5oRUIvL2o3WXBaQjJa?=
 =?utf-8?B?elVabW4vNTdVSU44L05oZUp1bkFxV05IQ2Y1ejFCd2Z2Q1JvYTk0K09ZMkgz?=
 =?utf-8?B?ZXJQeFR5V0hveUc1N2FRMXJESVFzRWtXb3BIRGZOTDlHeWtyQndSMFZ3VEhQ?=
 =?utf-8?B?V1BQemVIejZlTnlBZHY5eTdZM0xGNHJCNGs5Q0VuTHU1NVF0aThHcXpCc0hs?=
 =?utf-8?B?bmtyNUpNM1phSWZPK2VLaFk2UTlRQ3lBWVozdmJkcHpTMGY1azhRdWJ2dXV2?=
 =?utf-8?B?N0lVVFNRTTBySldhaytWN3NYbkJTWmV0b1FiYVg0UkxNVUhRbEcyK2RVNEQy?=
 =?utf-8?B?V2xhRWpRaU9tbnRsamhmVGNNNVZjU3EvbFJRcmd2KzJjeGcyYlJJN2M5T09a?=
 =?utf-8?B?R09JbnBucmFkTGQ2YUFldlpBYmx6bWtGV0cyQ0NrS2E0eHQxeWw0Q1k5d2RX?=
 =?utf-8?B?TXluMHo3U1o2WUtvVUZqL1BudG1kSVpabzhDU1NQeFE5NDJhSnI4NDlNMEZR?=
 =?utf-8?B?RUg4NUF2WUxRKzB1c2JvdlZKZW14WUMyc3crZXZwdDM4TUNSNVpKMHBueTVq?=
 =?utf-8?B?ZW0vb3pOcmtzZURQN3pnK3YycDJFbTRac0VwcWJvMnozVUtLYUM3UW5MNk84?=
 =?utf-8?B?OStmOUJ1YktCQjFkb2dxTWVtTks3dkpuMkdENFFQMm01Z1dRTTVXSmhRcG5L?=
 =?utf-8?B?WFpGNW1BUitPSnl2VUJxSW1EQlpTK1IxMmdpODI1M3FmMlE5djNCWGpCSVJR?=
 =?utf-8?B?dSs0d3NZUEV0VXE1U0FITUJrL3lOOXJHYTBTTU1WN1B4ay9TOGozcHRvWUZG?=
 =?utf-8?B?bmU0d3ZIT3BCSm50K1NwZTlXSlRxMDVnL3hkbHlBUWlmT3I1bVYvaW1tZ3lX?=
 =?utf-8?B?elhiTmRMMDU2QlREUjJKK3JVWUF0M2x6QklVVHNYVVl3QTZKT2c0TDRUZ2xu?=
 =?utf-8?B?WG5HemVTSnh0Ump2RVF0U2tmaDc4LzV6dDUzdzdoVDUrbk5pUXpsaXhYUlEr?=
 =?utf-8?B?UHN2ZjJyN2xuR1pITGNOTkxRL1dlVEYxNERHM0t4NHhIUVhrU3VBaG83YmZG?=
 =?utf-8?B?OC96Ymw1dVlDbktBS1VWa0tQWG9lWTk0eEtmazBUb0VvcnJYbGpjekh2WDZW?=
 =?utf-8?Q?nPTg=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d488f33d-ee94-433f-1306-08dd358767af
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 17:09:43.4746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JkFaro6UDezef9l1tkLG98IAkTfqYueSAX8xAigpPkDR8IbVXSJwiUHTf8mWbtHz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5772
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B512644126
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.92.61:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.61:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: QXQFMC6VNQL5YCGMDLN53L53DHDFPMQS
X-Message-ID-Hash: QXQFMC6VNQL5YCGMDLN53L53DHDFPMQS
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QXQFMC6VNQL5YCGMDLN53L53DHDFPMQS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBKYW4gMTUsIDIwMjUgYXQgMDU6MzQ6MjNQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gICAgR3JhbnRlZCwgbGV0IG1lIHRyeSB0byBpbXByb3ZlIHRoaXMuDQo+ICAg
IEhlcmUgaXMgYSByZWFsIHdvcmxkIGV4YW1wbGUgb2Ygb25lIG9mIHRoZSBpc3N1ZXMgd2UgcmFu
IGludG8gYW5kIHdoeQ0KPiAgICBDUFUgbWFwcGluZ3Mgb2YgaW1wb3J0ZXJzIGFyZSByZWRpcmVj
dGVkIHRvIHRoZSBleHBvcnRlci4NCj4gICAgV2UgaGF2ZSBhIGdvb2QgYnVuY2ggb2YgZGlmZmVy
ZW50IGV4cG9ydGVycyB3aG8gdHJhY2sgdGhlIENQVSBtYXBwaW5ncw0KPiAgICBvZiB0aGVpciBi
YWNraW5nIHN0b3JlIHVzaW5nIGFkZHJlc3Nfc3BhY2Ugb2JqZWN0cyBpbiBvbmUgd2F5IG9yDQo+
ICAgIGFub3RoZXIgYW5kIHRoZW4gdXNlcyB1bm1hcF9tYXBwaW5nX3JhbmdlKCkgdG8gaW52YWxp
ZGF0ZSB0aG9zZSBDUFUNCj4gICAgbWFwcGluZ3MuDQo+ICAgIEJ1dCB3aGVuIGltcG9ydGVycyBn
ZXQgdGhlIFBGTnMgb2YgdGhlIGJhY2tpbmcgc3RvcmUgdGhleSBjYW4gbG9vaw0KPiAgICBiZWhp
bmQgdGhlIGN1cnRhaW4gYW5kIGRpcmVjdGx5IGluc2VydCB0aGlzIFBGTiBpbnRvIHRoZSBDUFUg
cGFnZQ0KPiAgICB0YWJsZXMuDQo+ICAgIFdlIGhhZCBsaXRlcmFsbHkgdG9ucyBvZiBjYXNlcyBs
aWtlIHRoaXMgd2hlcmUgZHJpdmVycyBkZXZlbG9wZXJzIGNhdXNlDQo+ICAgIGFjY2VzcyBhZnRl
ciBmcmVlIGlzc3VlcyBiZWNhdXNlIHRoZSBpbXBvcnRlciBjcmVhdGVkIGEgQ1BVIG1hcHBpbmdz
IG9uDQo+ICAgIHRoZWlyIG93biB3aXRob3V0IHRoZSBleHBvcnRlciBrbm93aW5nIGFib3V0IGl0
Lg0KPiAgICBUaGlzIGlzIGp1c3Qgb25lIGV4YW1wbGUgb2Ygd2hhdCB3ZSByYW4gaW50by4gQWRk
aXRpb25hbCB0byB0aGF0DQo+ICAgIGJhc2ljYWxseSB0aGUgd2hvbGUgc3luY2hyb25pemF0aW9u
IGJldHdlZW4gZHJpdmVycyB3YXMgb3ZlcmhhdWxlZCBhcw0KPiAgICB3ZWxsIGJlY2F1c2Ugd2Ug
Zm91bmQgdGhhdCB3ZSBjYW4ndCB0cnVzdCBpbXBvcnRlcnMgdG8gYWx3YXlzIGRvIHRoZQ0KPiAg
ICByaWdodCB0aGluZy4NCg0KQnV0IHRoaXMsIGZ1bmRhbWVudGFsbHksIGlzIGltcG9ydGVycyBj
cmVhdGluZyBhdHRhY2htZW50cyBhbmQgdGhlbg0KKmlnbm9yaW5nIHRoZSBsaWZldGltZSBydWxl
cyBvZiBETUFCVUYqLiBJZiB5b3UgY3JlYXRlZCBhbiBhdHRhY2htZW50LA0KZ290IGEgbW92ZSBh
bmQgKmlnbm9yZWQgdGhlIG1vdmUqIGJlY2F1c2UgeW91IHB1dCB0aGUgUEZOIGluIHlvdXIgb3du
DQpWTUEsIHRoZW4geW91IGFyZSBub3QgZm9sbG93aW5nIHRoZSBhdHRhY2htZW50IGxpZmV0aW1l
IHJ1bGVzIQ0KDQpUbyBpbXBsZW1lbnQgdGhpcyBzYWZlbHkgdGhlIGRyaXZlciB3b3VsZCBuZWVk
IHRvIHVzZQ0KdW5tYV9tYXBwaW5nX3JhbmdlKCkgb24gdGhlIGRyaXZlciBWTUEgaW5zaWRlIHRo
ZSBtb3ZlIGNhbGxiYWNrLCBhbmQNCmhvb2sgaW50byB0aGUgVk1BIGZhdWx0IGNhbGxiYWNrIHRv
IHJlLWF0dGFjaCB0aGUgZG1hYnVmLg0KDQpUaGlzIGlzIHdoZXJlIEkgZ2V0IGludG8gdHJvdWJs
ZSB3aXRoIHlvdXIgYXJndW1lbnQuIEl0IGlzIG5vdCB0aGF0DQp0aGUgQVBJIGhhcyBhbiBpc3N1
ZSwgb3IgdGhhdCB0aGUgcnVsZXMgb2YgdGhlIEFQSSBhcmUgbm90IGxvZ2ljYWwgYW5kDQpmdW5j
dGlvbmFsLg0KDQpZb3UgYXJlIGFyZ3VpbmcgdGhhdCBldmVuIGEgbG9naWNhbCBhbmQgZnVuY3Rp
b25hbCBBUEkgd2lsbCBiZQ0KbWlzLXVzZWQgYnkgc29tZSBwZW9wbGUgYW5kIHRoYXQgcmV2aWV3
ZXJzIHdpbGwgbm90IGNhdGNoDQppdC4NCg0KSG9uZXN0bHksIEkgZG9uJ3QgdGhpbmsgdGhhdCBp
cyBjb25zaXN0ZW50IHdpdGggdGhlIGtlcm5lbCBwaGlsb3NvcGh5Lg0KDQpXZSBzaG91bGQgZG8g
b3VyIGJlc3QgdG8gbWFrZSBBUElzIHRoYXQgYXJlIGhhZCB0byBtaXMtdXNlLCBidXQgaWYgd2UN
CmNhbid0IGFjaGlldmUgdGhhdCBpdCBkb2Vzbid0IG1lYW4gd2Ugc3RvcCBhbmQgZ2l2ZSB1cCBv
biBwcm9ibGVtcywNCndlIGdvIGludG8gdGhlIHdvcmxkIG9mIEFQSXMgdGhhdCBjYW4gYmUgbWlz
LXVzZWQgYW5kIHdlIGFyZSBzdXBwb3NlZA0KdG8gcmVseSBvbiB0aGUgcmV2aWV3ZXIgc3lzdGVt
IHRvIGNhdGNoIGl0Lg0KDQo+ICAgIFlvdSBjYW4gYWxyZWFkeSB0dXJuIGJvdGggYSBURUUgYWxs
b2NhdGVkIGJ1ZmZlciBhcyB3ZWxsIGFzIGEgbWVtZmQNCj4gICAgaW50byBhIERNQS1idWYuIFNv
IGJhc2ljYWxseSBURUUgYW5kIG1lbWZkIGFscmVhZHkgcHJvdmlkZXMgZGlmZmVyZW50DQo+ICAg
IGludGVyZmFjZXMgd2hpY2ggZ28gYmV5b25kIHdoYXQgRE1BLWJ1ZiBkb2VzIGFuZCBhbGxvd3Mu
DQoNCj4gICAgSW4gb3RoZXIgd29yZHMgaWYgeW91IHdhbnQgdG8gZG8gdGhpbmdzIGxpa2UgZGly
ZWN0IEkvTyB0byBibG9jayBvcg0KPiAgICBuZXR3b3JrIGRldmljZXMgeW91IGNhbiBtbWFwKCkg
eW91ciBtZW1mZCBhbmQgZG8gdGhpcyB3aGlsZSBhdCB0aGUgc2FtZQ0KPiAgICB0aW1lIHNlbmQg
eW91ciBtZW1mZCBhcyBETUEtYnVmIHRvIHlvdXIgR1BVLCBWNEwgb3IgbmV1cmFsIGFjY2VsZXJh
dG9yLg0KPiAgICBXb3VsZCB0aGlzIGJlIGEgd2F5IHlvdSBjb3VsZCB3b3JrIHdpdGggYXMgd2Vs
bD8gDQoNCkkgZ3Vlc3MsIGJ1dCB0aGlzIHN0aWxsIHJlcXVpcmVzIGNyZWF0aW5nIGEgZG1hYnVm
MiB0eXBlIHRoaW5nIHdpdGgNCnZlcnkgc2ltaWxhciBzZW1hbnRpY3MgYW5kIHRoZW4gc2hpbW1p
bmcgZG1hYnVmMiB0byAxIGZvciBEUk0gY29uc3VtZXJzLg0KDQpJIGRvbid0IHNlZSBob3cgaXQg
YWRkcmVzc2VzIHlvdXIgZnVuZGFtZW50YWwgY29uY2VybiB0aGF0IHRoZQ0Kc2VtYW50aWNzIHdl
IHdhbnQgYXJlIGFuIEFQSSB0aGF0IGlzIHRvbyBlYXN5IGZvciBkcml2ZXJzIHRvIGFidXNlLg0K
DQpBbmQgYmVpbmcgbW9yZSBmdW5jdGlvbmFsIGFuZCBlZmZpY2llbnQgd2UnZCBqdXN0IHNlZSBw
ZW9wbGUgd2FudGluZw0KdG8gdXNlIGRtYWJ1ZjIgZGlyZWN0bHkgaW5zdGVhZCBvZiBib3RoZXJp
bmcgd2l0aCAxLg0KDQo+ICAgIHNlcGFyYXRlIGZpbGUgZGVzY3JpcHRvciByZXByZXNlbnRpbmcg
dGhlIHByaXZhdGUgTU1JTyB3aGljaCBpb21tdWZkDQo+ICAgIGFuZCBLVk0gdXNlcyBidXQgeW91
IGNhbiB0dXJuIGl0IGludG8gYSBETUEtYnVmIHdoZW5ldmVyIHlvdSBuZWVkIHRvDQo+ICAgIGdp
dmUgaXQgdG8gYSBETUEtYnVmIGltcG9ydGVyPw0KDQpXZWxsLCBpdCB3b3VsZCBlbmQgdXAganVz
dCBiZWluZyB1c2VkIGV2ZXJ5d2hlcmUuIEkgdGhpbmsgb25lIHBlcnNvbg0Kd2FudGVkIHRvIHVz
ZSB0aGlzIHdpdGggRFJNIGRyaXZlcnMgZm9yIHNvbWUgcmVhc29uLCBidXQgUkRNQSB3b3VsZA0K
dXNlIHRoZSBkbWFidWYyIGRpcmVjdGx5IGJlY2F1c2UgaXQgd2lsbCBiZSBtdWNoIG1vcmUgZWZm
aWNpZW50IHRoYW4NCnVzaW5nIHNjYXR0ZXJsaXN0Lg0KDQpIb25lc3RseSwgSSdkIG11Y2ggcmF0
aGVyIGV4dGVuZCBkbWFidWYgYW5kIHNlZSBEUk0gaW5zdGl0dXRlIHNvbWUNCnJ1bGUgdGhhdCBE
Uk0gZHJpdmVycyBtYXkgbm90IHVzZSBYWVogcGFydHMgb2YgdGhlIGltcHJvdmVtZW50LiBMaWtl
DQptYXliZSB3ZSBjb3VsZCB1c2Ugc29tZSBzeW1ib2wgbmFtZXNwYWNlcyB0byByZWFsbHkgZW5m
b3JjZSBpdA0KZWcuIE1PRFVMRV9JTVBPUlRfTlMoRE1BQlVGX05PVF9GT1JfRFJNX1VTQUdFKQ0K
DQpTb21lIG9mIHRoZSBpbXByb3ZlbWVudHMgd2Ugd2FudCBsaWtlIHRoZSByZXZva2UgcnVsZXMg
Zm9yIGxpZmV0aW1lDQpzZWVtIHRvIGJlIGFncmVlYWJsZS4NCg0KQmxvY2sgdGhlIEFQSSB0aGF0
IGdpdmVzIHlvdSB0aGUgbm9uLXNjYXR0ZXJsaXN0IGF0dGFjaG1lbnQuIE9ubHkNClZGSU8vUkRN
QS9rdm0vaW9tbXVmZCB3aWxsIGdldCB0byBpbXBsZW1lbnQgaXQuDQoNCj4gSW4gdGhpcyBjYXNl
IFh1IGlzIGV4cG9ydGluZyBNTUlPIGZyb20gVkZJTyBhbmQgaW1wb3J0aW5nIHRvIEtWTSBhbmQN
Cj4gaW9tbXVmZC4NCj4gDQo+ICAgIFNvIGJhc2ljYWxseSBhIHBvcnRpb24gb2YgYSBQQ0llIEJB
UiBpcyBpbXBvcnRlZCBpbnRvIGlvbW11ZmQ/DQoNCkFuZCBLVk0uIFdlIG5lZWQgdG8gZ2V0IHRo
ZSBDUFUgYWRkcmVzcyBpbnRvIEtWTSBhbmQgSU9NTVUgcGFnZQ0KdGFibGVzLiBJdCBtdXN0IGdv
IHRocm91Z2ggYSBwcml2YXRlIEZEIHBhdGggYW5kIG5vdCBhIFZNQSBiZWNhdXNlIG9mDQp0aGUg
Q0MgcnVsZXMgYWJvdXQgbWFjaGluZSBjaGVjayBJIG1lbnRpb25lZCBlYXJsaWVyLiBUaGUgcHJp
dmF0ZSBGRA0KbXVzdCBoYXZlIGEgbGlmZXRpbWUgbW9kZWwgdG8gZW5zdXJlIHdlIGRvbid0IFVB
RiB0aGUgUENJZSBCQVIgbWVtb3J5Lg0KDQpTb21lb25lIGVsc2UgaGFkIHNvbWUgdXNlIGNhc2Ug
d2hlcmUgdGhleSB3YW50ZWQgdG8gcHV0IHRoZSBWRklPIE1NSU8NClBDSWUgQkFSIGludG8gYSBE
TUFCVUYgYW5kIHNoaXAgaXQgaW50byBhIEdQVSBkcml2ZXIgZm9yDQpzb21ldGhpbmdzb21ldGhp
bmcgdmlydHVhbGl6YXRpb24gYnV0IEkgZGlkbid0IHVuZGVyc3RhbmQgaXQuDQoNCj4gICAgTGV0
J3MganVzdCBzYXkgdGhhdCBib3RoIHRoZSBBUk0gZ3V5cyBhcyB3ZWxsIGFzIHRoZSBHUFUgcGVv
cGxlIGFscmVhZHkNCj4gICAgaGF2ZSBzb21lIHByZXR0eSAiaW50ZXJlc3RpbmciIHdheXMgb2Yg
ZG9pbmcgZGlnaXRhbCByaWdodHMgbWFuYWdlbWVudA0KPiAgICBhbmQgY29udGVudCBwcm90ZWN0
aW9uLg0KDQpXZWxsLCB0aGF0IGlzIFRFRSBzdHVmZiwgVEVFIGFuZCBDQyBhcmUgbm90IHRoZSBz
YW1lIHRoaW5nLCB0aG91Z2gNCnRoZXkgaGF2ZSBzb21lIGhpZ2ggbGV2ZWwgY29uY2VwdHVhbCBv
dmVybGFwLg0KDQpJbiBhIGNlcnRhaW4gc2Vuc2UgQ0MgaXMgYSBURUUgdGhhdCBpcyBidWlsdCB1
c2luZyBLVk0gaW5zdGVhZCBvZiB0aGUNClRFRSBzdWJzeXN0ZW0uIFVzaW5nIEtWTSBhbmQgaW50
ZWdyYXRpbmcgd2l0aCB0aGUgTU0gYnJpbmdzIGEgd2hvbGUNCnNldCBvZiB1bmlxdWUgY2hhbGxl
bmdlcyB0aGF0IFRFRSBnb3QgdG8gYXZvaWQuLiANCg0KSmFzb24NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
