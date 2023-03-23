Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9886C6A60
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 15:04:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 459243EC33
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 14:04:01 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id 6F7883E8AB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 14:03:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XZ9FwnMG;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Og2OjKlPyCKjMYtvWChRsN0iB4sQsF6r0BTuzAQFcrwkMDkEjwAhJGrCdSj4eU3YE2d7mrs90AWZ7VkhrG8o/1nh2nDSbCqmWyzlQ6/8YwVVtAz8wKn0D9ynfrcVLw/V3Jbx1fjlKN+glk09IX25Z/Y/4rqwuoVLSEJ7BZOqZd9WcajRxzEYXo9/1qiI/mmZMHbabYQaK5RhjsaUuOCKJ05OBR+752WpPGlcWYJfiYE4G6X9qJY3Y/77hDXeU036z/VgUbavdU6kJzihL91TvmEqpxZTYu3STIPsZI0rn/3ytxZcTTlLfHYZAYr3VvivGIgFAFbSdzlhKseUwYdOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/JfURZCt8FZSBgyrc1/sDSpXFt6gnDxxCCYgyIS8f/Q=;
 b=Qe32v/fDD5EB28iFejKn+F7/99zn26jbHV+c4INCalAxqgfmPGKpvu3BdbR/QxqrunVkmQ1K33ydO8STcvCLrQpBoGpl2EB2aKDpViTe/VPeRiszaCeOx0hjHgX0eZ0lddF8L5fS/UyK9/AbmCffVvhCVjjrUJAYf05lgYTM1eXY7iTnnFt6Pd5veGNF/aEJTGih96DvzSCdgCm2gLXzfhiHnc2kJ5aQu6n/zJWfg+h5HPcDOSPQHZjAybNO5hsip0JcUkn98hpEky2QN2Z7U7NheAXZqZFusjCwmGKy8r6anEiuGmL8RuNvRvAueh8zlz55Xq59XjApVuDOr/ARqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/JfURZCt8FZSBgyrc1/sDSpXFt6gnDxxCCYgyIS8f/Q=;
 b=XZ9FwnMGQ7rkr7VIOtH/nymPa8XpBh4mC2NKCZ8cKl5ADBrn8DAI6qegca11SjTg8UrfE1ao2++DdUr+sJZDdi3NV/AmPI6iRyu0BK4btWk1wvo/bpKaB6iJNeiAZ5BR5+Zi9JwT8cnoevpYHLlOO86qKAOo9X0sOrbLJs5A5Co=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by IA1PR12MB6259.namprd12.prod.outlook.com (2603:10b6:208:3e5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Thu, 23 Mar
 2023 14:03:42 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.038; Thu, 23 Mar 2023
 14:03:42 +0000
Message-ID: <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
Date: Thu, 23 Mar 2023 15:03:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230322224403.35742-1-robdclark@gmail.com>
 <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0201.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|IA1PR12MB6259:EE_
X-MS-Office365-Filtering-Correlation-Id: 1aba74d5-2843-4230-8527-08db2ba768ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yyS/2p0NFBGr/K8f1ggMfYNxDwLCbOiYy+6XySsXdhOFsi1jJY4bSCht8tCmHqUUZGlFZRT/YXaR8h9yOQW8BHGY9rNT1m0pAflsHT5L0pJ4SVbdT6hpxsYLBuQeRhUMNpWhVcnnUKTakMQ3JTDzbCBw7NgCn0Vq2RVOHsadn+NDa4hXFM8ccucEu9OTvOCvaJl6sxpbttGN8XyWuduPyacqP9o8FRAcK9ABIRb/o0WpgQ1hf/K3OkKJzrEjOe2uRDi7aF2g908Be69b9iWqo1tzCx3C347KEErjcOjmTfpXwzTj9uOkU8yfL7rHXp/I4/n8fj4eQaxQ8Mion7jzxWkmgrayEaN97H9dE+6qe02PerMu3aeT4sRFdAp/dtteqt5e4Y65Uc1oXttZ3pHpkZvbDl2VAB5/di8Ul62hwiXmDMK5n2bMx7E3H/Ikbj9expNlL3SYzASr6NbxztZ+nkE4+UMhRofdVKATTz1r6Tm2mkX0JfzYKMtnn2rMDRcYW3446kT6LGo8fVcyk9jzeDkv5bflDLHwPdDPNG9jHjU1D6TORjFkJmLppQW+pUaZcEas5hXa8qGVvYcPjjuvaQfHw7AiuOP2tm3j3QjuKgmGiAqJR/cuZYOY9jy+eJ+OmOtWE4gdZpIFNVw74QL4MfKcIG9/C88rBIVszSCP21W3ZdHO5MAbewIiTqroFQQ4ahxT1IlW9uyABgoog15rvQ4DvQ4H4VOEIc9pgj2LtRU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199018)(31686004)(38100700002)(2616005)(2906002)(478600001)(83380400001)(6486002)(186003)(36756003)(31696002)(86362001)(316002)(54906003)(66476007)(8676002)(66556008)(66946007)(6916009)(4326008)(8936002)(26005)(66574015)(6666004)(53546011)(6512007)(6506007)(5660300002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?djV1L1FsSkVZQlNNM25kRnBHYlVsQ1VFeS9scXhiYWJIelZMcDhFYStMTDBn?=
 =?utf-8?B?VmZySTNhN3crZHdhc0lmVndkZ3ZEMU5teW5NMTlzU05QTmNaajNyWVVqM09Q?=
 =?utf-8?B?SWphZ09VNVRlV2MxUU82UElIeHE1NmdZcEE3aFJNR0tyV1RTUTFvTGdBNGV4?=
 =?utf-8?B?OUpUUlhuWkMyaGo3SWNLS3JIbVl4TnVQNUk5RWgrNG1adlZUMVJjVm91ZGdX?=
 =?utf-8?B?a0pnWmc1RHZQYzFzdVZaY3Y4clhzQnNoYUhOVnZnMktpOXlmNFNMSXBSUXBJ?=
 =?utf-8?B?N3Fjc3M4RGVsOHFabHN1Ykt3TDJqRTJPdFVaaXd2Z3gzOUh1dy9IY0hQdEVK?=
 =?utf-8?B?MXQ2UDltalc3bXRtTms4U1VzaE5tYWFsOWhrZHlkeUUwSXdGMkU2WGx0bm1i?=
 =?utf-8?B?TkhueXdjb1dhZWd0SjhQOFJDWTh3YWRJZFlNblNyaUY3MjQ1NVM5cjN3Qm1z?=
 =?utf-8?B?dTFRTzdueXVGWWorSjgvU2hTeEd3K2VoZzFTYzl4SW8yenljckt4MFZOMXd5?=
 =?utf-8?B?QTNzdzlaTTFuaFM2VXNsUmlsUytqUktOM2xmc3AwL1FCUldSZE9nS040RUo3?=
 =?utf-8?B?Uk90NDNMNjl3VlRaZjZQell2elkzQ2g3VE4yR2NSaDVoVXpMelNZYWpwWXNr?=
 =?utf-8?B?YXN5eHpUTUtlcldGM3U5c1h6MTNiZ3BqSTlSUytxd3NmMmpVMnVTcloyeHVY?=
 =?utf-8?B?cmJoL291WlRESVNoNXd6cElKMUxhejQ2R1RKaGlvUVFEQXIwMWlnRDVoVEpz?=
 =?utf-8?B?eGlWRVFlcnBIcEJiK0xBNlR5U3dIbTZMVE9nYldYeVdEOFk5ZkFFcmliQ2ZO?=
 =?utf-8?B?R2NYak5LU0tEQ3dObFZDMVZuajU3Tk9TWXNIMjdSSytNd0x6NHE4azN1NkU2?=
 =?utf-8?B?dWxrNzlSbklKczd0TnNwWGRKVG9EWnpSSkx6TjhCdDI4UW0yV1JEcVFUbWhR?=
 =?utf-8?B?UjNRemN2Ykg2ZnlHWXdrTzczeEs2RDZZSlZzZTBTNTlFbjJHZmZ4NVBsYXF6?=
 =?utf-8?B?cUxjZGFQS0thVFlhOUlUcHoxUzNVc1NjcjBta1RRemcyc2FOeUMxQkJoR212?=
 =?utf-8?B?cFJuRnVnQTNGeWNGQjFOWFdzUzRDMHlJQzNDVEFETUN6NWJRcXZtUENVaU91?=
 =?utf-8?B?dHQwdDlnVjVmV0pjS1RLd0hSczQ1L0k5YTh2NWpVcDZYUExKV1IvTUZZOUFx?=
 =?utf-8?B?NTl0TXdwRTkxaUw1d3BaQ1dLbEtzLzRkUmdSVjl6VVhsdWN0RjNFNWhBeExu?=
 =?utf-8?B?S25YOFBZeXVUd2lMNUU1SjVRME5KNlQ3Unh1UDFGK1FXd1g3V21aS3dhMG96?=
 =?utf-8?B?M1hpZE43NzdlY1hCYWorbG1NZEZqWWZ3OERKZ1VZblVha2hTWmlTbndkbFho?=
 =?utf-8?B?ZjdVRlYyWmptSlhlOWZsd3dDQkV0blNWd0ZSS3NmQTNUL0gvaGRXSUN4Rm9i?=
 =?utf-8?B?akY1VW1FNGxsVW1aSmhUdWYvTFZjeHFNSGZDNTJrTDFrWEFtK1ZReHRVbGM5?=
 =?utf-8?B?cmlOZWc5bWwyZDRHOWdaamxSTnV0Vld3OVZsT25xSk1BckkwQVh5ckNhbVZt?=
 =?utf-8?B?Q0xSaHd3QzBSVmtaSzIrTmE1SlJiR2N4Z1o0SzRCdG84Ung4RkxVTnhzNDJn?=
 =?utf-8?B?SGFFRmd6QlkweTJERHh5Ym4wWWMzLzd0bjg2RWxlbmhvT0Y4aTA4eVcvS3JO?=
 =?utf-8?B?OVM5eElQSUxvR3cwQUg1N015KzA2Mndab1BJaG4wVlFpaVdFV1FIQTVQTzkz?=
 =?utf-8?B?UHBwSjBWS01iUzdBNEJFaE9WNTNBdG9IRnJpWWVENGZFTC9GaURRSTMyR2Ix?=
 =?utf-8?B?bEpiUHU2RnVQZ1N4ckttNHg0aWUyTHJlcVVIakNWbVdnNHhkVSthSThlam5z?=
 =?utf-8?B?NkFoNld2UldQdnBGUUFpbHVTWklRRmhHendsVzMwSUlQR0gwYjZuaWNjb0gv?=
 =?utf-8?B?R2pVVENzQkdSQ2FGRXZSQ1pUYzgzdUE2SWFxTHdQOFRFZWdhMWt0V0d4TkRk?=
 =?utf-8?B?SkFnMmZVS0hoQUFMN2xPUGVMRk10eWltL0R1T3Npdml0Z3dEcmh5aTcvVlVC?=
 =?utf-8?B?L2RhNk85aDNtcXhJVTdiMXFzZUVHUkVzUVcyLzFHc2s3aTg1a215bzUvUWla?=
 =?utf-8?Q?CQgo3ucDS9HNlgBDRaZlGG52O?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aba74d5-2843-4230-8527-08db2ba768ad
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 14:03:42.1292
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nHaeUI7IjtaZSyGeLeYLVuqXIJYy/1BJXp5QRO4Wbyl1AHPUVES2EyfI/Fuik4eK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6259
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6F7883E8AB
X-Spamd-Bar: -----------
X-Spamd-Result: default: False [-11.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[2603:10b6:408:43::13:received,40.107.236.41:from];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.41:from];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ALWTQSDEDC5NARBY5LHTM5G2U2R5P2AP
X-Message-ID-Hash: ALWTQSDEDC5NARBY5LHTM5G2U2R5P2AP
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALWTQSDEDC5NARBY5LHTM5G2U2R5P2AP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMDMuMjMgdW0gMTQ6NTQgc2NocmllYiBSb2IgQ2xhcms6DQo+IE9uIFRodSwgTWFyIDIz
LCAyMDIzIGF0IDEyOjM14oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPiB3cm90ZToNCj4+IEFtIDIyLjAzLjIzIHVtIDIzOjQ0IHNjaHJpZWIgUm9iIENs
YXJrOg0KPj4+IEZyb206IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+Pg0K
Pj4+IENvbnRhaW5lciBmZW5jZXMgaGF2ZSBidXJuZXIgY29udGV4dHMsIHdoaWNoIG1ha2VzIHRo
ZSB0cmljayB0byBzdG9yZSBhdA0KPj4+IG1vc3Qgb25lIGZlbmNlIHBlciBjb250ZXh0IHNvbWV3
aGF0IHVzZWxlc3MgaWYgd2UgZG9uJ3QgdW53cmFwIGFycmF5IG9yDQo+Pj4gY2hhaW4gZmVuY2Vz
Lg0KPj4gTWhtLCB3ZSBpbnRlbnRpb25hbGx5IGtlcHQgdGhlbSBub3QgdW53cmFwcGVkIHNpbmNl
IHRoaXMgd2F5IHRoZXkgb25seQ0KPj4gb2NjdXB5IG9uZSBmZW5jZSBzbG90Lg0KPj4NCj4+IEJ1
dCBpdCBtaWdodCBiZSBiZXR0ZXIgdG8gdW53cmFwIHRoZW0gaWYgeW91IGFkZCBtYW55IG9mIHRo
b3NlIGRlcGVuZGVuY2llcy4NCj4+DQo+Pj4gU2lnbmVkLW9mZi1ieTogUm9iIENsYXJrIDxyb2Jk
Y2xhcmtAY2hyb21pdW0ub3JnPg0KPj4+IC0tLQ0KPj4+IHRiaCwgSSdtIG5vdCBzdXJlIHdoeSB3
ZSB3ZXJlbid0IGRvaW5nIHRoaXMgYWxyZWFkeSwgdW5sZXNzIHRoZXJlIGlzDQo+Pj4gc29tZXRo
aW5nIEknbSBvdmVybG9va2luZw0KPj4+DQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxl
ci9zY2hlZF9tYWluLmMgfCA0MyArKysrKysrKysrKysrKysrKy0tLS0tLS0tLQ0KPj4+ICAgIDEg
ZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+Pj4gaW5kZXggYzJlZTQ0ZDYy
MjRiLi5mNTllNTMzNWFmYmIgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9tYWluLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uYw0KPj4+IEBAIC00MSwyMCArNDEsMjEgQEANCj4+PiAgICAgKiA0LiBFbnRpdGll
cyB0aGVtc2VsdmVzIG1haW50YWluIGEgcXVldWUgb2Ygam9icyB0aGF0IHdpbGwgYmUgc2NoZWR1
bGVkIG9uDQo+Pj4gICAgICogICAgdGhlIGhhcmR3YXJlLg0KPj4+ICAgICAqDQo+Pj4gICAgICog
VGhlIGpvYnMgaW4gYSBlbnRpdHkgYXJlIGFsd2F5cyBzY2hlZHVsZWQgaW4gdGhlIG9yZGVyIHRo
YXQgdGhleSB3ZXJlIHB1c2hlZC4NCj4+PiAgICAgKi8NCj4+Pg0KPj4+ICAgICNpbmNsdWRlIDxs
aW51eC9rdGhyZWFkLmg+DQo+Pj4gICAgI2luY2x1ZGUgPGxpbnV4L3dhaXQuaD4NCj4+PiAgICAj
aW5jbHVkZSA8bGludXgvc2NoZWQuaD4NCj4+PiAgICAjaW5jbHVkZSA8bGludXgvY29tcGxldGlv
bi5oPg0KPj4+ICsjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLXVud3JhcC5oPg0KPj4+ICAgICNp
bmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPg0KPj4+ICAgICNpbmNsdWRlIDx1YXBpL2xpbnV4L3Nj
aGVkL3R5cGVzLmg+DQo+Pj4NCj4+PiAgICAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPj4+
ICAgICNpbmNsdWRlIDxkcm0vZHJtX2dlbS5oPg0KPj4+ICAgICNpbmNsdWRlIDxkcm0vZ3B1X3Nj
aGVkdWxlci5oPg0KPj4+ICAgICNpbmNsdWRlIDxkcm0vc3BzY19xdWV1ZS5oPg0KPj4+DQo+Pj4g
ICAgI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRTDQo+Pj4gICAgI2luY2x1ZGUgImdwdV9zY2hl
ZHVsZXJfdHJhY2UuaCINCj4+PiBAQCAtNjY1LDQxICs2NjYsMjcgQEAgdm9pZCBkcm1fc2NoZWRf
am9iX2FybShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iKQ0KPj4+ICAgICAgICBzY2hlZCA9IGVu
dGl0eS0+cnEtPnNjaGVkOw0KPj4+DQo+Pj4gICAgICAgIGpvYi0+c2NoZWQgPSBzY2hlZDsNCj4+
PiAgICAgICAgam9iLT5zX3ByaW9yaXR5ID0gZW50aXR5LT5ycSAtIHNjaGVkLT5zY2hlZF9ycTsN
Cj4+PiAgICAgICAgam9iLT5pZCA9IGF0b21pYzY0X2luY19yZXR1cm4oJnNjaGVkLT5qb2JfaWRf
Y291bnQpOw0KPj4+DQo+Pj4gICAgICAgIGRybV9zY2hlZF9mZW5jZV9pbml0KGpvYi0+c19mZW5j
ZSwgam9iLT5lbnRpdHkpOw0KPj4+ICAgIH0NCj4+PiAgICBFWFBPUlRfU1lNQk9MKGRybV9zY2hl
ZF9qb2JfYXJtKTsNCj4+Pg0KPj4+IC0vKioNCj4+PiAtICogZHJtX3NjaGVkX2pvYl9hZGRfZGVw
ZW5kZW5jeSAtIGFkZHMgdGhlIGZlbmNlIGFzIGEgam9iIGRlcGVuZGVuY3kNCj4+PiAtICogQGpv
Yjogc2NoZWR1bGVyIGpvYiB0byBhZGQgdGhlIGRlcGVuZGVuY2llcyB0bw0KPj4+IC0gKiBAZmVu
Y2U6IHRoZSBkbWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0IG9mIGRlcGVuZGVuY2llcy4NCj4+
PiAtICoNCj4+PiAtICogTm90ZSB0aGF0IEBmZW5jZSBpcyBjb25zdW1lZCBpbiBib3RoIHRoZSBz
dWNjZXNzIGFuZCBlcnJvciBjYXNlcy4NCj4+PiAtICoNCj4+PiAtICogUmV0dXJuczoNCj4+PiAt
ICogMCBvbiBzdWNjZXNzLCBvciBhbiBlcnJvciBvbiBmYWlsaW5nIHRvIGV4cGFuZCB0aGUgYXJy
YXkuDQo+Pj4gLSAqLw0KPj4+IC1pbnQgZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeShzdHJ1
Y3QgZHJtX3NjaGVkX2pvYiAqam9iLA0KPj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+PiArc3RhdGljIGludCBfYWRkX2RlcGVuZGVu
Y3koc3RydWN0IGRybV9zY2hlZF9qb2IgKmpvYiwgc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+
PiBQbGVhc2Uga2VlcCB0aGUgZHJtX3NjaGVkX2pvYl8gcHJlZml4IGhlcmUgZXZlbiBmb3Igc3Rh
dGljIGZ1bmN0aW9ucy4NCj4+IFRoZSBzeW1ib2wgX2FkZF9kZXBlbmRlbmN5IGp1c3Qgc3Vja3Mg
aW4gYSBiYWNrdHJhY2UsIGVzcGVjaWFsbHkgd2hlbg0KPj4gaXQncyB0YWlsIG9wdGltaXplZC4N
Cj4+DQo+Pj4gICAgew0KPj4+ICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICplbnRyeTsNCj4+PiAg
ICAgICAgdW5zaWduZWQgbG9uZyBpbmRleDsNCj4+PiAgICAgICAgdTMyIGlkID0gMDsNCj4+PiAg
ICAgICAgaW50IHJldDsNCj4+Pg0KPj4+IC0gICAgIGlmICghZmVuY2UpDQo+Pj4gLSAgICAgICAg
ICAgICByZXR1cm4gMDsNCj4+PiAtDQo+Pj4gICAgICAgIC8qIERlZHVwbGljYXRlIGlmIHdlIGFs
cmVhZHkgZGVwZW5kIG9uIGEgZmVuY2UgZnJvbSB0aGUgc2FtZSBjb250ZXh0Lg0KPj4+ICAgICAg
ICAgKiBUaGlzIGxldHMgdGhlIHNpemUgb2YgdGhlIGFycmF5IG9mIGRlcHMgc2NhbGUgd2l0aCB0
aGUgbnVtYmVyIG9mDQo+Pj4gICAgICAgICAqIGVuZ2luZXMgaW52b2x2ZWQsIHJhdGhlciB0aGFu
IHRoZSBudW1iZXIgb2YgQk9zLg0KPj4+ICAgICAgICAgKi8NCj4+PiAgICAgICAgeGFfZm9yX2Vh
Y2goJmpvYi0+ZGVwZW5kZW5jaWVzLCBpbmRleCwgZW50cnkpIHsNCj4+PiAgICAgICAgICAgICAg
ICBpZiAoZW50cnktPmNvbnRleHQgIT0gZmVuY2UtPmNvbnRleHQpDQo+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICBjb250aW51ZTsNCj4+Pg0KPj4+ICAgICAgICAgICAgICAgIGlmIChkbWFfZmVu
Y2VfaXNfbGF0ZXIoZmVuY2UsIGVudHJ5KSkgew0KPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ZG1hX2ZlbmNlX3B1dChlbnRyeSk7DQo+Pj4gQEAgLTcwOSwyMCArNjk2LDQ2IEBAIGludCBkcm1f
c2NoZWRfam9iX2FkZF9kZXBlbmRlbmN5KHN0cnVjdCBkcm1fc2NoZWRfam9iICpqb2IsDQo+Pj4g
ICAgICAgICAgICAgICAgfQ0KPj4+ICAgICAgICAgICAgICAgIHJldHVybiAwOw0KPj4+ICAgICAg
ICB9DQo+Pj4NCj4+PiAgICAgICAgcmV0ID0geGFfYWxsb2MoJmpvYi0+ZGVwZW5kZW5jaWVzLCAm
aWQsIGZlbmNlLCB4YV9saW1pdF8zMmIsIEdGUF9LRVJORUwpOw0KPj4+ICAgICAgICBpZiAocmV0
ICE9IDApDQo+Pj4gICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+Pj4NCj4+
PiAgICAgICAgcmV0dXJuIHJldDsNCj4+PiAgICB9DQo+Pj4gKw0KPj4+ICsvKioNCj4+PiArICog
ZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSAtIGFkZHMgdGhlIGZlbmNlIGFzIGEgam9iIGRl
cGVuZGVuY3kNCj4+PiArICogQGpvYjogc2NoZWR1bGVyIGpvYiB0byBhZGQgdGhlIGRlcGVuZGVu
Y2llcyB0bw0KPj4+ICsgKiBAZmVuY2U6IHRoZSBkbWFfZmVuY2UgdG8gYWRkIHRvIHRoZSBsaXN0
IG9mIGRlcGVuZGVuY2llcy4NCj4+PiArICoNCj4+PiArICogTm90ZSB0aGF0IEBmZW5jZSBpcyBj
b25zdW1lZCBpbiBib3RoIHRoZSBzdWNjZXNzIGFuZCBlcnJvciBjYXNlcy4NCj4+PiArICoNCj4+
PiArICogUmV0dXJuczoNCj4+PiArICogMCBvbiBzdWNjZXNzLCBvciBhbiBlcnJvciBvbiBmYWls
aW5nIHRvIGV4cGFuZCB0aGUgYXJyYXkuDQo+Pj4gKyAqLw0KPj4+ICtpbnQgZHJtX3NjaGVkX2pv
Yl9hZGRfZGVwZW5kZW5jeShzdHJ1Y3QgZHJtX3NjaGVkX2pvYiAqam9iLA0KPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCj4+IE1heWJl
IG5hbWUgdGhlIG5ldyBmdW5jdGlvbiBkcm1fc2NoZWRfam9iX3Vud3JhcF9hZGRfZGVwZW5kZW5j
eSBvcg0KPj4gc29tZXRoaW5nIGxpa2UgdGhpcy4NCj4+DQo+PiBJIG5lZWQgdG8gZG91YmxlIGNo
ZWNrLCBidXQgSSB0aGluayBmb3Igc29tZSBjYXNlcyB3ZSBkb24ndCBuZWVkIG9yDQo+PiBkb24n
dCBldmVuIHdhbnQgdGhpcyBpbiB0aGUgZHJpdmVyLg0KPiBJJ2QgYmUgY3VyaW91cyB0byBrbm93
IHRoZSBjYXNlcyB3aGVyZSB5b3UgZG9uJ3Qgd2FudCB0aGlzLi4gb25lIHRoaW5nDQo+IEkgd2Fz
IHRoaW5raW5nIGFib3V0LCB3aGF0IGlmIHlvdSBoYXZlIGEgY29udGFpbmVyIGZlbmNlIHdpdGgg
dHdvDQo+IGNvbnRhaW5lZCBmZW5jZXMuICBPbmUgaXMgb24gdGhlIHNhbWUgY3R4IGFzIHRoZSBq
b2IsIG9uZSBpcyBub3QgYnV0DQo+IHNpZ25hbHMgc29vbmVyLiAgWW91IGVuZCB1cCBhcnRpZmlj
aWFsbHkgd2FpdGluZyBvbiBib3RoLCB3aGljaCBzZWVtcw0KPiBzdWItb3B0aW1hbC4NCg0KV2Vs
bCByZXN2IG9iamVjdHMgZG9uJ3QgY29udGFpbiBvdGhlciBjb250YWluZXJzIGZvciBleGFtcGxl
Lg0KDQpUaGVuIHdlIGFsc28gaGF2ZSBhbiB1c2UgY2FzZSBpbiBhbWRncHUgd2hlcmUgZmVuY2Ug
bmVlZCB0byBiZSANCmV4cGxpY2l0bHkgd2FpdGVkIGZvciBldmVuIHdoZW4gdGhleSBhcmUgZnJv
bSB0aGUgc2FtZSBjdHggYXMgdGhlIGpvYiANCmJlY2F1c2Ugb3RoZXJ3aXNlIHdlIHdvdWxkbid0
IHNlZSBldmVyeXRoaW5nIGNhY2hlIGNvaGVyZW50Lg0KDQpPbiB0aGUgb3RoZXIgaGFuZCB3ZSBj
dXJyZW50bHkgaGFuZGxlIHRoYXQgYW1kZ3B1IHVzZSBjYXNlIGRpZmZlcmVudGx5IA0KYW5kIHRo
ZSBleHRyYSBvdmVyaGVhZCBvZiB1bndyYXBwaW5nIGZlbmNlcyBldmVuIGlmIHRoZXkgY2FuJ3Qg
YmUgDQpjb250YWluZXJzIGlzIHByb2JhYmx5IG5lZ2xpZ2libGUuDQoNCj4gQW55d2F5cywgSSBj
YW4gbWFrZSB0aGlzIGEgbmV3IGVudHJ5cG9pbnQgd2hpY2ggdW53cmFwcywgYW5kL29yIHJlbmFt
ZQ0KPiB0aGUgaW50ZXJuYWwgc3RhdGljIGZ1bmN0aW9uLCBpZiB3ZSB0aGluayB0aGlzIGlzIGEg
Z29vZCBpZGVhLg0KDQpJZiB5b3UgdGhpbmsgdGhhdCdzIHVubmVjZXNzYXJ5IGtlZXBpbmcgeW91
ciBvcmlnaW5hbCBhcHByb2FjaCBpcyBmaW5lIA0Kd2l0aCBtZSBhcyB3ZWxsLg0KDQpSZWdhcmRz
LA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEJSLA0KPiAtUg0KPg0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+
PiArew0KPj4+ICsgICAgIHN0cnVjdCBkbWFfZmVuY2VfdW53cmFwIGl0ZXI7DQo+Pj4gKyAgICAg
c3RydWN0IGRtYV9mZW5jZSAqZjsNCj4+PiArICAgICBpbnQgcmV0ID0gMDsNCj4+PiArDQo+Pj4g
KyAgICAgZG1hX2ZlbmNlX3Vud3JhcF9mb3JfZWFjaCAoZiwgJml0ZXIsIGZlbmNlKSB7DQo+Pj4g
KyAgICAgICAgICAgICByZXQgPSBfYWRkX2RlcGVuZGVuY3koam9iLCBmKTsNCj4+PiArICAgICAg
ICAgICAgIGlmIChyZXQpDQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KPj4+ICsg
ICAgIH0NCj4+PiArDQo+Pj4gKyAgICAgcmV0dXJuIHJldDsNCj4+PiArfQ0KPj4+ICAgIEVYUE9S
VF9TWU1CT0woZHJtX3NjaGVkX2pvYl9hZGRfZGVwZW5kZW5jeSk7DQo+Pj4NCj4+PiAgICAvKioN
Cj4+PiAgICAgKiBkcm1fc2NoZWRfam9iX2FkZF9yZXN2X2RlcGVuZGVuY2llcyAtIGFkZCBhbGwg
ZmVuY2VzIGZyb20gdGhlIHJlc3YgdG8gdGhlIGpvYg0KPj4+ICAgICAqIEBqb2I6IHNjaGVkdWxl
ciBqb2IgdG8gYWRkIHRoZSBkZXBlbmRlbmNpZXMgdG8NCj4+PiAgICAgKiBAcmVzdjogdGhlIGRt
YV9yZXN2IG9iamVjdCB0byBnZXQgdGhlIGZlbmNlcyBmcm9tDQo+Pj4gICAgICogQHVzYWdlOiB0
aGUgZG1hX3Jlc3ZfdXNhZ2UgdG8gdXNlIHRvIGZpbHRlciB0aGUgZmVuY2VzDQo+Pj4gICAgICoN
Cj4+PiAgICAgKiBUaGlzIGFkZHMgYWxsIGZlbmNlcyBtYXRjaGluZyB0aGUgZ2l2ZW4gdXNhZ2Ug
ZnJvbSBAcmVzdiB0byBAam9iLg0KPj4+ICAgICAqIE11c3QgYmUgY2FsbGVkIHdpdGggdGhlIEBy
ZXN2IGxvY2sgaGVsZC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
