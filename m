Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF8569C664
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 09:16:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E11B3F31A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Feb 2023 08:16:39 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2073.outbound.protection.outlook.com [40.107.94.73])
	by lists.linaro.org (Postfix) with ESMTPS id 222223E826
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Feb 2023 08:16:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=17YZVwdA;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLTjAMiDk5HYX2E6tb5L0IjYpQZlD5Xur9GHlT793xdhemXq46dLRGB0muPnAtpz44h8fIQT/S9TlNLCkBo4fN5KPzr17ZxjLxoLORjgA0vlWloOnJxNgljm0R2ZxxpndRbO+/ldF4Prj6FBD1QhIqp34pUt7XkUNam/6rdJl1fDbD3GjIWsVouvOLoYRxyGSzNaTAq77svHODWkZlkr2FdDKD7Hd9dDdtGEWN5LIQOWdnMqE6nfobrThYnI0lS9Si0n3lEpwxowbH5kPnRFiRm3p+EtjRMeSBbJBZL8AUNhVWUkW7wc8PoJm3gs+DuXhIW7IS+/CjlqYcEea7qPRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uPIH0SA/LOj4D7ZOI/QvZ3/L2vEdx3sArdEG6dfNj4g=;
 b=MBSvYy+sfDS1g7Hq/djd96H3qEGz2RSxoKO3iM6+WELuCYfMnM9vltxbI7rSVxTh46Gtpn40GY4TFJASf9V8mWjwPUPq2tjNnXCYaIi2UlP+JaTq06VCMUfeA0lnpAFSfpAG7/1hPEpZARLOmVmFHL/TOBnmAADwW02xt4HcwZiMNEMaiXNip2ax3fx5Ply0bxOKZE1qhO1VhkwJX4zjbniqRPy5ItOlPDRaUlIYtKzD+cW8bDQI0r3sXoA0z3fxhrD8ObnDs+A0/lr4qGfen4t8Th9B+yOO2IErDkTlffDstF7Zn/A1zEp0D7v/Cmg4kgke9H4Mi0oJeY9fJ78LCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uPIH0SA/LOj4D7ZOI/QvZ3/L2vEdx3sArdEG6dfNj4g=;
 b=17YZVwdAqNWFgSxiI9WIn4hCUnepBiiJEODdmKsfBIw8hhR2Vkvq3QdyRa5sSqnRykjABZm5AYbaEv7GJMRtKllwYpKXkc/28BhrmJiSrQK0Yg0q+tYyGQw332obO6yX7BX7W81zL+U1qt7yiYXQCPtRf6DLryPArJLiN3hGLNg=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA0PR12MB7603.namprd12.prod.outlook.com (2603:10b6:208:439::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 08:16:17 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::2e4f:4041:28be:ba7a%6]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 08:16:17 +0000
Message-ID: <0630025f-d7b5-320f-b5ec-2a459963d76d@amd.com>
Date: Mon, 20 Feb 2023 09:16:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230218211608.1630586-1-robdclark@gmail.com>
 <20230218211608.1630586-5-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230218211608.1630586-5-robdclark@gmail.com>
X-ClientProxiedBy: FR0P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|IA0PR12MB7603:EE_
X-MS-Office365-Filtering-Correlation-Id: e03011e2-63be-4ae1-6ad4-08db131abd67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	USRjSnhshMNqhtTOzZUJwIMVr6kDvriB+va9dlag522uUGT9FdGD6+C/aN1Uyy0dKIeEPDoUJJKv7ddpAxrP9XjVoMrtiufis5rrkF8qxko9qV44dQMwZTW5RFowct8ki4GJWazkw6uoYojodN7JvfdeQHrjmFFpTLqMkAaBpDpQCABhGtUSwoEHL6awtpJ+1j25S+5zyR5cKAUoViYB5blR/+lXKW/lg8de0qTF0k+JuOZF8aXsRqAYt/VbeT9YXtFOG6rYKymCZozudCTRgdyK18X7ke+8VK+83Uv8zROsXaL90y0WdLlDieidTHDKS9HEiMIexNHhh9s6DoOo/EPMh/SRODv0hewajeQphiPwLRDp1+8gUfrj5oD65MCp7HoLznBd1Jbd2s+dZzxOv2EHJ10ilvctSNPU5YbWRmBB9JqZaXOOHJFJaOC5D381TBJlqHdVRpIkvxMiZ59BEcQp1dC2h4ke5eiQZI0l9ynKfvLQoY+b4idDRPUD39MbdBnsRzB3/k72ugBaHT9SBp1c8/lg0PiolZmpXiitsV4+JxawiEJdJeBf1qAMMoU+/sIm0qChp2eI8A3ctySL5/wIcwFc3/MbQMAz9GcgsekMkOrnpHDdQ5/sEo8jpRY8JB7KuhbysmjOj2GUNUmg3amwmo0a2ZMMpuYXYGNGgY0MDPurShCSEKKU/48OMIVo6bXcGXk8D/vHyJoHbFs/K+91d/z9xMwtrI1W3Rk2sMKczfiw/2IppPw6XyGoSCYx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(451199018)(31686004)(8676002)(66946007)(4326008)(66476007)(316002)(6486002)(66556008)(7416002)(54906003)(41300700001)(8936002)(5660300002)(36756003)(31696002)(86362001)(478600001)(186003)(6512007)(38100700002)(6666004)(6506007)(66574015)(2616005)(2906002)(83380400001)(43043002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MnVjc2JXUlpnc3I0NUF5TXNvZWhjNldpa3I3TFRqMXY2THZZQWdUZlZ6enJz?=
 =?utf-8?B?YzRQU2FpUGJHcjBHSUQ0RFJSUENlK21qb3VTdEtuUldnZXhubjJKZzlYWnVS?=
 =?utf-8?B?b3BBcUk2T1JkM3dCM2RSQWZsRHpyOUU1MTI3d1QwSnRIRGpLcGJVbTU4bjNv?=
 =?utf-8?B?MTV6MlZlN3hDeTF4eE5teHJGWmh6bkFKWUROclhqYll1N1ZHZ0ovZXhkMUxi?=
 =?utf-8?B?cUM0b3VtbzR3OE9zdGZ4OExRZlJqMHRIYVVRd0Nuanc0V0NYc2Z6VEFZYlAr?=
 =?utf-8?B?NUp5MmkwUUg0M3cvemgrNDA1N2pmV1cycnlRRy9vTXNMUGRsSWlrQkhMTlhs?=
 =?utf-8?B?c3hEVVpYOWFNYjhITk9tY016bkVJcEdKUTlmZlFUQ0Fkc2ZFWFFDanhrS3pt?=
 =?utf-8?B?MWQ1V05qOU1BSVJiL0JzYjhJZ2VsNmFmRzF1WWFpOE9MMmtQZjR0eDJweFVa?=
 =?utf-8?B?Uk9Hd0lUYkxJbHhrREEvRE5Fb3luQmxwTzZNdjhmMVVKRzROZXdyM2R1a3ht?=
 =?utf-8?B?RjBOeTdETVpyUjdWSzlYUkc1VzhQUFlMMXQwdmEvMW42UWNUMUpxaXJjTWRL?=
 =?utf-8?B?UEdLWmc2aXNYUlZIZnpHL2NoclhKT0ZIdlJkU3F6WFZsZHY0MzM3VDNHN1pU?=
 =?utf-8?B?U1MwM1JQbkdvTzVzTTY2M3VlWEZDNStmTnpON0JOeXh2MXVOL3IzRDFSWktQ?=
 =?utf-8?B?bTRrVjR6L3k0Ukl5M2xESStSSFRrVjFpN0VpemxpS3dSSktULy85aHR1U0dQ?=
 =?utf-8?B?WmhVUHVJWERyUmExUGwyQTVXOTArek5sTzBrNHhqY3VYM2p2S2RCVXEvRTAw?=
 =?utf-8?B?YWlNczc5UlUwWmhCWFBMWmltWW55MnJaVnMrTTM0SE1VNUdXWVEySndkNUdt?=
 =?utf-8?B?VFBrR1YwbTdZY3N1Y2JFdW9NZ2x4R0NuZ0VkQmlUNFlZaHU0VElSTkVIbk1B?=
 =?utf-8?B?T3VxeUtCTDNkOGh1MkQ4UUtKRmNCVEpkbVAxeld2ZDlYd2lyU0tScEpZRUxx?=
 =?utf-8?B?bkhJcUdoVWsvK0ViMWRmTmpFUUlEVENac2FSYmw5YmlNYXBmS21rZ1RubVBX?=
 =?utf-8?B?eXRZL3lHWHdBdE5yOS9HVU5VN0tTdGg3Qm1leHF3bEROcHAwMTZHekhGblhU?=
 =?utf-8?B?ZWFrenJlSSttNTBzUldjbmMrVzFCaEk3MnZZV0RWNFIvc24vMWhyM2FMY0VU?=
 =?utf-8?B?TU9pSVgyR2drYU5JWG4rMEZ0bSs5VGxVV24vS0ZhVktFOWtQd25mczZaL0F1?=
 =?utf-8?B?eTVWT0N3WEIrZmdJSWoyY3ZmVFpLSE1XVGhzZVBnajhmN1hkRUNPMCtaR1NY?=
 =?utf-8?B?T0tkWksrMlFqUDZVYmp6ZC9LT2ZSeVY5ZkxJb0l5Q2M1akI3WHhXb2xGeW8v?=
 =?utf-8?B?Vk1LY1RqY3lWc1hzN1VBaTVwWFUwMzkxQmx1TDZ3Y0dMci9VUktwTGFsTjdx?=
 =?utf-8?B?dDg2aVFpM084RkNpMXF3UXM3NFd5bXZveEZGdlFyUjV3RmZkTFBPdUdBMzZz?=
 =?utf-8?B?b1lXSWhIUUpkb0RMbU15bFc2MngvK0J6TDNKdG9OendFVGltZDlLN2ZtYTQ2?=
 =?utf-8?B?MUEzaE9RbHV0Q1RGS1NlYms4Q2x6UXhXeHR2V1ZzWnBiYjR6bitqMDFZTGdR?=
 =?utf-8?B?NCs4UjViUFNySkhTNWs5eENOUzFicGdNbnNCSVB2OERCYWYyNWg0SHpkcWk5?=
 =?utf-8?B?TGJ1Y3dZTkxFVnZWQ0hhSko1SWdpbkRINXFXWHVvL3A2VS9xWHpHclFzaTBB?=
 =?utf-8?B?eU4vVW5PcFQ3RzlrQy9iYnZhUThoVlRCeVpQWU93MzcxRzdmSGNtR3oyRytH?=
 =?utf-8?B?b2Jqb1VobVB4YjBwOFNjbFpLeFE2VGlPa0JTK2ZPT1oySWh5eTJQNVFMdEFn?=
 =?utf-8?B?aVlJM3ZDUUE5VklRNGg1Mml1bmpOOFE2N2x1RVEwNGNpWkxWY2M5NjhMSUdU?=
 =?utf-8?B?TTVhanB3WFRmZy9xTGlqc3JUSzhuWm5JWFp2VlJCTmxhclR1VFV1OE9zNTMw?=
 =?utf-8?B?SGt2RnYzWXNNUVk5Rnc0Nk1oc0l5aEVwM1o5SmNEWXRHVStRYTRSb09oQUs2?=
 =?utf-8?B?ZlkvTnZFVVNXZXR6aDhyUmczSlFPRkVjNkNGcDlyUHZDYTdMbkh4T0xDNCtX?=
 =?utf-8?B?dGtDN1Y4b3V3RXpRWmNka2VCa2pvSjFKd3hlRDROS2QyVmtZQitSUnpnSTls?=
 =?utf-8?Q?bKQ3VN6Te7DTLiOAPfls97SlbujTcVBU2YMmnuhDf1dV?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e03011e2-63be-4ae1-6ad4-08db131abd67
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2023 08:16:17.3774
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: us4B/IElYoqI8/KaiTFaX4BOQ8RyrZILx+0gNFolmu8uBppwuxgr5OpdVUB3ukUr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7603
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 222223E826
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,daenzer.net,intel.com,amd.com,gmail.com,emersion.fr,chromium.org,linaro.org,vger.kernel.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.73:from]
Message-ID-Hash: T7XQJN26C7ZKL42XGQYFRBRWZI77VBO4
X-Message-ID-Hash: T7XQJN26C7ZKL42XGQYFRBRWZI77VBO4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 04/14] dma-buf/dma-resv: Add a way to set fence deadline
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T7XQJN26C7ZKL42XGQYFRBRWZI77VBO4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMDIuMjMgdW0gMjI6MTUgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gQWRkIGEgd2F5IHRvIHNldCBhIGRlYWRs
aW5lIG9uIHJlbWFpbmluZyByZXN2IGZlbmNlcyBhY2NvcmRpbmcgdG8gdGhlDQo+IHJlcXVlc3Rl
ZCB1c2FnZS4NCj4NCj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2JkY2xhcmtAY2hyb21p
dW0ub3JnPg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyB8IDE5ICsrKysr
KysrKysrKysrKysrKysNCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmggICB8ICAyICsrDQo+
ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+
IGluZGV4IDFjNzZhZWQ4ZTI2Mi4uMGM4NmY2ZDU3N2FiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2RtYS1idWYvZG1hLXJlc3YuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0K
PiBAQCAtNjg0LDYgKzY4NCwyNSBAQCBsb25nIGRtYV9yZXN2X3dhaXRfdGltZW91dChzdHJ1Y3Qg
ZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCj4gICB9DQo+ICAgRVhQ
T1JUX1NZTUJPTF9HUEwoZG1hX3Jlc3Zfd2FpdF90aW1lb3V0KTsNCj4gICANCj4gKy8qKg0KPiAr
ICogZG1hX3Jlc3Zfc2V0X2RlYWRsaW5lIC0gU2V0IGEgZGVhZGxpbmUgb24gcmVzZXJ2YXRpb24n
cyBvYmplY3RzIGZlbmNlcw0KPiArICogQG9iajogdGhlIHJlc2VydmF0aW9uIG9iamVjdA0KPiAr
ICogQHVzYWdlOiBjb250cm9scyB3aGljaCBmZW5jZXMgdG8gaW5jbHVkZSwgc2VlIGVudW0gZG1h
X3Jlc3ZfdXNhZ2UuDQo+ICsgKiBAZGVhZGxpbmU6IHRoZSByZXF1ZXN0ZWQgZGVhZGxpbmUgKE1P
Tk9UT05JQykNCg0KUGxlYXNlIGFkZCBhbiBhZGRpdGlvbmFsIGRlc2NyaXB0aW9uIGxpbmUsIHNv
bWV0aGluZyBsaWtlICJDYW4gYmUgY2FsbGVkIA0Kd2l0aG91dCBob2xkaW5nIHRoZSBkbWFfcmVz
diBsb2NrIGFuZCBzZXRzIEBkZWFkbGluZSBvbiBhbGwgZmVuY2VzIA0KZmlsdGVyZWQgYnkgQHVz
YWdlLiIuDQoNCldpdGggdGhhdCBkb25lIHRoZSBwYXRjaCBpcyBSZXZpZXdlZC1ieTogQ2hyaXN0
aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClJlZ2FyZHMsDQpDaHJp
c3RpYW4uDQoNCj4gKyAqLw0KPiArdm9pZCBkbWFfcmVzdl9zZXRfZGVhZGxpbmUoc3RydWN0IGRt
YV9yZXN2ICpvYmosIGVudW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQo+ICsJCQkgICBrdGltZV90
IGRlYWRsaW5lKQ0KPiArew0KPiArCXN0cnVjdCBkbWFfcmVzdl9pdGVyIGN1cnNvcjsNCj4gKwlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsNCj4gKw0KPiArCWRtYV9yZXN2X2l0ZXJfYmVnaW4oJmN1
cnNvciwgb2JqLCB1c2FnZSk7DQo+ICsJZG1hX3Jlc3ZfZm9yX2VhY2hfZmVuY2VfdW5sb2NrZWQo
JmN1cnNvciwgZmVuY2UpIHsNCj4gKwkJZG1hX2ZlbmNlX3NldF9kZWFkbGluZShmZW5jZSwgZGVh
ZGxpbmUpOw0KPiArCX0NCj4gKwlkbWFfcmVzdl9pdGVyX2VuZCgmY3Vyc29yKTsNCj4gK30NCj4g
K0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9yZXN2X3NldF9kZWFkbGluZSk7DQo+ICAgDQo+ICAgLyoq
DQo+ICAgICogZG1hX3Jlc3ZfdGVzdF9zaWduYWxlZCAtIFRlc3QgaWYgYSByZXNlcnZhdGlvbiBv
YmplY3QncyBmZW5jZXMgaGF2ZSBiZWVuDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4gaW5kZXggMDYzNzY1OWE3MDJj
Li44ZDBlMzRkYWQ0NDYgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0K
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4gQEAgLTQ3OSw2ICs0NzksOCBAQCBp
bnQgZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFf
cmVzdl91c2FnZSB1c2FnZSwNCj4gICBpbnQgZG1hX3Jlc3ZfY29weV9mZW5jZXMoc3RydWN0IGRt
YV9yZXN2ICpkc3QsIHN0cnVjdCBkbWFfcmVzdiAqc3JjKTsNCj4gICBsb25nIGRtYV9yZXN2X3dh
aXRfdGltZW91dChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2Fn
ZSwNCj4gICAJCQkgICBib29sIGludHIsIHVuc2lnbmVkIGxvbmcgdGltZW91dCk7DQo+ICt2b2lk
IGRtYV9yZXN2X3NldF9kZWFkbGluZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVz
dl91c2FnZSB1c2FnZSwNCj4gKwkJCSAgIGt0aW1lX3QgZGVhZGxpbmUpOw0KPiAgIGJvb2wgZG1h
X3Jlc3ZfdGVzdF9zaWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91
c2FnZSB1c2FnZSk7DQo+ICAgdm9pZCBkbWFfcmVzdl9kZXNjcmliZShzdHJ1Y3QgZG1hX3Jlc3Yg
Km9iaiwgc3RydWN0IHNlcV9maWxlICpzZXEpOw0KPiAgIA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
