Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BB6A89DA4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:19:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 735104599F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 12:19:45 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2042.outbound.protection.outlook.com [40.107.237.42])
	by lists.linaro.org (Postfix) with ESMTPS id F07C544201
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 12:19:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=DOI1DNOZ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uDJHZJzyAU/gPOJ5/hgLst3HaWW+49NRkExbu4NrTosk1bMMYyo6VgnNg6pBxPJ6egywh2KcjZcdjN8D6+NNzz+4Hj/ev3uTX0aMdSXFEQ9KCG/1DbVjQ+dg+HvOBufAZndfMzmk4jokjoY2QRhtBqH8C32iQBy/aQo4KgvmOrdDOQ54GCL/I0SJSuZNSQgIcxhZcghON3PxxhJuQXvvS/ng7ZH7VvXhdac6F2P3x4HzTx18iQGeOwTbmg29LSx+00IQqeSraw9Bo9Fsxyaw+eOXPydmj/tEtV5FDb2ZHxRBnQV7p55W+Fogf9PCDQc9eh2VdqdpTgcPjmjUDTXcog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ipNnr7Ed9LwalVEN4xkousAHOvB031M6nENTI0gczPA=;
 b=BlItQUcLBwh196lZ4u7B9mzcZhVamuihcHpOeM0N+vlj7bipy0zA2bmNDILYbeiUw2nIZbxelI15u3R/SDle4iPqPSt0X+GRrV6kvs6b+SJGqBQ0dgVpMIsVQ6S+j8MxgjyPY66lpx1rYI/QoMUf443s/M/MldTvXIFABIy3Qx1535cbZ1jEjfA6NuaUpH3+xFCX4nsioMgCT7fITWHp9rx9LpBO9m5RiudCrFsvdTcVNrWE2l8dUlUT2okXiphJUGfRDwCQww1YszceNl95KfllnTeDNUtswXiRhck5FzHJKWxJpLZafB/YxDACZKLqk54ys5i8J6wmaWvECarfIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipNnr7Ed9LwalVEN4xkousAHOvB031M6nENTI0gczPA=;
 b=DOI1DNOZ5S2W+0aOol3BcFu0n2ffMiQVpLmuDSPSyoBKWZ7a0FLCvibDJSNJ298h7HErB17OBDmTAW9CmZavc1T53R9IfvpfY+InNRS6Y5zMkVL8uTR4Ee6RXszxZaAU5uz2AqlhOPpHhBR5EME3r8HaNWxZmbU5nXIDqDXixfo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by BY5PR12MB4276.namprd12.prod.outlook.com (2603:10b6:a03:20f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.36; Tue, 15 Apr
 2025 12:19:27 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 12:19:27 +0000
Message-ID: <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
Date: Tue, 15 Apr 2025 14:19:20 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
 <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
X-ClientProxiedBy: FR0P281CA0265.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|BY5PR12MB4276:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f2fa961-cd6e-4a7c-2023-08dd7c17c3f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|7416014|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?anJsU2lsR2k4UU1vQmZhTGRqTG44L3JrSkRXSDlDak1WSGt5OXZLbGFjK1hZ?=
 =?utf-8?B?L2h0SUtaUWVEUlFpN01iVWJ5YU5aYnNHVXdZcVhmbm9PNzNXY0hJckZjcDBC?=
 =?utf-8?B?YWJwM0xmVnhaWk80bFRkOUhqSGg1Znh3MjJmY0N2NGhVUjVxVU04M3lzbndE?=
 =?utf-8?B?Y1NqRFBHRGJNcGNBb3IwUHJzRVNFOW1PK2ZHYlVvUlhYazFlVWJpVVoyMDhs?=
 =?utf-8?B?UjYyTWorUDJmV1diTHpoWHdOMXlkaFRXZXNqbURwT1JDOWhhZjk0ZFp5c2t4?=
 =?utf-8?B?R09PdDlTS0dJTnc5ZHlrMGNDckhTVDVqaEVURC90TEVraXcrOFNMS0N5bWZ3?=
 =?utf-8?B?aVVHUzZqS1pwL3VpblhrcmpnZnJBbm1pMm83UUZXRHB2MUs3TEZaQ0hCSGRF?=
 =?utf-8?B?d2dqazN6dmo1MGVZREdiWjM2Nm5waEpkRGJrVVovMC9YQ2lRODQ1ZDVuY25U?=
 =?utf-8?B?Q29SMGd5TCtGdU9ITUp3YzVnZHhpcVdiWUZhR2REWGZMVDhqM1AydWVZdjVI?=
 =?utf-8?B?RUJlVDQyc2Y1S3VWclNhOHl2MHh1bncycldVS1FTY3ZjNkRLNkpUZGV6VDRL?=
 =?utf-8?B?ajNreEZPTkxqaG1uN2R4UlpaNXl0bVNLY0k1aWl3Zkh0dm5KQ2V6eXg3WFRT?=
 =?utf-8?B?RXBHRnhhZm5LQUMxcktSY1h5U0RCVHFncTlNMG9VdHVSanhXVzNaK1pPcTRw?=
 =?utf-8?B?WS8rcUg1dXdIZy9KSUV3LzkzQ0xEOGQxNWFrRnNlTURKNWdWVkJmRzBWbGlq?=
 =?utf-8?B?d3FZVTBJUGJnYmgxWWtxM29oV0N3TlVHWG9wZFU3N29DTTBlc2MybWtyVHYy?=
 =?utf-8?B?TVcrb3ZPbFZTdVBzY1ppNDJzTktzUjlnRzZ3eU1FTFlSZjFXZDV4T0NvWmFq?=
 =?utf-8?B?ZzlheTAzM3lQeXBKb3pzbnBmeGJlaUd1ZFY3MVVHWVR5eGtsZWQ4b2l3ZVJ2?=
 =?utf-8?B?Ty9jMGpJTE04cFQ0eE1QNUpjMGtSbUVFZGQxQ05wTkw5RmNmY3VSb3V0UHow?=
 =?utf-8?B?cWx1YzRnNEdoUUJoK0ZTOHhHYUNpSExxTjI1L2RQT3UzM2hsNGlVdFNLWW5Z?=
 =?utf-8?B?anVrWkRGUytmSjJZVGpya1dIOXRNOUdyVnR3S29mSXpqelNmT3BmLzBZRW5L?=
 =?utf-8?B?Z0R0Q3YycVEreWJNQ2U3ajZKRG90RTNFWHhxVEJEVDN1cDBmUk9JM3lmNVZa?=
 =?utf-8?B?SElLSlVwMFMza0k2bVlEZ0lnZUVtQy83NlEvU1ZmMXBZOEhFZGJZMFozclBL?=
 =?utf-8?B?c1ZUNWFyRTFqejNvVnFLNVJkZlhjbkMyaG5hcG1BNXhQUS9sUmliV0MxcGI2?=
 =?utf-8?B?cUZLRDQrcHVUYUJVRnNZM25WcDlscHNJMmcrRm5lZWpReFlzSHJYK2NpZ0lO?=
 =?utf-8?B?SnpvMzUxOXZsMU1mK1RWUTlEY25UWVFwQ2ZRTXYyOUdCaUMwcmpINGNINGpl?=
 =?utf-8?B?RjBwSEMzYXR2TU5XVEhhMmdnb1pPNko0ck9qVXIrdEE4MHNHa1lIcld0a2V2?=
 =?utf-8?B?eEdGU25DaDgrQmFJREhyZTBHN1IrNFNlWW9NQTRKcldoR0FUZUxObjMvczl5?=
 =?utf-8?B?ZFVnaDZnai8zcFhldjZPR0xOWmRuT2psTVVjeVd1bUJnelhVNnp5K3Vhbkd2?=
 =?utf-8?B?VWVMcTNvTmJ1bEZhamdjeHdKbmk0cGFyRm1hRHdsM3FtdzJGSWF0cDVyZnY3?=
 =?utf-8?B?WGtTU3dHOUdrMkxZeVFrYnMwdnBQcEYrS2tPbUpoandMa3p0ODhNaGEyeDJI?=
 =?utf-8?B?T2tqa3NVRzFnV2IxSnVGdE1EQWJLNzNQaGlHYXYzWUs3eFYwQlc0Um84OVpQ?=
 =?utf-8?B?TENVZ052cFdnM2tWZFh3U2VnNXdZMlpiWU1qc050czIwM09aQXRXVVlaNkxZ?=
 =?utf-8?B?b0RRNEVyTmVwMUJxeVlDYjErbm41Rks5UkpDRGhDSFFvVC9jSDFhODBFUUNE?=
 =?utf-8?Q?iBApS1K3IiA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RnNqYlJvZ3pkSTZXRityemQwekJWbUJ3YXhXOU5IeXowQXNNY04vemZOUnJt?=
 =?utf-8?B?NzRXbDR6RkNjTVRoOWgvbjJzTzlkcFU5VUV1andjRWxDcjI5OEdxSGtKUTZt?=
 =?utf-8?B?TDRHNXBLaTRvVWoyWE9LNjlLR1c4VlE0dm9LU2t6ckZkMWlSUHRpVTRoVWE2?=
 =?utf-8?B?amlZeW1EdENaQllZTFBlT3g0SFJ3emNSTnJvMGRQcGpVdmc4UTlFSkJPeHlJ?=
 =?utf-8?B?MDlhSFFxT2ZOY0JpOWVDNGRBMnN2dzZmeFBISC95cjgvcmRaWjFRN2VWYzdE?=
 =?utf-8?B?WmkwMUVVNjhXdmdGbC9nc1dlSGtnNStUYVhRd0dicGxFTDhVdGpYeFBkMDht?=
 =?utf-8?B?YXVQam51RmJ6NzdYUlZPK3ZDM245UmE4RUxHWWIvU3FwVDJyRERSMEZSRUlN?=
 =?utf-8?B?TVdQL2N4NEpKTGI5dHpxZWdsOEloT2s0MGQ4aC9LRERzbnNJMStIbis4b0Y3?=
 =?utf-8?B?SjlwRFFYOGhyNTl3UkQ3MnpsZlZZZkFBVStBU1hSM1JQZVNGOW5KSjJkMEZT?=
 =?utf-8?B?RWRkQWRJV0w4N25QL3dZUUlMMkE1Rnpxci9DbHQrRk5nQldIbFRyQmRMT05O?=
 =?utf-8?B?c3BMNnVHbE4rdG00V1ozcmdRZmhDeFFWeG5yOSt6R3VlRC9QL1RMWlFyOFVY?=
 =?utf-8?B?RWlYaUpmS3d6TWNJYjlPVmhjU2s4c3pNd1JHa3drY1JtTGoxc0RWZnhoSEtq?=
 =?utf-8?B?Y3QyUE16c1c2b2wzK3pVdStVYkFIYko1Y01UNVJQUWFRODlLSmVkT3FsZ1By?=
 =?utf-8?B?MllpOUgySUxYNGc1K3lnRjNlRVFHRWVPSjdtR0dzS2dNaHVON3Zkb2JWa2wz?=
 =?utf-8?B?aFprUUJJYUMvb2RDc0JJSmp4aDdWZHJOcHBhbkpDS0Y3dVhQejJ0VG9WZm5Y?=
 =?utf-8?B?NzVHZmh2ZWNHQ3FUKzNvVHluYXcvYWMzazBLNHlJalcvNXBZR0tVSi9FenFi?=
 =?utf-8?B?cUpBSldpUEtVbHpjWlh3dENXRkg4b0llaCt5UGRkdXQ5b2crM0dMdlVHeEdt?=
 =?utf-8?B?OWpYcUpLWjdiVVlCSlJ1Q25mcDZmSDVvR2hkQk8yQitZWFhxL0RGSGtmdWtn?=
 =?utf-8?B?bjNoWTVBbWhGcXYxWmVCWlpNdWY3UHgvTnJzdVR4VmVtekc2NWozdjJjZHdH?=
 =?utf-8?B?WElyTGRrb2UwZTZ5bFpsdGJWbU54cThTYkFnK0cybnJGNmVMNzJDSWpBUTQ3?=
 =?utf-8?B?UGVXMmtaY2dtVWlmbVovRVAyL1QzR2xUQVhrT1JpaWlXQ1B1dVd4TGJIL0FI?=
 =?utf-8?B?RThYVXYrd3IvMDhJUEhQMzhsY0NJNWxUNm1RYng2RjhVUGRLUDFRV3hQbDA3?=
 =?utf-8?B?RlQzekpvQzdTcVJkZXdicXRZMG9NK3lRd2JxZWRYMUYzL0pKZlUySFpTbEp3?=
 =?utf-8?B?OU42UTJEN0xPazRnQllKQ0RhU3ZsWkhFSS9CU0ZMVFJ6RnhGam9UUm9LSng0?=
 =?utf-8?B?cGFuN0R5T1o1ZVE0ZnBmSW55OXpBeTF6ckoxOEZ6dnp1Z3pYMEI2ZUVVK2NN?=
 =?utf-8?B?TDJGTGJRWnRONzZkUE1nNUN4SWpiUDhmTVhETEMwY3U3SUl2QWdQdEJPRzBw?=
 =?utf-8?B?SzZjdmRuQWNVWFVPZVJCUFF3L0o1RWFLamR4QkR3L2hUbTJFL0UwT0plbVFl?=
 =?utf-8?B?Z3dsUW1lai90Mk9iVHZHd2IraUVvRHFXMDNkS3lTZjBZQ1NZdm96N2lnVXBZ?=
 =?utf-8?B?S2F4N3FjQ0tpUUF4NFB4V1gvR0VXWUp6U2R4dmx6Wm9VNVNKSG15Z0hEQ0hL?=
 =?utf-8?B?dFBGNy9jZk1GSkU0VnlSb3RWb1JYRnBIOFdHV0xrS2tXQnVTMzJSdDNvV0pP?=
 =?utf-8?B?TjlvMUdKVWhkbmp6b3hPWEdTZWRPeElWVTZLQm43R3A0aEpxeEh4dlZmUCtF?=
 =?utf-8?B?MmZTaEM0aUo3bHJoeDJvSlZrWk5id3g4Y3I0ZzMrTWRpTWZwV3pEK0RISGRL?=
 =?utf-8?B?YXhKZnRReDZ4Nmk4UDg5R3Z1VmJrMEtoQmc2Z1hWcFlOMWdWRlk1L2hhY0hq?=
 =?utf-8?B?RlpxYjE2cFNKWkhVd0lyY3QyNTNJRnZ2bkhHckE2U3ZyRzB3cWYzUm51OGc5?=
 =?utf-8?B?MVhnZDJiWEhCeFJQQlV4RmQ3eVRGclRtaGxtUmc3dlZDeTRIcmxpNnNudldY?=
 =?utf-8?Q?Ufyc=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f2fa961-cd6e-4a7c-2023-08dd7c17c3f9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 12:19:27.2641
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4NaYRrSRKQ9bVewzF8DTcYTieYwBKN0rYZnatoRBowlzBxXNg1G4rvcwPycDe+BW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4276
X-Rspamd-Queue-Id: F07C544201
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.237.42:from];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.42:from];
	FREEMAIL_TO(0.00)[suse.de,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,lists.freedesktop.org:email,intel.com:email,NAM12-BN8-obe.outbound.protection.outlook.com:helo,suse.de:email];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GMXCR47H4DXBLVZUOP36YJSSHCJASIL7
X-Message-ID-Hash: GMXCR47H4DXBLVZUOP36YJSSHCJASIL7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GMXCR47H4DXBLVZUOP36YJSSHCJASIL7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTUuMDQuMjUgdW0gMTI6NDUgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4gSGkNCj4N
Cj4gQW0gMTUuMDQuMjUgdW0gMTE6Mzkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gQW0g
MTUuMDQuMjUgdW0gMTE6MjAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4+PiBUZXN0IHN0
cnVjdCBkcm1fZ2VtX29iamVjdC5pbXBvcnRfYXR0YWNoIHRvIGRldGVjdCBpbXBvcnRlZCBvYmpl
Y3RzDQo+Pj4gZHVyaW5nIGNsZWFudXAuIEF0IHRoYXQgcG9pbnQsIHRoZSBpbXBvcnRlZCBETUEg
YnVmZmVyIG1pZ2h0IGhhdmUNCj4+PiBhbHJlYWR5IGJlZW4gcmVsZWFzZWQgYW5kIHRoZSBkbWFf
YnVmIGZpZWxkIGlzIE5VTEwuIFRoZSBvYmplY3Qncw0KPj4+IGZyZWUgY2FsbGJhY2sgdGhlbiBk
b2VzIGEgY2xlYW51cCBhcyBmb3IgbmF0aXZlIG9iamVjdHMuDQo+PiBJIGRvbid0IHRoaW5rIHRo
YXQgdGhpcyBpcyBhIGdvb2QgaWRlYS4NCj4+DQo+PiBUaGUgRE1BLWJ1ZiBpcyBzZXBhcmF0ZWx5
IHJlZmVyZW5jZSBjb3VudGVkIHRocm91Z2ggdGhlIGltcG9ydCBhdHRhY2htZW50Lg0KPg0KPiBJ
IHVuZGVyc3RhbmQgdGhhdCBpdCdzIG5vdCBpZGVhbCwgYnV0IHRlc3RpbmcgZm9yIGltcG9ydF9h
dHRhY2ggdG8gYmUgc2V0IGlzIHdoYXQgd2UgY3VycmVudGx5IGRvIHRocm91Z2hvdXQgZHJpdmVy
cy4gUHV0dGluZyB0aGlzIGJlaGluZCBhbiBpbnRlcmZhY2UgaXMgYWxyZWFkeSBhIHN0ZXAgZm9y
d2FyZC4NCj4NCj4+DQo+Pj4gSGFwcGVucyBmb3IgY2FsbHMgdG8gZHJtX21vZGVfZGVzdHJveV9k
dW1iX2lvY3RsKCkgdGhhdCBldmVudHVhbGx5DQo+Pj4gY2xlYXIgdGhlIGRtYV9idWYgZmllbGQg
aW4gZHJtX2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hX2J1Zl9mcmVlKCkuDQo+PiBUaGF0IGlzIGZv
ciBleHBvcnRlZCBETUEtYnVmIGFuZCBzaG91bGQgKk5FVkVSKiBiZSB1c2VkIGZvciBpbXBvcnRl
ZCBvbmVzLg0KPg0KPiBEaWQgeW91IGxvb2sgYXQgdGhlIGRpc2N1c3Npb24gYXQgdGhlIENsb3Nl
cyB0YWc/IFdoZXJlIGVsc2UgY291bGQgZG1hLWJ1ZiBiZSBjbGVhcmVkPw0KDQpZZWFoLCBJJ3Zl
IHNlZW4gdGhhdC4gVGhlIHNvbHV0aW9uIGlzIGp1c3QgY29tcGxldGVseSB3cm9uZy4NCg0KU2Vl
IGZvciB0aGUgZXhwb3J0IGNhc2Ugb2JqLT5kbWFfYnVmIHBvaW50cyB0byB0aGUgZXhwb3J0ZWQg
RE1BLWJ1ZiBhbmQgY2F1c2VzIGEgY2lyY2xlIGRlcGVuZGVuY3kgd2hlbiBub3Qgc2V0IHRvIE5V
TEwgd2hlbiB0aGUgbGFzdCBoYW5kbGUgaXMgcmVsZWFzZWQuDQoNCkJ1dCBmb3IgdGhlIGltcG9y
dCBjYXNlIG9iai0+ZG1hX2J1ZiBpcyBhY3R1YWxseSBub3QgdGhhdCByZWxldmFudC4gSW5zdGVh
ZCBvYmotPmltcG9ydF9hdHRhY2gtPmRtYV9idWYgc2hvdWxkIGJlIHVzZWQuDQoNClJlZ2FyZHMs
DQpDaHJpc3RpYW4uDQoNCj4NCj4gQmVzdCByZWdhcmRzDQo+IFRob21hcw0KPg0KPj4NCj4+IFJl
Z2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+IEZpeGVzOiBiNTdhYTQ3ZDM5ZTkgKCJk
cm0vZ2VtOiBUZXN0IGZvciBpbXBvcnRlZCBHRU0gYnVmZmVycyB3aXRoIGhlbHBlciIpDQo+Pj4g
UmVwb3J0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KPj4+IENsb3NlczogaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQzNTQuMTk2Mzc5YWE1NjAu
Q29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NCj4+PiBUZXN0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5
c2hya0AxNjMuY29tPg0KPj4+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4NCj4+PiBDYzogQW51c2hhIFNyaXZhdHNhIDxhc3JpdmF0c0ByZWRoYXQuY29tPg0KPj4+
IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4gQ2M6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+
Pj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCj4+PiBDYzogRGF2aWQg
QWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4+PiBDYzogU2ltb25hIFZldHRlciA8c2ltb25h
QGZmd2xsLmNoPg0KPj4+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
Pg0KPj4+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4N
Cj4+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPj4+IENjOiBsaW51eC1t
ZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4+PiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnDQo+Pj4gLS0tDQo+Pj4gwqAgaW5jbHVkZS9kcm0vZHJtX2dlbS5oIHwgOCArKysrKysrLQ0K
Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+
Pg0KPj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9k
cm1fZ2VtLmgNCj4+PiBpbmRleCA5YjcxZjdhOWYzZjguLmYwOWI4YWZjZjg2ZCAxMDA2NDQNCj4+
PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4+PiArKysgYi9pbmNsdWRlL2RybS9kcm1f
Z2VtLmgNCj4+PiBAQCAtNTg5LDcgKzU4OSwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dl
bV9vYmplY3RfaXNfc2hhcmVkX2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0K
Pj4+IMKgIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+IMKgIHsNCj4+PiDCoMKgwqDCoMKgIC8qIFRoZSBk
bWEtYnVmJ3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsIEdFTSBvYmplY3QuICov
DQo+Pj4gLcKgwqDCoCByZXR1cm4gb2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9idWYtPnByaXYg
IT0gb2JqKTsNCj4+PiArwqDCoMKgIHJldHVybiAob2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9i
dWYtPnByaXYgIT0gb2JqKSkgfHwNCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoNCj4+PiAr
wqDCoMKgwqDCoMKgwqAgKiBUT0RPOiBEdXJpbmcgb2JqZWN0IHJlbGVhc2UsIHRoZSBkbWEtYnVm
IG1pZ2h0IGFscmVhZHkNCj4+PiArwqDCoMKgwqDCoMKgwqAgKsKgwqDCoMKgwqDCoCBiZSBnb25l
LiBGb3Igbm93IGtlZXAgdGVzdGluZyBpbXBvcnRfYXR0YWNoLCBidXQNCj4+PiArwqDCoMKgwqDC
oMKgwqAgKsKgwqDCoMKgwqDCoCB0aGlzIHNob3VsZCBiZSByZW1vdmVkIGF0IHNvbWUgcG9pbnQu
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgICovDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIG9iai0+
aW1wb3J0X2F0dGFjaDsNCj4+PiDCoCB9DQo+Pj4gwqAgwqAgI2lmZGVmIENPTkZJR19MT0NLREVQ
DQo+DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
