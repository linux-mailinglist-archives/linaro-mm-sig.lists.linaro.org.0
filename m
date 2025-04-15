Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CC8A8982A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 11:39:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D629410EA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 09:39:49 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2078.outbound.protection.outlook.com [40.107.220.78])
	by lists.linaro.org (Postfix) with ESMTPS id 481BA4599F
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 09:39:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=jHnPZFXz;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.78 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bXI0CGuwtKUiPVMTH26nzJImIoDhwm67IsdqxPEF1Gmh3WPprqMkGmiACFt6yGcXh3x61bO5YCZY/XdNzDq99j7P29qzaPWv7MTsUeWj42fC3lWxHMyf8+MaXQtHg7pt43w+OF8PZ8Q6H9LTCko9/VLnL55Yk8qgb2zR6FfEwhiSCMyXDfy+R6jbdJXFQ5stLYYM+N3WgBXXkukhaIdStwEAav+BbtDbG5QL0rt5MLqSDBFakXTxHh+tBZmTeK15SO3tprPDqr9G4YMixwkjn8RZhEuTFLHpni/6nKTMZtoI4TMfgMV1yAelpMjaTZXG300QYIEXV4TuoZfug7ivuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXpr+1MBRgtJhKaHdzSxtvRVt0RJrlpE7uJrpt8dNdQ=;
 b=rzd9bW7zEMe/oDGM/5FDsOTMnXUbEX7jaeX8Jh5A7NKDvwm7Zof6jD1mskUu7uWxHE1TQrEoCB1a0RyvYaalrqtnhAtFOqGgFEg+NalHee/pLraFkMYqdzpPZRuWf2wPGeKTe14lFKsV2yoaaoFnUaMA4dYisosnQxFQckRu68t4B9QNXJG9f9wDPTl658D7SmLB57adSYYib8bDvmrc3QFZZQ8Eec1FBmIjbOMUbnZC9re33HuXaph9RwjbW0GbFAsrgMHdnPZKBrK0NUU2hT0NHB8Pb2omW+chW3BpbLcfUtCi41SS9y4Eapqfp2h4wy9DTlnEF/MmdUOB28FrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fXpr+1MBRgtJhKaHdzSxtvRVt0RJrlpE7uJrpt8dNdQ=;
 b=jHnPZFXzl55mN9Xb3BvaIL1oXUtX988d3hd97SuFh9bMQSsZR70glrVSloQFIMUU6WHn73SRaXa1oQi+afjHj3DUm35Co5ABSdOM6fR/qb50FgFjgukt9Kk62LzAZs1FDczbuba4ljpnYgJRZR4pzg+tlr2YQORZKAd3M80Slwo=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB7307.namprd12.prod.outlook.com (2603:10b6:510:20b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Tue, 15 Apr
 2025 09:39:30 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 09:39:30 +0000
Message-ID: <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
Date: Tue, 15 Apr 2025 11:39:24 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250415092057.63172-1-tzimmermann@suse.de>
X-ClientProxiedBy: FR3P281CA0134.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::18) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB7307:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e1c4caa-d3fc-4f38-dc94-08dd7c016bb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cGNHMGZtT21JbVk1d2tBWktYQnlKZnRqbFRxVFljdE1QQ0tnUkpKcTFqUTNm?=
 =?utf-8?B?SXh1Z2NralJmci96eERQZXd2eHNwRDFjSHFPV3NZajdDSkU1Y1VTbG1kWXcz?=
 =?utf-8?B?MkFYUEN6TFc3ZnZ6SXFNRkl6dmZGdmRCNy95MmhITnJHS3BZYlF5SHl0MzQz?=
 =?utf-8?B?azJIMEpwbVk2RDQ1V2lzNVUwSFFKSEdHTXc3KzVjRUFsZk1hckxRTDU3NHdp?=
 =?utf-8?B?aDloUTUzTkNKZm9lZU1tTjk3aTRvQ21sbEhkVEdEUTVQNmR5UEhwK2NPZ0Zy?=
 =?utf-8?B?ZEV1STRPR21OZkhMR2kyNzNBRkdQN3o0clRzYVR1c3lUVGZmeTBTZFVZM3ZK?=
 =?utf-8?B?V1hWbWhFWFdOd0FKbmhlSGt6K09ybUI0eVVCMDhMR3BsdmNHQnlNOTRvOGNk?=
 =?utf-8?B?bHZETGx0c1hpTWVqaFViWE5XbHF5N2RiTGl5Q0o2N3pBS2xCMTROV2tBMGN6?=
 =?utf-8?B?ODBBVU9NcGtlbzhpMDZvTDVUTmpabHF6TU9VQVJPVmNHZXU1eGpLZndZNWht?=
 =?utf-8?B?NjV1aGgwZ2lmRFp0aVFXaDBKK3JjbllVRE9kTzE0ZUxPVE9oOTdLdjBpNkZm?=
 =?utf-8?B?bjdzRTg5UXZ5VVBLTC9Ca3N0SVRWZ3NwWjFBSzFKOHYwSkJDRFdPenUxVExa?=
 =?utf-8?B?bEwzOHdKYWo0RUdZMms2WXlJMDdMVGs0MXovaWd5Z2FZMmFWM2VSTktOQ2Yw?=
 =?utf-8?B?b0o5TzZCalVrYUdFV28weVd6MkdIWTRKVFAyeDRmYTJiQldPdnZXWU00d0ox?=
 =?utf-8?B?Y3hqWElmcFV4RzRVdHJOSWdhMXpramlJM3E4M2RFbno1enVJT1JXZVgwMUZq?=
 =?utf-8?B?YzVpR2doVndFalRJRXBVUGZPOXJXRHhMZDh1aVZ5OTBtcmh1Z2xEbHE1anY4?=
 =?utf-8?B?dG9kL2d5dG9QVGQ2UU5DMnBNdkZUOTllWlN2RkxycUtBU2tMZXduY2IxODA5?=
 =?utf-8?B?QWxjUVE3MWFueVFqZTdYYUkwMEVuYk1weWRMUFNqTWdOeFZhZkgwVDA5S0F0?=
 =?utf-8?B?R0x0c3REcHZqa0x1UHAyTmRPWmgrNXFEbjZ0NTlTUFpOUGxGV0tCa3dDNWxZ?=
 =?utf-8?B?SnBqdXRhcWxHTmRDVU0xRW11aUVYRXVlOEJHU0JyaU9MVzNIOFFQeTRrRGJD?=
 =?utf-8?B?TWdiRk5YUGNqTk8zU0ZrWHYxS2NKRFllOEJvK2t6a2U3SHRwYnpvL0EwZ3lH?=
 =?utf-8?B?Sk52NjdCZWFiYzh6b0lXYm12bGdUd05MN2dib1o2QTFxNXhpZ2h6WkNTYWdo?=
 =?utf-8?B?Q2paZ2NyS05XLy82ektGbjdhRWNFd2tuTU1RclhZd01WMjQrY3k0emZtaFlB?=
 =?utf-8?B?YXl0ZTdaWVBSMWVlTmlqMEY3TTlQczVwcFN4aEd5UEFDQmM1UVlJa2VibDF6?=
 =?utf-8?B?V1dJUHd0amRnK2ppRlY3TDZZTXNQNm1obkdWaDdhVk14bW42dnhlRHNLd25Q?=
 =?utf-8?B?ejAzdGdFNDRKV1oxYktRZjJmSyt6U3RiamVtdW9yd0UwOXBzQXRURmIvRkcy?=
 =?utf-8?B?cGgrNE90UENhM0dwckpwbXZWUE10bVRoajdNQi8zejRWbFZaR0hyRVhlQ0lx?=
 =?utf-8?B?YmRSMVRBMmkzYnE1Ky9aV3g5WldDMlRDSVo0MXJoRmxzcFlSajBva2FLVmlh?=
 =?utf-8?B?eHR1bnY2VHc1cmg0bEYxMTdiZnN5RVVSN1NkdGQ0b3dQa3FHdDRCYkZ2d1hP?=
 =?utf-8?B?R0dPcDRtTkNTQWFlNW1taGpuMFgwZkF0TnZOOWdXZlVjSDhDaHVSM0J6a21M?=
 =?utf-8?B?TGlTYWFjUnBSQTNvenRwZFpleFVpMkV6OXo2RWV5MjBVdSsrTWVsQjJkazg0?=
 =?utf-8?B?MjJ2RURBS2I0c3BNdkwrNFIvVEZKUGhNL3JLQjZjdi9YOXdZeWM0Y2ROaTZv?=
 =?utf-8?B?aDJnQzBIMURRbGVseTFMQkhFVXRpMjM0d3I2YmZ0WXQ2Zk1ab0F6aEltdzJo?=
 =?utf-8?Q?kfFHyLxMIUc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RmprbFB3ZXk3SDlCaWJNaTh5dE9Xa3hDSmZLK2hYQ2Q2WWtKYWFBaVAveTMr?=
 =?utf-8?B?Z3I3UDBXak8waWhVejNXMjBoU2lBZUFXZmkzSExLRldhVk9Rb2Q5RzlNbWhY?=
 =?utf-8?B?d04zbHF1eGJmTjNzczZlRTR4ZW9XZEc0eXFadkY1dk8vM1NzTkc5aVdJNjBk?=
 =?utf-8?B?bUVwSFE0cWZXTE9WY2ZzT2I0YndZclJ6Rzg2WHJWY0ZJKzRiSytNcDFKMTRq?=
 =?utf-8?B?QzhRTytJUVhUQ2srcFUrSUhvWHM0RjdrKy9XcVovN2FLNm02dUx3R1hIbU9p?=
 =?utf-8?B?NFMzU21YRUhvRGFPVTRCc0d2WDFPRTRnbTBxa1VVL0MxMGFQZDlZNU5XNlBt?=
 =?utf-8?B?akx5N24yemVKOGx2b1QvTnF3MlNwRHdWdDNhU3c5SFpZU0lidGZqdmxjdkxF?=
 =?utf-8?B?cHN3Y1hUZkFZT1hnbTV1Wmhyc1lUK1FpdFJndEFEKzJRMjV1aUNQaGxjRTlp?=
 =?utf-8?B?WVNTbm5JMGlReHVyYkdmamxUTTB3bk4rMUJjRXIrdnp0NmdFcmMrTTQyUlBG?=
 =?utf-8?B?TkVtbXMzZ0U1VStuTG1yNUZZVU0weGJxcEFIWlZMdlUwSlc3NVpZT0xRcHNR?=
 =?utf-8?B?T251citNZGVQSWJvamFzdDQ1ejZvZ053TmFMa2pxbzV0MitRWWtmRU0wekRo?=
 =?utf-8?B?REdHMGVNcVpYWDg3S21Jd0Yza3dFTXZ3TjlFMGN1b1R3dDU3YlBkUGRsMHF4?=
 =?utf-8?B?MWZnREZVeERCWjcvelhDbFFyMzdWNXdtN2F1UEJEVkVweXBSeDU4VFpFSkhE?=
 =?utf-8?B?L2lidGFxRzk0VDhXNGkrWmNNMlFVNWRYVjJMN3BvdnhUL1hqQWRxWGJWekJo?=
 =?utf-8?B?YS9OV3ZGcnEzUnlBc3VKeHRWam40eUV3K1VLc3UvYTI5K1VaODhsL2dYcUlN?=
 =?utf-8?B?bVdJaHB6SnFFUU52SlUzanZuS25wLzNpWWJlMkFGVzlramhPS1BVYml3MGR2?=
 =?utf-8?B?bHlJTkpsSFR2dzF6bkxkcSs0K0xnNlgwWUZxWHVOS1J4VDg3WlMzWVB5UVRp?=
 =?utf-8?B?Z3o2ZkVsbStrU0pkWmppcG1jYkRCVmpWNlplSUltM291N0tEU0RhTUFwaTRy?=
 =?utf-8?B?ZkJIRHlFcWN6RnFWWkF1aHd4TFlrQkR4OGl3bExNNXp3bktmZW04bUl1WWZi?=
 =?utf-8?B?NUpyQUpneXZtb0k3cUdJZVp4MVJidkR3QWZjUFBvSjNzK2ZPSFVZMzJYeVFr?=
 =?utf-8?B?anhWdkEzbVVMbUxnb2w5Uk9LRjU5OEdiTGp5b2V2bkJ3UXdITzU0SHZFd1pE?=
 =?utf-8?B?UUI0NXExc3oyLzBrOEJRcnpwR3NKc1JnQ1hHTmNPKzRwWW0vakNIbGd5NXZ0?=
 =?utf-8?B?U3pEdlhGUWhoajhzdFpoeU5QRnRwYzRhY0VnYWMyOVQ5Ri9za1pBTUtLY1Bp?=
 =?utf-8?B?N1FxK2NRTzNFVENDMlFSZndEejcrQUg3SUlmNkp3b3YwcitGaXhZZzhwTHg5?=
 =?utf-8?B?SzY0aGZKbDlWeWFsMUVueWM2dXl0N0dqbXJHVFJHanRQaDRqU0lnZmJDTWlC?=
 =?utf-8?B?M2svc2R3REJuWUxqTzVPV3Zpdk1CeGdjNjVEN08rc0NPZlNyTmdBcGFDWmJC?=
 =?utf-8?B?UUlMNDNkWFhiZGdPSmwwd3JBbHRVdzIzMjZXS2ZEVm1ubm9ETCt0RTZtaU9D?=
 =?utf-8?B?Z0ZDeEVWQ0VzT0h3QVlzQTl4VnBMeE5NWllFYU1sRU1Kb001elU3SXdwOEVZ?=
 =?utf-8?B?cU5BVktKTjFwbDArVEhtc3MybUNKRy9CWGdOS3pEM2d2eEFOREsyNWJKa0l0?=
 =?utf-8?B?MDVDMHYwNllUbFM0L1ozbGRyRnN2bkNTSjdPZDYrVVppajluY2lnajA1M2xq?=
 =?utf-8?B?UFhxUC9zV2lzZkNMSUJlSDA3VU1iNENQdHFDYnhaTWtqNlRzVXpxbko5RjJi?=
 =?utf-8?B?aTZ5RUwwOUhKZ1ROZjQyWGZpM1pDRys5a0VhVkJpcVdQckpPWC90ZkUvcDE2?=
 =?utf-8?B?RkMxck1sTnJqMVNsOWlRQmJpcEt6bTJaTEMycy9ZNlNhVkV4NDVVUHRTSTIy?=
 =?utf-8?B?V3JJQ2dBaTdXaTMyb2xXYWEvNFZzYUpSS0s3eUt4QW9BWS9hV3YwdmNlTDVO?=
 =?utf-8?B?WklzMlhaWVlsN2RuQlEwcVVtcEhzMlVnWndEZ1h2cXUya1ExbjBpWHFFUjc5?=
 =?utf-8?Q?9NbfqohTldEU3KpA6v3Bg7npf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e1c4caa-d3fc-4f38-dc94-08dd7c016bb1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 09:39:30.1231
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NDEF7pWokltRW0OQ75CugFaDxSxuRcj7Z4+vA/1GT90BZJl9DafhGtZzeBtFArVL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7307
X-Rspamd-Queue-Id: 481BA4599F
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.220.78:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[linaro.org:email,ffwll.ch:email,amd.com:dkim,amd.com:mid,amd.com:email,intel.com:email,lists.freedesktop.org:email];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.78:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[suse.de,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.220.78:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SMFNNH2ZHNWS2J7ELUOTJYHOY5XUTOO4
X-Message-ID-Hash: SMFNNH2ZHNWS2J7ELUOTJYHOY5XUTOO4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SMFNNH2ZHNWS2J7ELUOTJYHOY5XUTOO4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTUuMDQuMjUgdW0gMTE6MjAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4gVGVzdCBz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0ZWQgb2Jq
ZWN0cw0KPiBkdXJpbmcgY2xlYW51cC4gQXQgdGhhdCBwb2ludCwgdGhlIGltcG9ydGVkIERNQSBi
dWZmZXIgbWlnaHQgaGF2ZQ0KPiBhbHJlYWR5IGJlZW4gcmVsZWFzZWQgYW5kIHRoZSBkbWFfYnVm
IGZpZWxkIGlzIE5VTEwuIFRoZSBvYmplY3Qncw0KPiBmcmVlIGNhbGxiYWNrIHRoZW4gZG9lcyBh
IGNsZWFudXAgYXMgZm9yIG5hdGl2ZSBvYmplY3RzLg0KDQpJIGRvbid0IHRoaW5rIHRoYXQgdGhp
cyBpcyBhIGdvb2QgaWRlYS4NCg0KVGhlIERNQS1idWYgaXMgc2VwYXJhdGVseSByZWZlcmVuY2Ug
Y291bnRlZCB0aHJvdWdoIHRoZSBpbXBvcnQgYXR0YWNobWVudC4NCg0KPiBIYXBwZW5zIGZvciBj
YWxscyB0byBkcm1fbW9kZV9kZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0IGV2ZW50dWFsbHkNCj4g
Y2xlYXIgdGhlIGRtYV9idWYgZmllbGQgaW4gZHJtX2dlbV9vYmplY3RfZXhwb3J0ZWRfZG1hX2J1
Zl9mcmVlKCkuDQoNClRoYXQgaXMgZm9yIGV4cG9ydGVkIERNQS1idWYgYW5kIHNob3VsZCAqTkVW
RVIqIGJlIHVzZWQgZm9yIGltcG9ydGVkIG9uZXMuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4NCj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2Uu
ZGU+DQo+IEZpeGVzOiBiNTdhYTQ3ZDM5ZTkgKCJkcm0vZ2VtOiBUZXN0IGZvciBpbXBvcnRlZCBH
RU0gYnVmZmVycyB3aXRoIGhlbHBlciIpDQo+IFJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNo
cmtAMTYzLmNvbT4NCj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwv
MzhkMDlkMzQuNDM1NC4xOTYzNzlhYTU2MC5Db3JlbWFpbC5hbmR5c2hya0AxNjMuY29tLw0KPiBU
ZXN0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KPiBDYzogVGhvbWFzIFppbW1l
cm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFzcml2
YXRzQHJlZGhhdC5jb20+DQo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPg0KPiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gQ2M6IFNpbW9uYSBWZXR0
ZXIgPHNpbW9uYUBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+DQo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4NCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnDQo+IC0tLQ0KPiAgaW5jbHVkZS9kcm0vZHJtX2dlbS5oIHwgOCArKysrKysrLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+IGlu
ZGV4IDliNzFmN2E5ZjNmOC4uZjA5YjhhZmNmODZkIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2Ry
bS9kcm1fZ2VtLmgNCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQo+IEBAIC01ODksNyAr
NTg5LDEzIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX29iamVjdF9pc19zaGFyZWRfZm9y
X21lbW9yeV9zdGF0cyhzdHJ1Y3QgZHJtX2dlbV9vYmplDQo+ICBzdGF0aWMgaW5saW5lIGJvb2wg
ZHJtX2dlbV9pc19pbXBvcnRlZChjb25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4g
IHsNCj4gIAkvKiBUaGUgZG1hLWJ1ZidzIHByaXYgZmllbGQgcG9pbnRzIHRvIHRoZSBvcmlnaW5h
bCBHRU0gb2JqZWN0LiAqLw0KPiAtCXJldHVybiBvYmotPmRtYV9idWYgJiYgKG9iai0+ZG1hX2J1
Zi0+cHJpdiAhPSBvYmopOw0KPiArCXJldHVybiAob2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9i
dWYtPnByaXYgIT0gb2JqKSkgfHwNCj4gKwkgICAgICAgLyoNCj4gKwkJKiBUT0RPOiBEdXJpbmcg
b2JqZWN0IHJlbGVhc2UsIHRoZSBkbWEtYnVmIG1pZ2h0IGFscmVhZHkNCj4gKwkJKiAgICAgICBi
ZSBnb25lLiBGb3Igbm93IGtlZXAgdGVzdGluZyBpbXBvcnRfYXR0YWNoLCBidXQNCj4gKwkJKiAg
ICAgICB0aGlzIHNob3VsZCBiZSByZW1vdmVkIGF0IHNvbWUgcG9pbnQuDQo+ICsJCSovDQo+ICsJ
ICAgICAgIG9iai0+aW1wb3J0X2F0dGFjaDsNCj4gIH0NCj4gIA0KPiAgI2lmZGVmIENPTkZJR19M
T0NLREVQDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
