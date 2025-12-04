Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E80DECA3639
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 04 Dec 2025 12:10:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 015263F900
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  4 Dec 2025 11:10:22 +0000 (UTC)
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010066.outbound.protection.outlook.com [52.101.46.66])
	by lists.linaro.org (Postfix) with ESMTPS id 2BAEA3F834
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Dec 2025 11:10:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=BpHFRyOP;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.46.66 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FR+GIhxa5ozctTjcAv3xTKncAaYBIhED4pon567JHcxhfeJenXL1nixDTT7xXS2/i3xzDtBHl5WTU4hCHe+2DQVZ7/pk4ThY49m3eRxYDchHhPyZAcHoWaNY1zRkZQdLl4ez40E+TVkFTFJWvIwzZ6QCZDuqZVtf1PLbns5Sgg0g3Zf+IRcYeS8RlS8kBAFVbw4mI1h0T4An8QtVTirL+id1FWk+6oQARPdSpVCyZ9K9EJfmwE9CVnJe9EHXDtPZiei7XYpxBspN7x2s5vHcRNI1a34nYPIxtmz2ADhdtZyOb9JPZh+k8PRDmKXQKXlypLNKJtDUD0KKbs1qvPNzbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ceuNVAu/Tg41gEM4WQ8KWwZPWZ9Si9CkR3aupRy4lAs=;
 b=Q7jIyBw2FRPcoLP3X0cQDYYU1cUCZQz9qa3qdQq6iSoAn9CS5n1gtOafuvHYhIVFJ6MbaV9dAPgTeUFnFcr9AjOOVrsdJyxhnh2+gQEuPtBWzxammrsvizYzKl6jCVrjGCJETBWuKVgZioq3MT4LA8cNpFky3YJuyT6S97+SGR3P5mYQbExtSpfQbXNvHWinXlU0v/8+gfwSx3t8t1vJF9JEVZ9IVvGEoA9gubvDowZqn9cWuMFkc+wZlKA9lUJxNoAJa83mpKvsmzFPXSMaOKM5wLENk/KdbprrOvHmrM+R3YEIq3/YYbLLrx2o1ckeq1DPuHZqJ07GQwMxAk8FAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceuNVAu/Tg41gEM4WQ8KWwZPWZ9Si9CkR3aupRy4lAs=;
 b=BpHFRyOP4GO/pRbM4jvM4PHa9/R447yvRkj1VTaJM+BxzCL1zMxjeJ+yQt8V+L+YN93O6yZFx8ARy+qBxtmuZ+hZ2pzgZ9KvJQG300XmH8zOzyIJXFic7TUMQ38xCQyOXwCBjsycFZfVSGDA2n1on8G1cLR9v46aYTD4Sd8TYeA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB6226.namprd12.prod.outlook.com (2603:10b6:930:22::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 11:10:04 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 11:10:03 +0000
Message-ID: <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com>
Date: Thu, 4 Dec 2025 12:09:46 +0100
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com>
 <20251204110709.GA22971@lst.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251204110709.GA22971@lst.de>
X-ClientProxiedBy: BN9PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:408:fb::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB6226:EE_
X-MS-Office365-Filtering-Correlation-Id: 2839be07-7d55-4d72-e787-08de3325ac40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bE5rSENPcnMxUUhUZnIwblp0OER4SmhxK2s3YlNGVGZLaEVqOTJXRDNBRWM5?=
 =?utf-8?B?Y0xrOHV5OHlsZythZ1FoMnRhQit6bUhac1pCZGQrcEVGOURVVGZhWTFCSW9O?=
 =?utf-8?B?ZmxVczJtNWl2N1hob25kcm9xMWh2L3JBWWdwMU5iMFJ4V1p4dFh2c05SQmhN?=
 =?utf-8?B?Q1hkVUZQTUN1dThBdkRSRGgwNTRpdlhDU09DS1JCVDJLeE9QNFJtaVJXQUVI?=
 =?utf-8?B?NHl3SGRBaW5QVjc1NlJxbURqWVVIYkQ2eFQrVm4rMTNBK2VkeEdvMjVQWXJw?=
 =?utf-8?B?NzQ5K2ZWbythR1JiUStGMzVmNVNhelpYZmtiU1YvZkgwclREMlVOeVNyK1Rl?=
 =?utf-8?B?dGplQm9rL3B6L3Y1WElTRVZHUnNEK3hwbzltRFBTMkgwMXRFRkI0dGpONE5G?=
 =?utf-8?B?KzR1Rm1uS1h0T1Zrb2FsOXNISjZwOER6aEltdjNnMG5kZmRrWnVpOUtFNnFK?=
 =?utf-8?B?SlNqWEh0bjlncllVTGNYU0JsOHdycUZMZkROVWl2MVhwRzgwbWJKK1pGMFhF?=
 =?utf-8?B?L0JNRFZ0U1ZpbXR5R1dJQ2ZTOFk5VGFlcWZJYUNzeStKelFaVlkwbkxrR2U1?=
 =?utf-8?B?TjVieWNwU1JhaEoyK3EzaVFrNGJoYU93ZkZUY2pnanR5aWVOZ01YdlJZK1lW?=
 =?utf-8?B?UVplbVJZU1hZNEdPVFE1NWk2RFpKQ0M4bFhRakhyVFNka1dKZm9wVS9oWWVK?=
 =?utf-8?B?UFhFcytyOGVYNUF6TVNTTk9wUnMwbUJpeWN6eUpFZk1FYVhBQmlYYllZNE9j?=
 =?utf-8?B?aDJoTTlPMDhqVVZ2M0RjTlNkQ2wrMFZQN2ZpdUNmbVlSSnYycThHV0lMS29H?=
 =?utf-8?B?enh2MTZrR3JvaHBCbk1PT0UrbHdTM2FvRjVEV1VnNnFBeVBCQXZHUFh3Ympn?=
 =?utf-8?B?a3FtRk5pZE00a05Fcmd2QWpzS0JmNFB1VkI4QnBzYyttVlQ2dUdJc0o5cGFC?=
 =?utf-8?B?YzdCKzlZejNQekMxM0hvcTZIek1CZ1dqa3hZYVRpcW1FWStaT2tMRDRJd1Rx?=
 =?utf-8?B?VGJyd2VDMEV4Y0xmdWJUejZsaEJkWE41a0xHZ1pVblVLZGh0MzNYMzdzUEZz?=
 =?utf-8?B?TDlOdW9YVkk1OElLUkVUMzhaSEoxZlNwdlpIMCtqcHpUb0NMaGVjWnFSVmxT?=
 =?utf-8?B?M0lzY2J2bEZOVUJsWEwwMGZ6S2tWdnBzVWNBNEg0RDdnMXJaeVJPSjRZSUJQ?=
 =?utf-8?B?cmpVNU1FR2xlaTlGcnlzMVQxT0dxbStGdDI3TmFiVWhlMGQ4WnM5N1JwSktz?=
 =?utf-8?B?MTAzbFg0MmRBNWYxeGVGckVJVXJNTHo4KzZ2ZHdlTUw2OUJtMVBqdzlCYk1q?=
 =?utf-8?B?cnJOMVgwNHpHbzRoRmJ4bUFuZXBCVnZsdjcrei9FOGthQ2U4RkJaelFxS2E5?=
 =?utf-8?B?TnFacXZ0dDVwWEo0THc5T0lqUHdxd0pIclM1SnFIOU9Rb2FVT1YvR0tXdGd5?=
 =?utf-8?B?dlVUSmF0ZkhyZzZ5eDFpM2RJWEFaTVBXK3d2R204ZW0yYTlEV3UrTDdwOWRi?=
 =?utf-8?B?dUp2SnJGdDBNcUo5djN6TGI0RzN4WjNSU2xOV1lyNmZwNVNuMHRLRmhNWjEz?=
 =?utf-8?B?R29yajZ3Kzd3b3dRUE15VUcrOHdQVExLQS9ITzFCV0JtWmpMMmxwL2p3NFY2?=
 =?utf-8?B?d2s2Z1RKclJWM1AyUHR5cytJenNaeENQOG1JTEk0NVV1ZmR6WThjY3BYbXBI?=
 =?utf-8?B?WUFXbEJZZGZTcEt1SjloQnpJM2xCZlVKUy96SzBxQ1RoajRreGxJZUd3L2hC?=
 =?utf-8?B?V3FtdTFsclJ0bW5HNkZCRkZncjVzTkVlUlNjQzhZN3Rnc1R4VVpUWUcxNDc2?=
 =?utf-8?B?NzVkVTRNbXZGTXRYbWhWL3FRMy9tRkVKcjdpd0ZLL0Vwdk5GUEwyZ3lvaFZw?=
 =?utf-8?B?ZzBxbWZDR1AvWDhCYWRMM0ViYjBYTUVVSXMyMVRNUC9lYU5hNXduV1VQRmVJ?=
 =?utf-8?Q?mWJaDmQ+kuQRRkXI8h+aqVZTwfzqNX1h?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?c25nLzlFazZDekJYZUNNcjRkY0VUdmJpZmtOS0V3U2JLUmp0UmZOWndtazI1?=
 =?utf-8?B?QlJOWnZWSDBaSUVzRlZnZlB5SVJlMzNvUmhmRkpWaHArc1dWSWlpMW5YaldK?=
 =?utf-8?B?dzhzQVptSVVHS1hUUG4rNU80ZDdEdkxWSkp3ZnViTWFoMmIzRVBOSmNoY3o2?=
 =?utf-8?B?ZHh6SnZGYjBScitIS1BaaEJSbFBGeFdkajlGVlVWU29oLzJoNEgxYWVsNGZE?=
 =?utf-8?B?SEEvV0J3N3BHOVFkTXJqUzNKQW5RQlp3R1Y1WkJPMFJiTG1hNlFjeEtlSDAv?=
 =?utf-8?B?Mkx3MEdoL21WcU0ydFFWOHNHTHAwSHB1L3FKbGJnclR6Vys3bDBVZlVpS0NC?=
 =?utf-8?B?Z2NFT3hrWmlEclU1VzV1M0NLNElrZ1JIK1RkenZycHhhWGppaEJlMUVXUTVS?=
 =?utf-8?B?WGsyRkFUZ2FSamVVekRSd1pydmJZc0xHYjM1WmFGWVpjZ0w0MlZtcVhSVmFY?=
 =?utf-8?B?cytTTWZhTTk2UWQvQ0hjMjYwNHE3bTg2SjRaSlk5cDZxUEh2bVplcjdQOENT?=
 =?utf-8?B?d1NHekdKbEpIczJZaHFTWGsvTG9jOElTSFVRVE5Tc2p4TWlrbXJCYlUwb0tD?=
 =?utf-8?B?NE1jOWJZdGlaUVhmZk5vOG44Q0lUSUVwa2ZtRnAxa1NyYlFOUGdQeGNXVW5w?=
 =?utf-8?B?M2hVWUF5QUQzeERZV3dCNGFlVkhhaUhQR3ViNlBzRnUxZWx2ZUpaMnZnbVlt?=
 =?utf-8?B?ZmtjTU1UTGN4YWE3TVNZbEVCaFlsZitOSjVBZTVVd3NndElCOUlkM0c2K3cv?=
 =?utf-8?B?RGpJd1ZVWHgwcmxTZktCU1BXOXczNlBVb3RMY1BZb3FIeWRac3dwOGJDY3Fz?=
 =?utf-8?B?Rm5BZzY0dXM3VzM5dEN2TjU5Q0tRNGluZ2I1TEFoM09GR3hOWDdjb2Y4dU9F?=
 =?utf-8?B?d0JnOGhNbGN2ZXFZcXdHcUtwQmwxUGFnYmlxY2ZaQjJieVNVYUFFR3VHRC82?=
 =?utf-8?B?NENHV0N1UDlkWGQ2a1JuZmlFdnl2Q1ArSjhKcmJlaTRhV2Q5UGRQczE0UjFS?=
 =?utf-8?B?d1pkREZKY3EvRmFLZy80MXZXdkFzMUJLMkd6aVVYT0tRcUYyM2FkYWNSSzRl?=
 =?utf-8?B?MGQ1SDlibE5Ja05pV0dyTzlUbFQ0ZG1xTUdUU2ZEdm1NNUFwK01lOWVqMGIy?=
 =?utf-8?B?UjFqRW1EK2JFY3hPeGhScjNuNkQ3VzJFNUtOdEp6ZEdtV2JhMkoveExZTGZ2?=
 =?utf-8?B?TGMxeVFrM2xUM2NraEFJalRiSW96My94OVc5ckxOalk0NkZkVkxUSFMwRThR?=
 =?utf-8?B?c1lZSC9jN3l4OFVpK3VXT3VYZTNqWTBKVk1vYlQybGJ1ajE3UW9kV3hmMDNK?=
 =?utf-8?B?MStJVDN3dnZ0MWlrVHg5aVZVZ2RSbXFQVWFHSkVZSi9qS2cvY0xUOUhWaTI5?=
 =?utf-8?B?cG5oc0hKb29QM2lBdUthSnNmbWdaTEdKT1dtVC9nbHNLUmxIUUE5b0FVOENm?=
 =?utf-8?B?UG81eEl2Q3dPWDA3aE1rWEZSUXU5U29tZ1NoSnVrZXh2SDEraXo1MnQyS2Qz?=
 =?utf-8?B?SEJzR1BHTitZQy9aaEdUK2pkQWgxUXBJaWRDUzg1dExzNnVFSVZhL3M2RDZ6?=
 =?utf-8?B?NlJRQjd2N1c0dzR4b1ZvK2pzVWhrU1FYN2JBeXJuVG9BRW5XMWx3eDBvNlIv?=
 =?utf-8?B?RENFaVU0UUo2a3BjSTV3NURBNnh2eEZoY2k1d3ZEQnFUc0tBTkI2SlpxcTY0?=
 =?utf-8?B?aEoram5pUk9MRDlIUCtubTgxbm5nS21UMkpmWmJCT0cvK1AyY0ZPZ2taMmxi?=
 =?utf-8?B?WHZxYUVCK1dqcTA1Q3QydGpiangrV0VZY3RZSjBuZHN6MHEvamlsUGdWSktG?=
 =?utf-8?B?eGFNQXArUVc3ajZJT2toNzRCMloyS1Y1cWtWMmFadWxwbVNkaVJiV0hSaU9u?=
 =?utf-8?B?WXFTamhySFFuUFBVaDNQais4Z2N6ekNobldKbXRXNjcwMXNFZzJQWGcxOEY0?=
 =?utf-8?B?cU5acHNVaWJrUTdNcGtrWHZJVExrcFVCOENQOEo4WVVFeUZPTEwxQzI0VzFR?=
 =?utf-8?B?WFg0YXplM0l6ZEdGcXN6aUNPNFI2eXYvcEhCSjNCcEJPWmxZN25WZ0RXMFlr?=
 =?utf-8?B?STZub1lxR0VkVncwbCtmTXl1dnV3UVhpRzlGV1ZFL3dNbWlKdVRhM2tReFla?=
 =?utf-8?Q?vZlvYnTSK0kSatFlMD82q4N9P?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2839be07-7d55-4d72-e787-08de3325ac40
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 11:10:03.8550
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74f4S3OiidleoxUx80Yu6DrSVGV3ZsQHqBFxnMzTMb2/eWWsbIgwQF4NlRizLa2y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6226
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	BLOCKLISTDE_FAIL(0.00)[52.101.46.66:server fail,2603:10b6:510:13c::22:server fail];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.46.66:from];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,intel.com,kernel.org,kernel.dk,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2BAEA3F834
X-Spamd-Bar: ----
Message-ID-Hash: EPIJSNAGSSXAOF3ZRWEVFMRS365U4RON
X-Message-ID-Hash: EPIJSNAGSSXAOF3ZRWEVFMRS365U4RON
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EPIJSNAGSSXAOF3ZRWEVFMRS365U4RON/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvNC8yNSAxMjowNywgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6DQo+IE9uIFRodSwgRGVj
IDA0LCAyMDI1IGF0IDExOjQ2OjQ1QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+
PiBPbiAxMS8yMy8yNSAyMzo1MSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+Pj4gQWRkIGEgZmls
ZSBjYWxsYmFjayB0aGF0IG1hcHMgYSBkbWFidWYgZm9yIHRoZSBnaXZlbiBmaWxlIGFuZCByZXR1
cm5zDQo+Pj4gYW4gb3BhcXVlIHRva2VuIG9mIHR5cGUgc3RydWN0IGRtYV90b2tlbiByZXByZXNl
bnRpbmcgdGhlIG1hcHBpbmcuDQo+Pg0KPj4gSSdtIHJlYWxseSBzY3JhdGNoaW5nIG15IGhlYWQg
d2hhdCB5b3UgbWVhbiB3aXRoIHRoYXQ/DQo+Pg0KPj4gQW5kIHdoeSB0aGUgaGVjayB3b3VsZCB3
ZSBuZWVkIHRvIHBhc3MgYSBETUEtYnVmIHRvIGEgc3RydWN0IGZpbGU/DQo+IA0KPiBJIGZpbmQg
dGhlIG5hbWluZyBwcmV0dHkgY29uZnVzaW5nIGEgd2VsbC4gIEJ1dCB3aGF0IHRoaXMgZG9lcyBp
cyB0bw0KPiB0ZWxsIHRoZSBmaWxlIHN5c3RlbS9kcml2ZXIgdGhhdCBpdCBzaG91bGQgZXhwZWN0
IGEgZnV0dXJlDQo+IHJlYWRfaXRlci93cml0ZV9pdGVyIG9wZXJhdGlvbiB0aGF0IHRha2VzIGRh
dGEgZnJvbSAvIHB1dHMgZGF0YSBpbnRvDQo+IHRoZSBkbWFidWYgcGFzc2VkIHRvIHRoaXMgb3Bl
cmF0aW9uLg0KDQpUaGF0IGV4cGxhbmF0aW9uIG1ha2VzIG11Y2ggbW9yZSBzZW5zZS4NCg0KVGhl
IHJlbWFpbmluZyBxdWVzdGlvbiBpcyB3aHkgZG9lcyB0aGUgdW5kZXJseWluZyBmaWxlIHN5c3Rl
bSAvIGRyaXZlciBuZWVkcyB0byBrbm93IHRoYXQgaXQgd2lsbCBnZXQgYWRkcmVzc2VzIGZyb20g
YSBETUEtYnVmPw0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
