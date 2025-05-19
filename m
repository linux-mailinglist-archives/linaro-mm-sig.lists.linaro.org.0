Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FBEABB662
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 09:48:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A4F41450B7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 May 2025 07:48:19 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2049.outbound.protection.outlook.com [40.107.92.49])
	by lists.linaro.org (Postfix) with ESMTPS id 89F5644654
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 May 2025 07:48:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=e6Myq4A3;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OdO4fgC8YTwEjImNtsXQ4GD2Vken84wUro+QqJIsgrQ1vW02aRJfhCQomSbhHoURosz7u5dG/whiKuXpGkBvxnK26PWUQS1aaHQ9JNhWz8RLH4xEbAfnm5SzXBtYNcGt7b8WfeFPwdHc1gq5ViNgrV4Q9dEqm6zwYTVWmN2BX1M3r6y1vbXcDwXLPyHz9894F96rIrsGhoOKqBok2rhZbeGrVZ3K8gt6v0dri0c9c/S7awf2B2Z5l8npDEb/Q8b6t43VZyc241kQ17C6sY2y/HRpvdY5nUCoOPsG9ICaqjW43pHZr9eS6hSpi7UycmeRevxEdqKN9ThGYM7z2cQyxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uGS+I0gUrH858KODiqzPzYZ8QRhNeLOj4vM38S/2ddI=;
 b=rAuiRVsCYs35nwJ9/nfZRsZWviGeO9B6OWbXjh0joGkhtR7KBmIfGIxs5zZfoy1vubTw5l4zrz2E8QuN8fPDaeHuYS94lwA5eiwwbgCM56FLlmF7hDuzeijopKhCTLqwAM/ubDtb8RgghueObKeCUlbjXThNfU8f6OEjBk+bR5NZaHnOBXlM/5dPVMjhwEcgoF9srl+plxmBfhSqcMZRdemKnfULdfhhR3Tm+6kK+X8OLG5ZLUFx9yYzQNvrHiyfC/6rSFrqMZctciFM6SrAxaVYFDvmFsSmHP0OwONmw54AAaZtzVSbcJRKWIuzrpaHQODSaqwPlitGle0MhcEE5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGS+I0gUrH858KODiqzPzYZ8QRhNeLOj4vM38S/2ddI=;
 b=e6Myq4A3sm4RNfseBeWp1cL0we/RYR8KT1+k8RhSNd/M7BMmhlyrWG7vd4+/iEWaVJwMWH/ujE8HfDVIdSJ4Vstlr5L7cuS0V5Z4wMVMixkvolZyFrMRj0RIEOqqHDO1vUYU79Fc82RIAn6qkloox0Xu/+7UZBm+T52nqj2+kPo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB7207.namprd12.prod.outlook.com (2603:10b6:510:225::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Mon, 19 May
 2025 07:48:06 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Mon, 19 May 2025
 07:48:06 +0000
Message-ID: <a904c0f0-bad6-437d-bd09-309d4fad6731@amd.com>
Date: Mon, 19 May 2025 09:47:58 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
 "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "tjmercier@google.com" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <fdc8f0a2-5b2f-4898-8090-0d7b888c15d8@amd.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
 <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
 <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
 <50092362-4644-4e47-9c63-fc82ba24e516@amd.com>
 <2755aae2f1674b239569bf1acad765dc@honor.com>
 <2487bad4-81d6-4ea2-96a7-a6ac741c9d9c@amd.com>
 <a3f57102bc6e4588bc7659485feadbc1@honor.com>
 <5c11b50c-2e36-4fd5-943c-086f55adffa8@amd.com>
 <e23bfe917c8744aa9162744bdd8ac458@honor.com>
 <772d694e-706a-4d98-a236-43d59094e8d6@amd.com>
 <3d098b2109824738a5d1316bd1a516c1@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3d098b2109824738a5d1316bd1a516c1@honor.com>
X-ClientProxiedBy: FR2P281CA0015.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::25) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB7207:EE_
X-MS-Office365-Filtering-Correlation-Id: ae208d3a-34d9-4015-b635-08dd96a97dc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aGcxejNpZ3RlL1piS0huaitPNHAvMlM3RFZmeEtKTThnZG9HeG1RV2JtTFRw?=
 =?utf-8?B?Z0VpbElVRmxRVDUvZy9BcmRwSGpHTytmbUxtU2tXa25aTEdjWTVkV05yTjB4?=
 =?utf-8?B?Z0xUR2FIbnVVRWtGZGY3VEQ2MFRIRXVtNjQ2dHdiZ1pXWHE3Q0dNRjFlOE5r?=
 =?utf-8?B?ZlFVdlpDNHdHTWdYS05lSURtVDVlMUNaK2JaTnpCNzRhWm1JbVQrcTRDK0R6?=
 =?utf-8?B?eGFNMTl6OFIxRlNsWGVudlV0c2JFSTBMS1pKanBGZW9PRk02TERacGpKQ2dQ?=
 =?utf-8?B?WXJldFNtMk9WRWhNWndUVzBpTDE2S0xuMXM0eWdxZVBDa0xQVjlUTm1YemFh?=
 =?utf-8?B?cmpFRkNONExnL2VPK2JwV3FmRjRmWXhQSWFqVDNIQ3oyS2xKWkJEQmdjTmZn?=
 =?utf-8?B?UURkSlVWZGNSRDRLUDltRVNOaEt6bmpLQnVmOVRyVTlkL3NEY0VCbE93UTRL?=
 =?utf-8?B?NmIwOW1jelRmVWwxTGZQZC9McENXNC9ZTzE0OHV6YjFjUy92Z3pQZDBtMHZP?=
 =?utf-8?B?YkRvR2xnaUJhQVZrQTNkRkpaaVByR3lJMnNPbktieXFNL3hGbjRqcVpScVZ2?=
 =?utf-8?B?OHZ4UEJTakdkaGs2dTMyWXZyQXZpdFpxL1VsMFkzVGs2VkNXVEIxb0ZVZUJl?=
 =?utf-8?B?c01ibWcrN0kwSWdOVi9CWnIzN2dBaDFJdGpWWHJ2Q1c4WmNlY0s0M0hqUkZQ?=
 =?utf-8?B?OGtkZTAzOHo0L3liS3kzbXRJRVF1QTFhVkxYSnZxaUFJazJUWkk1b3NMVUcv?=
 =?utf-8?B?RkpWUy83U3JqMm14RU81NkdQcEgwa3pFZ3p6aWxOZEo3NjJiMEtLZmtiRUVR?=
 =?utf-8?B?ZDNNamZuQUNCZUJpbkxUbDdMVHJMZHRnRjNnZFhuVllXclV1SDlwZE1DTTAw?=
 =?utf-8?B?dFlDeVJjMnpYN2tiUEpSOThEY1c4NkJYZDBPSzZvdG9jTWMzV2tLY21OS2Ix?=
 =?utf-8?B?dkNaMG5hbkJCMGZMYWJSUDBCYWxQdFpiTGFRMHFpdWNtOEFueG9kRmZCMVFD?=
 =?utf-8?B?djd4QUFuVlE0bE0vTFpiQ2Z3RUNHWDVOajIzQzJ6TU1YUnBDenZTWjE2R1k4?=
 =?utf-8?B?ZTVrNlFwQzJLcGE3TFNTN3hCU2tVTzhMcllsdmY5NXhKMmtuVmk2aHBZTVVZ?=
 =?utf-8?B?Z0RCSDhTOWc4RW8yU2tCQnljSnBiVGMwZWhCQm5sV1RMcHQxWWwrbUJEWVJi?=
 =?utf-8?B?bGU0b3pPc3NGV1d6dFpPL3FXSWY3U0VYdE52QXJIZlZCRVVJV2c3RXcyeU5l?=
 =?utf-8?B?NnpwbGRoNUFTMjhuZ1h3Tk8yK0grS0t6ZU4yRHkzN203Qk0yK3BwcWZrSU0v?=
 =?utf-8?B?VHkxdWd4NVd3VGZtemJGL29jQVNIaktndXRTRGpKWW5EUEJ2UUthcUJhL3Ax?=
 =?utf-8?B?d1RZWHZyczFuc2NNWTBEVXYwR1U2R2F1ZDdob1RLNGVCYlhHelZ5WWttemxE?=
 =?utf-8?B?VDhkZVArTXZTcE9lVjFONmJKZ2pRalEyR2pjRkE0REFON3NLVVYrT01UWWQ0?=
 =?utf-8?B?NWhRWTIrT2p5dHZsb0NmOGV0MzFHeUZXVnFYcEREcEVRaEp1SEdCMFBWM3NH?=
 =?utf-8?B?N0Q1VmRIRWdvYlVlR2JMYkpBeFFCNytidmZnVzRFbUhEaXlZeVBoczd2dmdh?=
 =?utf-8?B?MVhBUWsxY2ZYM2IvWXU5bXhDaWhjZ3NWSDBSUGdpVlVWYVVObXAwU21xY3JN?=
 =?utf-8?B?OWRUdW5qS1Q3TkxMMHE4cUNqcXhWZTQ0V2NQZmFFVVMrUkFVRlRVdnZEdU00?=
 =?utf-8?B?dW9UTVFTSzNWRTl2TjBoOGh5QkJMMXE4cUpFWnE4ejB4MmhENFZQOWYydjNI?=
 =?utf-8?B?N1paV09TWnA5Vy9MVVl1TWZlTG95ZXd5WVpDenNCUDZrZ0N6ZmZBR0Y1dm5q?=
 =?utf-8?B?MHROTXRUK0RFVzZjNnFVMWdaeTFFNkd5TjFHY3FiazFJbnorM0ZpMzNidGJo?=
 =?utf-8?Q?TkfcsZrUAY0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q05QdXZ2bHJFRUlkM0M2VkYyR3J6NUZldWlqOGxidndSQmM4ZzJuTXVDdCtU?=
 =?utf-8?B?WEtWdmdxdW95R0phSW12b1lpK1diSlV6TzdZQmZURGRzVURNV0E3Yk9iN0t3?=
 =?utf-8?B?V1RkTWgrMFAxMUxmUXk0L2paRU1HUEVVN2RJVE9ZazAxZDgydklObjMrWEdD?=
 =?utf-8?B?K2QwRVFxZUo1ZjZGTnhFcW14Vm5EQU9mY0c3OHZxWDNGUjZxOWZqRDVBemtw?=
 =?utf-8?B?L0lCWUtHNlNNdXZybE1SdzlOU05wSGxLeFFXVFRRcDFjUFFldVd3Yzd0NVI5?=
 =?utf-8?B?MTcvZVZBSk91TE5VN0xBcGJRQ0lPYWM0RGFuTmVNSkU5OE5tTUtBRm4wcHRu?=
 =?utf-8?B?NkZ4YXFvUUtWWkszSWdlVnNiWjkwRmFDdlJUbmk3enR1TVc3amkwaEg4WFZt?=
 =?utf-8?B?WVFJTFJ0bFV2SkdJS0NqRk4xOFpYc3dOL05FQWpZQUlUV3huTWpQUjRrcnJv?=
 =?utf-8?B?R2czN0E5SzFITXdqQWhaQ0ZIalRMSVB5b3YvVmxjVW9wbm1VUGJzMnd3Mml4?=
 =?utf-8?B?UTR6bFdZQ3RNRVZ4MFFnQWlaMEVadzNrdE1CdzR1dTR0QkRyNHpnSGo3WWFR?=
 =?utf-8?B?Tmw0UjVneWZqeGltckdQZ2xUU1k5NzIvWHIrNTBMdWJvQjE3QXJyV2lhK2VG?=
 =?utf-8?B?aFFlYXJxanNOSXRtRlltalJseHczaDA1RS8xNU1RcHBqMzRCU0FaeXVxSDQ4?=
 =?utf-8?B?aWw5NGh4SWV3V0xvY2l4N2trQk9ka0NGODVOc3pib1M4U0VaTTQ1MHorbm5m?=
 =?utf-8?B?MFpRbjVUK0RlaVlKMkpEbnBncjVPbWprclAySnhIV0E2L3dKY1hyZFZXcU55?=
 =?utf-8?B?V2paTEdkdTJNa0ZXeVAvL0RqWFpyYUVFbHY5TVFKVzdzbTdndkdDQzFRSGRt?=
 =?utf-8?B?Q0VFSmdtUHR6SUt2dzF1Y1IydlA5MUZmNnlpTTQ1NnhxV2F0bmtHYTZLdkkv?=
 =?utf-8?B?WFV4dStDVENReDZFNWlxeGtRcE9sUDAzNzNhbVFpekRSSlFrbEtxYlVYZ0Ry?=
 =?utf-8?B?OE9ucG5iTUdkcGVmNXQ5L2hnN1drZ2RwUzJFOHViSzdvUng4TkZHa05QUVBO?=
 =?utf-8?B?YlozZmRKRkZIOW02U2hUQzU3Y3ZDVHlXTkpmUUsyYzFCQ1VXNElDVzVOWGZC?=
 =?utf-8?B?LzB1MXM2WFQ2d0ZxQVhMWGNNalVxM1NxMHVwOGFKV29sdkVGOExZcW0rQ2F4?=
 =?utf-8?B?TmlqY2VLSmg1QlNCMkxLME5DYjFRS1VWaGdiSiszenRsZmEyaEFjcEM4L1U2?=
 =?utf-8?B?dFMzUno1azB5L3JmeUhPT3RKWWMwZGhuSjlXUWQ0RUQwNFJpc3NnSk1kendZ?=
 =?utf-8?B?NWk0cHY3SnJ2Z1hFSTF4ajM1Q2VhUjRQMTZ3cGt6YnNrQnFlZ1pzaTdOQkxS?=
 =?utf-8?B?b3QxZWpUSktCMHdVSTdMNVNzeEdOL21YRHlqMkVkVVRTLy96a0UvMW5PMnBw?=
 =?utf-8?B?UXNLT1pXYjF5L0NLN1ZGSWJSdUtEWlNnblE3L1VUUlFzU2srcHB2MGZxZ3pZ?=
 =?utf-8?B?UEhmLzgrYjlaSVEyUEYzemxhVW5XYkRuek1wYzZpUm03U3lMSGFCblpSaURr?=
 =?utf-8?B?cW5hOXo4Tml1WExoblpLNzFlS1pOTmhlMy9ISzgvRFZma1Q3VlBRZ2NYdUJO?=
 =?utf-8?B?K2Q4KzFWZmlFejFjS1RQdGozajUxN0lSVUdZTmlteUdXMHFOZytySDNSL0pn?=
 =?utf-8?B?YnFKWEx4Q2psL1ZpUWRuQmJmV3Bsd3pmTk1sYVhKZ09XTjlzTDR5eER1YU54?=
 =?utf-8?B?SDIyZnNDcHM2RkdMS0JBYWpqN0k5SjFGVFp5SktlQ2svQTl5ditWZ042YXlQ?=
 =?utf-8?B?d1psdGRkcVcvc2R5dVpvWDc3bnB6b3hONVBwYjV3MWlXcis2eEZKTktvWXQw?=
 =?utf-8?B?WTRObzVlTDFsR1JQNGNiSVZwcG9jeWpPSDJHQzUrL1YrcDVUTVE1Mm5mTTJN?=
 =?utf-8?B?SERXSVRycDRWNlFZd2cwdXE0bWZzR2ZESytWaGlXdzlGYk1HMHFhTjNRNlhv?=
 =?utf-8?B?VmtHUDYybDFpUHg5amU1NVU0QUVhZnNsMUsyczF2TExmblUyT3IveC9NRWk1?=
 =?utf-8?B?dEgwOXROelh5RW0vT2VhK0V5NVVCRVhJTFo2eDlwN2lMWktkdG9JVGZndzBM?=
 =?utf-8?Q?VEjY=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae208d3a-34d9-4015-b635-08dd96a97dc7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 07:48:06.4020
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oEZmRr04ODBbeKLq/l9qhkyYefJkGTKC5BOTirh0t2AcY75e+j8Uq/1HDQmlrxJ/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7207
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	DNSWL_BLOCKED(0.00)[40.107.92.49:from,2603:10b6:510:13c::22:received];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.49:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 89F5644654
X-Spamd-Bar: ----
Message-ID-Hash: 6ZAHPWALKAWJGOZDIU6SUTMV5V5RGUEB
X-Message-ID-Hash: 6ZAHPWALKAWJGOZDIU6SUTMV5V5RGUEB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6ZAHPWALKAWJGOZDIU6SUTMV5V5RGUEB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xOS8yNSAwNjowOCwgd2FuZ3RhbyB3cm90ZToNCj4gDQo+IA0KPj4gLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4+IFNlbnQ6IEZyaWRheSwgTWF5IDE2LCAyMDI1IDY6MjkgUE0NCj4+IFRv
OiB3YW5ndGFvIDx0YW8ud2FuZ3Rhb0Bob25vci5jb20+OyBzdW1pdC5zZW13YWxAbGluYXJvLm9y
ZzsNCj4+IGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb207IEJyaWFuLlN0YXJrZXlAYXJt
LmNvbTsNCj4+IGpzdHVsdHpAZ29vZ2xlLmNvbTsgdGptZXJjaWVyQGdvb2dsZS5jb20NCj4+IENj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGxpbmFyby0NCj4+IG1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnOyBsaW51eC1rZXJuZWxA
dmdlci5rZXJuZWwub3JnOw0KPj4gd2FuZ2JpbnRpYW4oQmludGlhbldhbmcpIDxiaW50aWFuLndh
bmdAaG9ub3IuY29tPjsgeWlwZW5neGlhbmcNCj4+IDx5aXBlbmd4aWFuZ0Bob25vci5jb20+OyBs
aXVsdSA8bGl1bHUubGl1QGhvbm9yLmNvbT47IGhhbmZlbmcNCj4+IDxmZW5nLmhhbkBob25vci5j
b20+DQo+PiBTdWJqZWN0OiBSZTogW1BBVENIIDIvMl0gZG1hYnVmL2hlYXBzOiBpbXBsZW1lbnQN
Cj4+IERNQV9CVUZfSU9DVExfUldfRklMRSBmb3Igc3lzdGVtX2hlYXANCj4+DQo+PiBPbiA1LzE2
LzI1IDExOjQ5LCB3YW5ndGFvIHdyb3RlOg0KPj4+Pj4+IFBsZWFzZSB0cnkgdXNpbmcgdWRtYWJ1
ZiB3aXRoIHNlbmRmaWxlKCkgYXMgY29uZmlybWVkIHRvIGJlIHdvcmtpbmcNCj4+Pj4+PiBieQ0K
Pj4+PiBULkouDQo+Pj4+PiBbd2FuZ3Rhb10gVXNpbmcgYnVmZmVyIElPIHdpdGggZG1hYnVmIGZp
bGUgcmVhZC93cml0ZSByZXF1aXJlcyBvbmUNCj4+Pj4gbWVtb3J5IGNvcHkuDQo+Pj4+PiBEaXJl
Y3QgSU8gcmVtb3ZlcyB0aGlzIGNvcHkgdG8gZW5hYmxlIHplcm8tY29weS4gVGhlIHNlbmRmaWxl
IHN5c3RlbQ0KPj4+Pj4gY2FsbCByZWR1Y2VzIG1lbW9yeSBjb3BpZXMgZnJvbSB0d28gKHJlYWQv
d3JpdGUpIHRvIG9uZS4gSG93ZXZlciwNCj4+Pj4+IHdpdGggdWRtYWJ1Ziwgc2VuZGZpbGUgc3Rp
bGwga2VlcHMgYXQgbGVhc3Qgb25lIGNvcHksIGZhaWxpbmcgemVyby1jb3B5Lg0KPj4+Pg0KPj4+
Pg0KPj4+PiBUaGVuIHBsZWFzZSB3b3JrIG9uIGZpeGluZyB0aGlzLg0KPj4+IFt3YW5ndGFvXSBX
aGF0IG5lZWRzIGZpeGluZz8gRG9lcyBzZW5kZmlsZSBhY2hpZXZlIHplcm8tY29weT8NCj4+PiBz
ZW5kZmlsZSByZWR1Y2VzIG1lbW9yeSBjb3BpZXMgKGZyb20gMiB0byAxKSBmb3IgbmV0d29yayBz
b2NrZXRzLCBidXQNCj4+PiBzdGlsbCByZXF1aXJlcyBvbmUgY29weSBhbmQgY2Fubm90IGFjaGll
dmUgemVybyBjb3BpZXMuDQo+Pg0KPj4gV2VsbCB3aHkgbm90PyBTZWUgc2VuZGZpbGUoKSBpcyB0
aGUgZGVzaWduYXRlZCBMaW51eCB1QVBJIGZvciBtb3ZpbmcgZGF0YQ0KPj4gYmV0d2VlbiB0d28g
ZmlsZXMsIG1heWJlIHNwbGljZSgpIGlzIGFsc28gYXBwcm9wcmlhdGUuDQo+Pg0KPj4gVGhlIG1l
bW9yeSBmaWxlIGRlc2NyaXB0b3IgYW5kIHlvdXIgZGVzdGluYXRpb24gZmlsZSBhcmUgYm90aCBh
IGZpbGVzLiBTbyB0aG9zZQ0KPj4gdUFQSXMgYXBwbHkuDQo+IFt3YW5ndGFvXSBJIHJlYWxpemUg
b3VyIGRpc2FncmVlbWVudCBsaWVzIGhlcmU6ICANCj4gWW91IGJlbGlldmUgc2VuZGZpbGUgZW5h
YmxlcyB6ZXJvLWNvcHkgZm9yIHJlZ3VsYXIgZmlsZSDihpIgc29ja2V0L2ZpbGU6DQoNCk5vIHdo
YXQgSSBtZWFuIGlzIHRoYXQgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIHNvbHZlIHRoaXMgdXNp
bmcgc2VuZGZpbGUoKSBvciBzcGxpY2UoKSBhbmQgbm90IGNvbWUgdW8gd2l0aCBhIGhhY2t5IElP
Q1RMIHRvIGJ5cGFzcyB3ZWxsIHRlc3RlZCBhbmQgYWdyZWVkIHVwb24gc3lzdGVtIGNhbGxzLg0K
ICANCj4gc2VuZGZpbGUoZHN0X3NvY2tldCwgc3JjX2Rpc2spICANCj4gW2Rpc2tdIC0tRE1BLS0+
IFtwYWdlIGJ1ZmZlcl0gLS1ETUEtLT4gW05JQ10gIA0KPiBzZW5kZmlsZShkc3RfZGlzaywgc3Jj
X2Rpc2spICANCj4gW2Rpc2tdIC0tRE1BLS0+IFtwYWdlIGJ1ZmZlcl0gLS1ETUEtLT4gW0RJU0td
ICANCj4gDQo+IEJ1dCBmb3IgcmVndWxhciBmaWxlIOKGkiBtZW1vcnkgZmlsZSAoZS5nLiwgdG1w
ZnMvc2htZW0pLCBhIENQVSBjb3B5IGlzIHVuYXZvaWRhYmxlOiAgDQo+IHNlbmRmaWxlKGRzdF9t
ZW1maWxlLCBzcmNfZGlzaykgIA0KPiBbZGlza10gLS1ETUEtLT4gW3BhZ2UgYnVmZmVyXSAtLUNQ
VSBjb3B5LS0+IFtESVNLXSAgDQo+IFdpdGhvdXQgbWVtb3J5LXRvLW1lbW9yeSBETUEsIHRoaXMg
d2FzdGVzIENQVS9wb3dlciDigJQgY3JpdGljYWwgZm9yIGVtYmVkZGVkIGRldmljZXMuICANCj4g
DQo+Pg0KPj4gTm93IHdoYXQgeW91IHN1Z2dlc3QgaXMgdG8gYWRkIGEgbmV3IElPQ1RMIHRvIGRv
IHRoaXMgaW4gYSB2ZXJ5IHNwZWNpZmljDQo+PiBtYW5uZXIganVzdCBmb3IgdGhlIHN5c3RlbSBE
TUEtYnVmIGhlYXAuIEFuZCBhcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQgaXMgaW4NCj4+IGdlbmVy
YWwgYSBjb21wbGV0ZSBuby1nby4NCj4+DQo+PiBJIG1lYW4gSSB1bmRlcnN0YW5kIHdoeSB5b3Ug
ZG8gdGhpcy4gSW5zdGVhZCBvZiBpbXByb3ZpbmcgdGhlIGV4aXN0aW5nDQo+PiBmdW5jdGlvbmFs
aXR5IHlvdSdyZSBqdXN0IGhhY2tpbmcgc29tZXRoaW5nIHRvZ2V0aGVyIGJlY2F1c2UgaXQgaXMg
c2ltcGxlIGZvcg0KPj4geW91Lg0KPj4NCj4+IEl0IG1pZ2h0IGJlIHBvc3NpYmxlIHRvIGltcGxl
bWVudCB0aGF0IGdlbmVyaWMgZm9yIERNQS1idWYgaGVhcHMgaWYNCj4+IHVkbWFidWYgYWxsb2Nh
dGlvbiBvdmVyaGVhZCBjYW4ndCBiZSByZWR1Y2VkLCBidXQgdGhhdCBpcyB0aGVuIGp1c3QgdGhl
DQo+PiBzZWNvbmQgc3RlcC4NCj4gW3dhbmd0YW9dIE9uIGRtYWJ1ZjogIA0KPiAtIERNQUJVRiBs
YWNrcyBEaXJlY3QgSS9PIHN1cHBvcnQsIGhlbmNlIG91ciBwcm9wb3NhbC4gIA0KPiAtIG1lbWZk
IHN1cHBvcnRzIERpcmVjdCBJL08gYnV0IGRvZXNu4oCZdCBmaXQgb3VyIHVzZSBjYXNlLiAgDQo+
IC0gdWRtYWJ1ZiB2aWEgbWVtZmQgd29ya3MgYnV0IG5lZWRzIHN5c3RlbWljIGNoYW5nZXMgKGxv
dyBST0kpIGFuZCBoYXMgc2xvdyBhbGxvY2F0aW9uLiAgDQo+IA0KPiBZb3VyIG9iamVjdGlvbnM6
ICANCj4gMS4gQWRkaW5nIGFuIElPQ1RMPyBUaGlzIHRhcmdldHMgZG1hYnVmIHNwZWNpZmljYWxs
eSwgYW5kIG91ciBmaXggaXMgc2ltcGxlLiAgDQo+ICAgIHNlbmRmaWxlIGRvZXNu4oCZdCByZXNv
bHZlIGl0Lg0KPiAyLiBBY2Nlc3Npbmcgc2d0YWJsZSBwYWdlcyBpbiB0aGUgZXhwb3J0ZXI/IEFz
IHRoZSBkbWFidWYgY3JlYXRvciwgdGhlIGV4cG9ydGVyICANCj4gICAgZnVsbHkgY29udHJvbHMg
c2d0YWJsZS9wYWdlIGRhdGEuIFdlIGNhbiByZXN0cmljdCBhY2Nlc3MgdG8gY2FzZXMgd2l0aCBu
byAgDQo+ICAgIGV4dGVybmFsIHVzZXJzLg0KPiANCj4gQ291bGQgeW91IGNsYXJpZnkgd2hpY2gg
cG9pbnQgeW91IG9wcG9zZT8NCg0KQm90aC4gSSBtaWdodCBiZSByZXBlYXRpbmcgbXlzZWxmLCBi
dXQgSSB0aGluayB3aGF0IHlvdSBkbyBoZXJlIGlzIGEgbm8tZ28gYW5kIHJlaW1wbGVtZW50cyBj
b3JlIHN5c3RlbSBjYWxsIGZ1bmN0aW9uYWxpdHkgYnkgYSB3YXkgd2hpY2ggd2UgY2VydGFpbmx5
IHNob3VsZG4ndCBhbGxvdy4NCg0KVC5KJ3MgdGVzdGluZyBzaG93cyB0aGF0IHNlbmRmaWxlKCkg
c2VlbXMgdG8gd29yayBhdCBsZWFzdCBpbiBvbmUgZGlyZWN0aW9uLiBUaGUgb3RoZXIgdXNlIGNh
c2UgY2FuIGNlcnRhaW5seSBiZSBvcHRpbWl6ZWQuIFNvIGlmIHlvdSB3YW50IHRvIGltcHJvdmUg
dGhpcyB3b3JrIG9uIHRoYXQgaW5zdGVhZC4NCg0KUmVnYXJkcywNCkNocmlzdGlhbg0KDQo+IA0K
Pj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
