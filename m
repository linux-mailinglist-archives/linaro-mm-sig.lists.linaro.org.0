Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B955762D7D0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 11:16:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CA7343F58B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 10:16:44 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam04on2073.outbound.protection.outlook.com [40.107.101.73])
	by lists.linaro.org (Postfix) with ESMTPS id 0A5FB3EFA4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 10:16:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="xIu1/ZVj";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.101.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebSYXn1C5E+DPP20J8qehvI/fuccj7I4SpdESZNvHGidGT9fSqHBsjaIKSfogq+UQvv/dE3F83hxl7fre192TKDIWoGhMb7XvU13uOLgVvIgZ6P1iWNFuSCpapLA06hGcYQqIqG4hjva+I4+r/Fpmf8yuKsuixZ2lujSsuIUIPybXpeTebcwcAQcY0qeSZ2rQtYNT2U+MRZCO1tbt3olsa5U4Lu1txV64HJAtGYGmlSLMQ4dJ2Bd7htc4bXG3GXGBXA7fY6m3E1gHhC4bv+X1l5CHJsjavk85ene4RYQX2leUvLsCwGwnqDDEucZqleeg4yt6yK4x+NDmk0dVRLU4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rdNP3d7uZnqEOwrnXF29NxXc0xyThAH9iT1NgA81phI=;
 b=BwziglQdxao5IIKFEU25Dijnzot8TWhgkTVLtg7xwq7w+L9jYPS7M6VFBvuOMo9K2oY78VcSEidKWXFQVeiGiZF6u5FXx0SZd+Njj03gYOcQ/fffkDaKTW9pohDNwg1SgtphPAq9FW+Q1B/QDr+u1UbMmqrnyzKG4c7FCJz8yG/2CfylkCoy7WIN0fZd0rHQg+1Nt8wS6rLPgGES18hd+v6YaWyCP5uUnYqQqa4/PaahzSXvm4m4Ojs9w1fIodNP1H4LGfAhh/luzGf+qMc7r0oA9ZcQx2KIeNSNLcv+rUP2BQavlHlXpPDc0oj4ZP7MYTxtegweCo/Xcel6RdzUJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rdNP3d7uZnqEOwrnXF29NxXc0xyThAH9iT1NgA81phI=;
 b=xIu1/ZVjChSSwi7HNkFyOgD50MOh5/IRZ32/l0RCz8hLcn3NpDIHSlxBCQ6W6pYQq79k6mrU9tm5YFI8SGm5WqW70UXQOcRfz8yUZ0FTuHCY/5V+RQlYha0FDj1YAn9avRSs9XLchHTE0hihIJby21ms0gWfT19YBgXNe+bO/GQ=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by SJ0PR12MB5609.namprd12.prod.outlook.com (2603:10b6:a03:42c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Thu, 17 Nov
 2022 10:16:24 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5813.017; Thu, 17 Nov 2022
 10:16:24 +0000
Message-ID: <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
Date: Thu, 17 Nov 2022 11:16:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Charan Teja Kalla <quic_charante@quicinc.com>,
 Gaosheng Cui <cuigaosheng1@huawei.com>, sumit.semwal@linaro.org,
 tjmercier@google.com, Dan Carpenter <dan.carpenter@oracle.com>,
 Pavan Kondeti <quic_pkondeti@quicinc.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
X-ClientProxiedBy: FR3P281CA0066.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|SJ0PR12MB5609:EE_
X-MS-Office365-Filtering-Correlation-Id: bc88bf7c-9916-44d7-273b-08dac884c7fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0IHynsVd6teLHp2LImVccL+P1SlCO6D1VgrUWa3RUXzAWVGTIG3bsjmHabpIUEDQ8807Fto/n9mz7rM8v/1KptCdeyZ3ak8dtjGju/jMht7HcNLf5LUKjnYS6/hAs5vUt71qabL+KbLGL7MumR6IoYQ1pgkCv7Tt4LMK9B60ehHSGFo+ggnqQ86rIA66DAvsSfhbukYZWocCGrXwiyGHzPMHkhm8tKvtUmFE+92uWv04DLk+GWpKRy9VGOoWa37J12IAGGkF4Du+RwX6klViX1B8lkhV5hAnkD3ige1hpizNsnWqWKKWgsK1SkWC/lEtEqpqpeSkfSqS/TfQi3b0kAwK1FNFl8UV+Y3pG8zcKaqpGUaLnFyw6K6NcGMX0JtWPA1uIzGDtJsZhfwQKFUhzo45PR/lfab/ft7dYVmJqjAb25JMc/fPHEw/LD0uzLMQxWxmThQQP8RtZorYpAoITYG0erOgyZZjt2najz/WjmbTFiUKvnMAHMUqhQmtvt++tWlUc1Nxos2czHN4ypS0tJqE+96a56FQjqWQBgN2HoecpnEggAWf4TCmaV3klLBjo2iWbstYJ2o/Zje1AVXEE1BEEiyfSGpSb7F8vOddVFc2tSujgW6/5AAvyLqcgyC4fRWuAv17tXu7HcNFNU9teS+wzZc/riRlbStv4MBq7vgkmZPQCo7/g3BLaX+A5a8rICWdeoAYjsROAXUm1Qxk1n002tkE4NnSmShdIgiSHjPnMk0rM+IGWcKq0qHzhRbJa3PcNDaXhSEwvjuRVXgLnA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(451199015)(478600001)(45080400002)(31686004)(53546011)(6486002)(4326008)(66556008)(66476007)(8936002)(2616005)(110136005)(6666004)(8676002)(66946007)(6512007)(83380400001)(26005)(41300700001)(2906002)(186003)(5660300002)(86362001)(31696002)(38100700002)(316002)(6506007)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZlkzVVU4cloxUG11aDBwbWJ5dTQ1WXNtVXVjbUx0SHUxRjdNN3RqamhoczZE?=
 =?utf-8?B?RGpFYVlSaUg4aW1RTkM3Wi92YXNsTVF2VGFIQk16TnRYaG5jY2kzMjVMalhK?=
 =?utf-8?B?N01kU1RTUkM2dmRGZVN6cmVMQXdrQTlRZk44MDA5YVdCN2Zxc0U2Z3ZBdnZl?=
 =?utf-8?B?amNLQXRZNVpMNXlKQnRDRzRCa1ZnTDh3OUVJRUVnY1FyOUhRd2M5VXN2UmxF?=
 =?utf-8?B?WDkyb0x1WVRtYWlEc2FhUnNTZ2szcDNsZklLTHNsVjN2cHlNbE53cGtMcEFT?=
 =?utf-8?B?MzFvbTV6d0g2UmFuT1U0Q2p1cDBxdVppWDhCOVFidlpuVUloMW0rcklMMHZI?=
 =?utf-8?B?L1VHOTNlQUp1VjJ4Q01LUHBjU3dra25SOUVJcWpqY1kwVGkxaU5XVFBrWlBN?=
 =?utf-8?B?ZFZhV2h4dTlsOHBrVHpib1JaRU5peStnWVpNSG5JSHA1bjlPUE05Y0VZbW9w?=
 =?utf-8?B?SzR1NXE1T3FqWExCamkrQnFKNVBhaXJXKytOSmZEajROWTFxQVJWaG9ET053?=
 =?utf-8?B?SFFnaGNGOU83cVFmcWVqUlZUNitHRGFaakdBSzhTZVduaG8yZzlYRVc5RnJm?=
 =?utf-8?B?V05JZXl1aHN4NGQrdy9yWXVQUThodUJTQmVGcFRLTkJRSkdWV3lsOXcybkJS?=
 =?utf-8?B?V2hoa05wNVpxMnBXT09zL0lmeWhUTXBJYW9HbVhOOXZwOGdTQnVVb0JIRGVw?=
 =?utf-8?B?TW9VaFFhY1BRbkIzRWJyKzkrSTI4YmwzcUJzU3htN0NkMHJoNXZSWisxREwv?=
 =?utf-8?B?aVZIRzhQWjNsUmNNeDNWeUxNVXpVOTBSNUFCWUd5dGZpUXBmZ2ttcng0SjNJ?=
 =?utf-8?B?bFZEb0JEYmtrdkJKUEpXdnQvQURKODB4OEROV0t3M2RUZ0VlRHhZbXh1YmJS?=
 =?utf-8?B?cnlKMldFVDZqOGZEOXROT0lBdS9ZYjduMVNUcWViOGlJOHRaVXJpVWRzTENv?=
 =?utf-8?B?czlnU2twY0ZESzFPdElNZ0tPWTV1K0V3ZkFEbnVZUEpOZGxuRmtGVjR1WFRs?=
 =?utf-8?B?WnRWZGlkbzNvcCt5NERkNEZYYUJ3bm1tSy9YUXpYZVBUWEo1V3VsWDZkVUJC?=
 =?utf-8?B?Qlc2ellhZS9Xd1BxL2d2ZlhhZzR5OUJYSUkrelQzN1FacVR1UnpxcmVPekda?=
 =?utf-8?B?RHlWaTJBODI3d0tXVjVGSjRGV1ppSjZiOUs3WXU0VG8yVVpUUG1IMTQ4eXVB?=
 =?utf-8?B?dkplekZlOGFYRHEyNkg4YWNGSzRpOWFBbzl6eTgyNDVXU0JYQTdmNm5OcXhR?=
 =?utf-8?B?NnZaZE1obEU2SEI2dnkxN2c2eFMzV2ZrMzRkckh6a2dLV0szVXNMcGYvTVk1?=
 =?utf-8?B?aktvS0dtQUNDYzdCUTAxek1HakJJZHRwaFBoS3FWcmJKWE1kZTY1ekRBSXBw?=
 =?utf-8?B?NHFwRzdnSEVJaitoYkE2MGx2amJSOC9CSnJuNE9XVHRPZVIwdlU1dlZmWmJD?=
 =?utf-8?B?YytrU0cwMDBJWFFVa3NaMk5kN1NaOHVEWjEwTDJpVFVrV291WXdsc2NTQzM5?=
 =?utf-8?B?UktvOUdWV0xsSDRHSGxHMU5TKzFhaHRqYjdaVi9NUHprMDRNYmdlYVlSTjhM?=
 =?utf-8?B?b1VRbFIrakJ6bTVxZ0xtczFCcGdKSDQ2ZjJNUG5KdDhVeUVUNnFDelZhQ05Q?=
 =?utf-8?B?WDN5VWk3MW81T1ZCRHN3Sk95VjBxbGxKcjVQd2xZNTJsa0h3a09YMzFVZUlS?=
 =?utf-8?B?ZzFNdkwxd3dXZGg0L01MZEFhWi9KOGN2MEZXM0RHYVZSajBpZmFVQksrcWdL?=
 =?utf-8?B?SWsraE1LUDl2a1dsaDFHeVlCYUdyb0ZteXpsRGFmdFhKYmcxOFIvTTRkZlEy?=
 =?utf-8?B?TTl5VG50N1dXQTRmSFRYenhwV0RHemx2ZUhhYTB6V3NPQnVDUkxMRER3TjdO?=
 =?utf-8?B?ejAvS2Q5eXN6Nk96MmxzcDVVYmh3dEVaQXo3Y1RZbk83ZjVBOVV2Y3hlVS9o?=
 =?utf-8?B?NUt6d2NzeXZ4endwdlRUOFo3SkRTVjkzWm92aW5SSmNRSFd0WXY0TzFubXpJ?=
 =?utf-8?B?L0RvK2k4WEdYSkV1MGlTZ0pjT2xkODRDWGhFYmttanVuVUZrSjBBYUdyNml6?=
 =?utf-8?B?N3hwaXpwTkIxMVRaNUc1d0JqM1lZNmVQSzhteUxyRzdqb2tJRG5JL1dnajZ3?=
 =?utf-8?Q?ehpCnF7evC/iHDxwI6O5wjdPM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc88bf7c-9916-44d7-273b-08dac884c7fa
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 10:16:24.3738
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q+4GwVmgfFMRGFvUWhDxxWJEsdyrmHNsTxsH70jIZA/q96R7S6A3VdsyGqsUJoCJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5609
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----------
X-Rspamd-Queue-Id: 0A5FB3EFA4
X-Spamd-Result: default: False [-11.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_IN_DNSWL_HI(-1.00)[2603:10b6:408:43::13:received,40.107.101.73:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2603:10b6:408:43::13:received];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-0.960];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.101.73:from];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[]
Message-ID-Hash: 6LOGGXMSM7YW7GA525P3JVQ4YS3BS5KR
X-Message-ID-Hash: 6LOGGXMSM7YW7GA525P3JVQ4YS3BS5KR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6LOGGXMSM7YW7GA525P3JVQ4YS3BS5KR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTcuMTEuMjIgdW0gMDg6NDggc2NocmllYiBDaGFyYW4gVGVqYSBLYWxsYToNCj4gU29tZXRp
bWUgYmFjayBEYW4gYWxzbyByZXBvcnRlZCB0aGUgc2FtZSBpc3N1ZVsxXSB3aGVyZSBJIGRvIG1l
bnRpb25lZA0KPiB0aGF0IGZwdXQoKS0tPmRtYV9idWZfZmlsZV9yZWxlYXNlKCkgd2lsbCByZW1v
dmUgaXQgZnJvbSB0aGUgbGlzdC4NCj4NCj4gQnV0IGl0IHNlZW1zIHRoYXQgSSBmYWlsZWQgdG8g
bm90aWNlIGZwdXQoKSBoZXJlIGNhbGxzIHRoZQ0KPiBkbWFfYnVmX2ZpbGVfcmVsZWFzZSgpIGFz
eW5jaHJvbm91c2x5IGkuZS4gZG1hYnVmIHRoYXQgaXMgYWNjZXNzZWQgaW4NCj4gdGhlIGNsb3Nl
IHBhdGggaXMgYWxyZWFkeSBmcmVlZC4gQW0gSSB3cm9uZyBoZXJlPw0KPg0KPiBTaG91bGQgd2Ug
aGF2ZSB0aGUgX19mcHV0X3N5bmMoZmlsZSkgaGVyZSBpbnN0ZWFkIG9mIGp1c3QgZnB1dChmaWxl
KQ0KPiB3aGljaCBjYW4gc29sdmUgdGhpcyBwcm9ibGVtPw0KPg0KPiBbMV1odHRwczovL25hbTEx
LnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZsb3Jl
Lmtlcm5lbC5vcmclMkZhbGwlMkYyMDIyMDUxNjA4NDcwNC5HRzI5OTMwJTQwa2FkYW0lMkYmYW1w
O2RhdGE9MDUlN0MwMSU3Q2NocmlzdGlhbi5rb2VuaWclNDBhbWQuY29tJTdDMTE1MjkyZGQ3YTg3
NDI3OGIzZWQwOGRhYzg3MDEzMjAlN0MzZGQ4OTYxZmU0ODg0ZTYwOGUxMWE4MmQ5OTRlMTgzZCU3
QzAlN0MwJTdDNjM4MDQyNjgwOTYwNjI3NzU2JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SldJ
am9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFXd2lMQ0pYVkNJNk1u
MCUzRCU3QzMwMDAlN0MlN0MlN0MmYW1wO3NkYXRhPU5ZTklBSmp0JTJGU1VYb2Mzd0N6MnZQdm8l
MkJlJTJGSVZjQUJFQTJKWVo4JTJGMnEwNCUzRCZhbXA7cmVzZXJ2ZWQ9MA0KDQpUaGF0IGRvZXNu
J3QgbG9vayBsaWtlIHRoZSByaWdodCBzb2x1dGlvbiB0byBtZSBlaXRoZXIuDQoNCkVzc2VudGlh
bGx5IHdlIGhhdmUgdHdvIHNlcGFyYXRlIHRlYXIgZG93biBtZXRob2RzIGZvciB0aGUgZG1hX2J1
ZiANCm9iamVjdCBoZXJlOg0KDQoxLiBJdCdzIG5vdCBjb21wbGV0ZWx5IGluaXRpYWxpemVkIGFu
ZCB3ZSBjYW4gY2FsbCBrZnJlZSgpK21vZHVsZV9wdXQoKSANCnRvIGNsZWFuIHVwLg0KIMKgwqDC
oCBUaGVyZSBpcyBhY3R1YWxseSBhIGRtYV9yZXN2X2ZpbmkoKSBoZXJlLiBUaGF0IHNob3VsZCBw
cm9iYWJseSBiZSANCmZpeGVkLg0KDQoyLiBUaGUgZG1hX2J1ZiBvYmplY3QgaXMgZnVsbHkgaW5p
dGlhbGl6ZWQsIGJ1dCBjcmVhdGluZyB0aGUgc3lzZnMgc3RhdHMgDQpmaWxlIGZhaWxlZC4NCiDC
oMKgwqAgSW4gdGhpcyBjYXNlIHdlIHNob3VsZCAqbm90KiBjbGVhbiBpdCB1cCBsaWtlIHdlIGN1
cnJlbnRseSBkbywgYnV0IA0KcmF0aGVyIGNhbGwgZnB1dCgpLg0KDQpTbyB0aGUgcmlnaHQgdGhp
bmcgdG8gZG8gaXMgYSkgZml4IHRoZSBtaXNzaW5nIGRtYV9yZXN2X2ZpbmkoKSBjYWxsIGFuZCAN
CmIpIGRyb3AgdGhlIHNldHRpbmcgZF9mc2RhdGE9TlVMTCBoYWNrIGFuZCBwcm9wZXJseSByZXR1
cm4gYWZ0ZXIgdGhlIGZwdXQoKS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBUaGFu
a3MsDQo+IENoYXJhbg0KPiBPbiAxMS8xNy8yMDIyIDExOjUxIEFNLCBHYW9zaGVuZyBDdWkgd3Jv
dGU6DQo+PiBTbWF0Y2ggcmVwb3J0IHdhcm5pbmcgYXMgZm9sbG93czoNCj4+DQo+PiBkcml2ZXJz
L2RtYS1idWYvZG1hLWJ1Zi5jOjY4MSBkbWFfYnVmX2V4cG9ydCgpIHdhcm46DQo+PiAgICAnJmRt
YWJ1Zi0+bGlzdF9ub2RlJyBub3QgcmVtb3ZlZCBmcm9tIGxpc3QNCj4+DQo+PiBJZiBkbWFfYnVm
X3N0YXRzX3NldHVwKCkgZmFpbHMgaW4gZG1hX2J1Zl9leHBvcnQoKSwgZ290byBlcnJfc3lzZnMN
Cj4+IGFuZCBkbWFidWYgd2lsbCBiZSBmcmVlZCwgYnV0IGRtYWJ1Zi0+bGlzdF9ub2RlIHdpbGwg
bm90IGJlIHJlbW92ZWQNCj4+IGZyb20gZGJfbGlzdC5oZWFkLCB0aGVuIGxpc3QgdHJhdmVyc2Fs
IG1heSBjYXVzZSBVQUYuDQo+Pg0KPj4gRml4IGJ5IHJlbW92ZWluZyBpdCBmcm9tIGRiX2xpc3Qu
aGVhZCBiZWZvcmUgZnJlZSgpLg0KPj4NCj4+IEZpeGVzOiBlZjNhNmI3MDUwN2EgKCJkbWEtYnVm
OiBjYWxsIGRtYV9idWZfc3RhdHNfc2V0dXAgYWZ0ZXIgZG1hYnVmIGlzIGluIHZhbGlkIGxpc3Qi
KQ0KPj4gU2lnbmVkLW9mZi1ieTogR2Fvc2hlbmcgQ3VpIDxjdWlnYW9zaGVuZzFAaHVhd2VpLmNv
bT4NCj4+IC0tLQ0KPj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMyArKysNCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4gaW5k
ZXggYjgwOTUxM2IwM2ZlLi42ODQ4ZjUwMjI2ZDUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBA
QCAtNjc1LDYgKzY3NSw5IEBAIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBz
dHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pDQo+PiAgIAlyZXR1cm4gZG1hYnVm
Ow0KPj4gICANCj4+ICAgZXJyX3N5c2ZzOg0KPj4gKwltdXRleF9sb2NrKCZkYl9saXN0LmxvY2sp
Ow0KPj4gKwlsaXN0X2RlbCgmZG1hYnVmLT5saXN0X25vZGUpOw0KPj4gKwltdXRleF91bmxvY2so
JmRiX2xpc3QubG9jayk7DQo+PiAgIAkvKg0KPj4gICAJICogU2V0IGZpbGUtPmZfcGF0aC5kZW50
cnktPmRfZnNkYXRhIHRvIE5VTEwgc28gdGhhdCB3aGVuDQo+PiAgIAkgKiBkbWFfYnVmX3JlbGVh
c2UoKSBnZXRzIGludm9rZWQgYnkgZGVudHJ5X29wcywgaXQgZXhpdHMNCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
