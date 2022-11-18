Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E74062EF37
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 09:28:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5F303F5E8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Nov 2022 08:28:14 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2062.outbound.protection.outlook.com [40.107.102.62])
	by lists.linaro.org (Postfix) with ESMTPS id B11233EF19
	for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Nov 2022 08:27:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=jSqMnuw+;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.62 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cK7PXZlicRgjWJR4rbGKcxfqWg+Y69OEVxz+RuJZny6ESqoIVHo4/RG6RaSLiKe6umlaux5ntECHKtgyPeawWl10DTs7I1YXslTBz3NiyL6MFlW2wXlUu8WnOwldeqPuX4nb9pSWnlYMU2tQxyjY6VUAh5a1ejYL0TEmJ3wEx6WqB7dylVwEClTo8lg9roYi8xR9OFOGU3iltC4FsFj0GEeC8Bzrq6OZnZXjmd4u3Eu0/rUcIEqWUFcvNAbqnS/ZCZnO1yJOVwXCiCu/iiJ4nVcPFzzHC49cot0y3AdpNcIHKkJLv8bKmZvmankjUpyk4ssEddj4L37hrz5QKdRYrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NtjpXjN83GRYbUl0BP6kmHXLXdPhl/VXBHL/ecwpPu4=;
 b=aOvpRNxZX13XYLFnJ2bMtzsPWs5aJBHvpd/U4ZO38ARGx4100UvyL/8Ebqyz+bb+9uk2Yc6iiUA2JzJaHBo6YwjOPlDx7tUMpaMGxdq41R0MmLC8mk8Qwl5xbYuD1pLXitPGQDwLqLXu48Hte30Ca8xGDON+uK9Q7pAcj+IEXhSMCqCQR9Z/Y4qJhZh3n8dhJCtHuwgoaIAiYA8GcBx+Y+44gEQVVYN94qqgZhUyrnFvZ5A6kY7LuAJeeiiikNP52FYWo2jhBWwuxt01rjM3OIBEXX31Vsl6ovpMAAh1AMxD+ORrL740zcu8rV8/jyzToGIzhBA/h4M+ePOr8kW1aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NtjpXjN83GRYbUl0BP6kmHXLXdPhl/VXBHL/ecwpPu4=;
 b=jSqMnuw+/GpzU1xuNiQUkWCoyZcfB4qtuNKA5E9qJt+uNhUa2irShFjCrrCZ9Rj+y4dv1AMPPH/uPw1VF/6vch7YxOoyPV/4Qd8zWqI+fq8k7UoWLx2B0RSUCaOQhuic6SqDyG2iQLJFxgYBy4+1KvyVKDc012y82Epc0cOdZDU=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Fri, 18 Nov
 2022 08:27:54 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5813.017; Fri, 18 Nov 2022
 08:27:54 +0000
Message-ID: <2c9fa595-e788-5474-4f2b-ffbd08a70d13@amd.com>
Date: Fri, 18 Nov 2022 09:27:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>
References: <20221117062152.3029018-1-cuigaosheng1@huawei.com>
 <f12a5dbe-4626-f6c7-236b-30bb16be1dd6@quicinc.com>
 <99d3aee6-ba3e-5333-6f79-ddbcfc0e8843@amd.com>
 <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX1UMB0L0PmHB59nijReZef6LUQ3XKXitHZo2YnUrJTz9Q@mail.gmail.com>
X-ClientProxiedBy: FR3P281CA0077.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::10) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|LV2PR12MB5869:EE_
X-MS-Office365-Filtering-Correlation-Id: b78c03bf-9d97-44e5-24ee-08dac93eca31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MrZ3GLPcSGvnYJaxHw2FH44KPVcAXUEo5NGL2y/rydpje32emk+1B/XTcxs5xaqIoMbR/fvUuEH3Wxjf/Hl+EG94pXAGTAtOFzWwzd7VqjlVlZRMSJFTRX7+vtRx2kU/4rU9XmeP7LsqlGAy7Wa2vJSE64YG2m0upFrJm9j9HMIb4bunrY8XOeBzfft0JPz6sD8F8uq/UufFcuT84mIxGMkD97VTG5KvswDowDS97V7b318/12jiuDAYnAgcwmunjHx8LrpXih6eGGGNJBIcC5H9DM0nhpBhM3xR03gyCL33H3sVPQNasnpm+9llGFYk0Ay36tQ2UKBERNOQ/BeG82U9czXzpUYfYDyYdtuQ54t+5XoBfh7u2lMBvrWks/1kYptkJcG/Z7UgJDPGUbgN44r6GNzXc9yCBk53gQEDR+xZiL4EqapYW8mplnEjDLUmApVsCVWYDyutjJ2TVH+vVxy750KBeztsmGSrEERPN7bFSGxlT2dKH8/8oq2/TP0880W0gv7zysKoTZaBH4q9umCH5AK4TnQosz9fTrM22p06WSHhKwDk3FA7EhakW1PKvNmIvEmGjyke2YQQ7KZzSar0L1hYnIqQnw3aX+cGHtAWZxompd4+nJqJWQYqYDKGQAHg2xOI7E85wndHJGxKcEWXB9De6SZFgy7jet9p9gGqUcsG2ROPWxwL0VG7HJHJntUK/wk3XtMqIrci6aUcwGjzT5wVxv5+9uezccc5YgVfdj3K/SRg/7hO4OTZWA5KrgiiOch9GNVJkEPIx2Xbtg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(451199015)(66476007)(31686004)(6666004)(45080400002)(66946007)(6506007)(316002)(54906003)(6512007)(6916009)(66556008)(6486002)(478600001)(4326008)(186003)(2616005)(8676002)(41300700001)(53546011)(8936002)(2906002)(83380400001)(31696002)(38100700002)(36756003)(66574015)(5660300002)(86362001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eGdla2I3NGVVZDljSU1NaHl0MkJNMyt3OUsxdjlDekJkbEhCcXFqR1V5Ny9X?=
 =?utf-8?B?cytSb2R5Mi8xTXdna21NTHhsTndRWGhTVWhTYkxySFFrMW5lWHc4WGVVRGpE?=
 =?utf-8?B?NDJRTUlqWlNGTWMvSmJxRFVyZWlqUk5EWHByV2lySmEySE55c3lzMUc3c1VZ?=
 =?utf-8?B?RHZSMXdwbUFCNlQ5ekpIdGpYWUorcWI1bnJtaEVGR2lSa1o4UWhEKzFsWldG?=
 =?utf-8?B?MWFOSHptSTBkRkdWM3VmZ1NUL1d0SFFmeWN0Tk1PMVd4TURnRE9vcUxwa1M2?=
 =?utf-8?B?RFR4blhocjByVUNkTGgyYURGN1Y1SFJUdThpVUV4M0k3eTVrU1ZJbnZkSUhQ?=
 =?utf-8?B?NlJ3dnlqZU82emZxd1pybE5WMHJNc3ZNdHhNb1UyTXFkdTBubmNOam1CSlZF?=
 =?utf-8?B?SFBkRDg2NWprOFZrZG9hU1o1TURzanF6dDQ2QmxYd1c2bFZOY3RMcGc2VUQy?=
 =?utf-8?B?bm56dFZaeGxrYlNsRDFIbjRabmNxQXdjSi81WmVyV1NUL0plZnNwSzhXZXNu?=
 =?utf-8?B?cXptdTVvVkxyUVhXdGhUQzR1ajVKbEduQTE1aEFGdWtMcE9TeXBhRkEzSkR6?=
 =?utf-8?B?NTUzaVd3K3lNb3dZSTlvblRUR2N3bjNpMkFYVGtvSjdtS0RNVFNoN1FlUmll?=
 =?utf-8?B?U1hCelZPdmVuclRvNEx2bDQvVkVqUmNGU1NLQTVNK2dtNVJVZzNZYzIzREpG?=
 =?utf-8?B?dVMyUUNlc2ZhMzM1Z0VzOGtpaXl1UndtZmJ2ZlhKU0lqNHh4c3NmRHo0M2Rw?=
 =?utf-8?B?UmkvcEJFU2xoWGN1TkZUYStDdnZNL3FxYjdpaEYzR1ErcENNQ3Vxck1DY2Jx?=
 =?utf-8?B?ZmdlVkdqWDE2cHJJZ0YxTGlaakVTem4vN0kzNzNMNC9XT2Fac2dJVHlFWTNG?=
 =?utf-8?B?bkNaWml2ZjFZVFZENDU5SzdyU0M4ZEpwQ0lhNjdHWEFva2pBaTVmano0TTFq?=
 =?utf-8?B?bGdoRzhnaWQ0ZmJ2bjQ0YURvYkZuSEg3VWlBdFJpbkhBK0hlVzlDOCtQa1FQ?=
 =?utf-8?B?czJ2ejVkaU9kOGw2alp6Z1cveHdhZStORE5SQVhXcFZEelJpS2hNTmdoQmQ0?=
 =?utf-8?B?YlA1dzZ6bXdQVXNRYmhLeFpTU2taRjkraFZBQjkya3MyNnY3WHhmNTlRY3lp?=
 =?utf-8?B?SEx5emxIZ3czRWhXY0w2bktwV051ZGNDdGNLUFZBa2lUUFg5VnhzODdjTWEw?=
 =?utf-8?B?dStpTTJ4eUIxTGl3bVBjeUNnUUJJQk5abG9FQ2x1ZHUrYm9JdWRlM2VPYXZW?=
 =?utf-8?B?bGJtUHJKc0ZUU3lqOHlVRmZLUFBVLytmdlArZFRTSG9nRjFpaFYzUjR4OHg5?=
 =?utf-8?B?dUtRbkN6YmlnczIxbzFTWGhYYTJvTFRwL1ViSlFoSGdSYStTckloSVFUa1ly?=
 =?utf-8?B?di9OTGtpVDQ5ZFJhNXB2R0EyMFV0MzAwaTA0eGxDNlNxSDFleEQ3Wmc0dnBv?=
 =?utf-8?B?Z1MzQ3E5OWdMSEJHWXlJREltZElPOVY4Q0xUYzNiaE1rWENpYTI0eGtncCtt?=
 =?utf-8?B?SzYyR0Z6ZU1YZ1BycEZhT0gvdUNSUlNOYWRsSkhmdnpUblhicWhqeUpaODVC?=
 =?utf-8?B?QjB1bWtsYTR0R0RUa1czbmJ5NmlqcWV1UTd3dlRwMnlaSkR4dzNwdHEybVh6?=
 =?utf-8?B?NmdmaEZSNlZSWGdUYVdMVlAzckNYQXFkQ3FUbDZUOWVrM2pPNGJ1ZTRXNXht?=
 =?utf-8?B?SXdVc200T2dEYlg0M2thRnM4VWZIdVBhVXpBOEVWcnNZV2xHdDFNWHRzd1ls?=
 =?utf-8?B?N0FEaEdrSU1QakpyRVprcGlHemxockxHYkF3Zk03UWZmQURZb3lTdWpVaytL?=
 =?utf-8?B?dVFReVdQSlV5M1VFTGNpUGE3UWRRaEM3SVU4djRJNFlaTzdoRXpKSEJMMW80?=
 =?utf-8?B?TmRrQ1ZXckVpY1NnQUhTSUxQWlZnbExkR252Tk1DNVEzcFVOVnNVYkxwcnlS?=
 =?utf-8?B?N1hmcG1CRHRnMCsyNHliQitWZnIvcDlSekVqVi9xeDcxMTF0YWp2cUsvYWxR?=
 =?utf-8?B?SS9JWXFPZjN0VVB6L3BBOXdvVWZzQkN2TUNndnh1RGc3MXRVYTBBcDVSQUs0?=
 =?utf-8?B?aGtTQnJVVUt6clY0cnlrVk9YbVN3elJNNFBaWjBSdis1YmxLZ0pydVpXd2VS?=
 =?utf-8?B?WlBzZzdyUnA1cTEzZnlNaU9ER2JNaUVYaUs2Sk5VeGkwUStUMW1CN0gybjVJ?=
 =?utf-8?Q?FLWG6JTjWlk3PKA3xj/nU/HnU4urPG53RGdQ1AvquvFM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b78c03bf-9d97-44e5-24ee-08dac93eca31
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 08:27:54.5907
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DiBY22Zu5z0NGO4ozWZkgFWxnPIrgb1zzf9lc6lLy/izc3/Elzjo1eX+yp0m08oG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR12MB5869
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: B11233EF19
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.62:from];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: YRAB5DIC5ESE62GB5DNE7BSY6L46AO3V
X-Message-ID-Hash: YRAB5DIC5ESE62GB5DNE7BSY6L46AO3V
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Charan Teja Kalla <quic_charante@quicinc.com>, Gaosheng Cui <cuigaosheng1@huawei.com>, sumit.semwal@linaro.org, Dan Carpenter <dan.carpenter@oracle.com>, Pavan Kondeti <quic_pkondeti@quicinc.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix possible UAF in dma_buf_export
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YRAB5DIC5ESE62GB5DNE7BSY6L46AO3V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTguMTEuMjIgdW0gMDM6MzYgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IE9uIFRodSwgTm92
IDE3LCAyMDIyIGF0IDI6MTYgQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPiB3cm90ZToNCj4+IEFtIDE3LjExLjIyIHVtIDA4OjQ4IHNjaHJpZWIgQ2hhcmFu
IFRlamEgS2FsbGE6DQo+Pj4gU29tZXRpbWUgYmFjayBEYW4gYWxzbyByZXBvcnRlZCB0aGUgc2Ft
ZSBpc3N1ZVsxXSB3aGVyZSBJIGRvIG1lbnRpb25lZA0KPj4+IHRoYXQgZnB1dCgpLS0+ZG1hX2J1
Zl9maWxlX3JlbGVhc2UoKSB3aWxsIHJlbW92ZSBpdCBmcm9tIHRoZSBsaXN0Lg0KPj4+DQo+Pj4g
QnV0IGl0IHNlZW1zIHRoYXQgSSBmYWlsZWQgdG8gbm90aWNlIGZwdXQoKSBoZXJlIGNhbGxzIHRo
ZQ0KPj4+IGRtYV9idWZfZmlsZV9yZWxlYXNlKCkgYXN5bmNocm9ub3VzbHkgaS5lLiBkbWFidWYg
dGhhdCBpcyBhY2Nlc3NlZCBpbg0KPj4+IHRoZSBjbG9zZSBwYXRoIGlzIGFscmVhZHkgZnJlZWQu
IEFtIEkgd3JvbmcgaGVyZT8NCj4+Pg0KPj4+IFNob3VsZCB3ZSBoYXZlIHRoZSBfX2ZwdXRfc3lu
YyhmaWxlKSBoZXJlIGluc3RlYWQgb2YganVzdCBmcHV0KGZpbGUpDQo+Pj4gd2hpY2ggY2FuIHNv
bHZlIHRoaXMgcHJvYmxlbT8NCj4+Pg0KPj4+IFsxXWh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxvcmUua2VybmVsLm9yZyUy
RmFsbCUyRjIwMjIwNTE2MDg0NzA0LkdHMjk5MzAlNDBrYWRhbSUyRiZhbXA7ZGF0YT0wNSU3QzAx
JTdDY2hyaXN0aWFuLmtvZW5pZyU0MGFtZC5jb20lN0M3ZDg3YTMwMmQzMDA0NzllY2ZhNjA4ZGFj
OTBkYzlmNCU3QzNkZDg5NjFmZTQ4ODRlNjA4ZTExYTgyZDk5NGUxODNkJTdDMCU3QzAlN0M2Mzgw
NDMzNTgzMTk0Nzk2NzElN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKV0lqb2lNQzR3TGpBd01E
QWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAwMCU3
QyU3QyU3QyZhbXA7c2RhdGE9ZXJQbDFoR2RmTGJmQ3hLM0ozeGlJUjlib0piZ2o2aFBVbkNCdlpG
b2JvZyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KPj4gVGhhdCBkb2Vzbid0IGxvb2sgbGlrZSB0aGUgcmln
aHQgc29sdXRpb24gdG8gbWUgZWl0aGVyLg0KPj4NCj4+IEVzc2VudGlhbGx5IHdlIGhhdmUgdHdv
IHNlcGFyYXRlIHRlYXIgZG93biBtZXRob2RzIGZvciB0aGUgZG1hX2J1Zg0KPj4gb2JqZWN0IGhl
cmU6DQo+Pg0KPj4gMS4gSXQncyBub3QgY29tcGxldGVseSBpbml0aWFsaXplZCBhbmQgd2UgY2Fu
IGNhbGwga2ZyZWUoKSttb2R1bGVfcHV0KCkNCj4+IHRvIGNsZWFuIHVwLg0KPj4gICAgICAgVGhl
cmUgaXMgYWN0dWFsbHkgYSBkbWFfcmVzdl9maW5pKCkgaGVyZS4gVGhhdCBzaG91bGQgcHJvYmFi
bHkgYmUNCj4+IGZpeGVkLg0KPj4NCj4+IDIuIFRoZSBkbWFfYnVmIG9iamVjdCBpcyBmdWxseSBp
bml0aWFsaXplZCwgYnV0IGNyZWF0aW5nIHRoZSBzeXNmcyBzdGF0cw0KPj4gZmlsZSBmYWlsZWQu
DQo+PiAgICAgICBJbiB0aGlzIGNhc2Ugd2Ugc2hvdWxkICpub3QqIGNsZWFuIGl0IHVwIGxpa2Ug
d2UgY3VycmVudGx5IGRvLCBidXQNCj4+IHJhdGhlciBjYWxsIGZwdXQoKS4NCj4+DQo+PiBTbyB0
aGUgcmlnaHQgdGhpbmcgdG8gZG8gaXMgYSkgZml4IHRoZSBtaXNzaW5nIGRtYV9yZXN2X2Zpbmko
KSBjYWxsIGFuZA0KPj4gYikgZHJvcCB0aGUgc2V0dGluZyBkX2ZzZGF0YT1OVUxMIGhhY2sgYW5k
IHByb3Blcmx5IHJldHVybiBhZnRlciB0aGUgZnB1dCgpLg0KPj4NCj4gVGhpcyBsb29rcyByaWdo
dCB0byBtZSBpZiBieSBwcm9wZXJseSByZXR1cm4geW91IG1lYW4gcmV0dXJuDQo+IEVSUl9QVFIo
cmV0KTsgYXQgdGhlIGVuZCBvZiBlcnJfc3lzZnMgYWZ0ZXIgdGhlIGZwdXQuIChsZXR0aW5nDQo+
IGRtYV9idWZfZmlsZV9yZWxlYXNlIGFuZCBkbWFfYnVmX3JlbGVhc2UgZG8gdGhlIGZ1bGwgY2xl
YW51cCkNCg0KWWVzLCBleGFjdGx5IHRoYXQncyB0aGUgaWRlYS4NCg0KVGhlIG9ubHkgYWx0ZXJu
YXRpdmVzIEkgY2FuIHNlZSB3b3VsZCBiZSB0byBlaXRoZXIgbW92ZSBhbGxvY2F0aW5nIHRoZSAN
CmZpbGUgYW5kIHNvIGNvbXBsZXRpbmcgdGhlIGRtYV9idWYgaW5pdGlhbGl6YXRpb24gbGFzdCBh
Z2FpbiBvciBqdXN0IA0KaWdub3JlIGVycm9ycyBmcm9tIHN5c2ZzLg0KDQo+IElmIHdlIHN0aWxs
IHdhbnQgdG8gYXZvaWQgY2FsbGluZyBkbWFidWYtPm9wcy0+cmVsZWFzZShkbWFidWYpIGluDQo+
IGRtYV9idWZfcmVsZWFzZSBsaWtlIHRoZSBjb21tZW50IHNheXMgSSBndWVzcyB3ZSBjb3VsZCB1
c2Ugc3lzZnNfZW50cnkNCj4gYW5kIEVSUl9QVFIgdG8gZmxhZyB0aGF0LCBvdGhlcndpc2UgaXQg
bG9va3MgbGlrZSB3ZSdkIG5lZWQgYSBiaXQNCj4gc29tZXdoZXJlLg0KDQpObywgdGhpcyBzaG91
bGQgYmUgZHJvcHBlZCBhcyBmYXIgYXMgSSBjYW4gc2VlLiBUaGUgc3lzZnMgY2xlYW51cCBjb2Rl
IA0KbG9va3MgbGlrZSBpdCBjYW4gaGFuZGxlIG5vdCBpbml0aWFsaXplZCBrb2JqIHBvaW50ZXJz
Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+ICAgPg0KPj4gUmVnYXJkcywNCj4+IENo
cmlzdGlhbi4NCj4+DQo+Pj4gVGhhbmtzLA0KPj4+IENoYXJhbg0KPj4+IE9uIDExLzE3LzIwMjIg
MTE6NTEgQU0sIEdhb3NoZW5nIEN1aSB3cm90ZToNCj4+Pj4gU21hdGNoIHJlcG9ydCB3YXJuaW5n
IGFzIGZvbGxvd3M6DQo+Pj4+DQo+Pj4+IGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmM6NjgxIGRt
YV9idWZfZXhwb3J0KCkgd2FybjoNCj4+Pj4gICAgICcmZG1hYnVmLT5saXN0X25vZGUnIG5vdCBy
ZW1vdmVkIGZyb20gbGlzdA0KPj4+Pg0KPj4+PiBJZiBkbWFfYnVmX3N0YXRzX3NldHVwKCkgZmFp
bHMgaW4gZG1hX2J1Zl9leHBvcnQoKSwgZ290byBlcnJfc3lzZnMNCj4+Pj4gYW5kIGRtYWJ1ZiB3
aWxsIGJlIGZyZWVkLCBidXQgZG1hYnVmLT5saXN0X25vZGUgd2lsbCBub3QgYmUgcmVtb3ZlZA0K
Pj4+PiBmcm9tIGRiX2xpc3QuaGVhZCwgdGhlbiBsaXN0IHRyYXZlcnNhbCBtYXkgY2F1c2UgVUFG
Lg0KPj4+Pg0KPj4+PiBGaXggYnkgcmVtb3ZlaW5nIGl0IGZyb20gZGJfbGlzdC5oZWFkIGJlZm9y
ZSBmcmVlKCkuDQo+Pj4+DQo+Pj4+IEZpeGVzOiBlZjNhNmI3MDUwN2EgKCJkbWEtYnVmOiBjYWxs
IGRtYV9idWZfc3RhdHNfc2V0dXAgYWZ0ZXIgZG1hYnVmIGlzIGluIHZhbGlkIGxpc3QiKQ0KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBHYW9zaGVuZyBDdWkgPGN1aWdhb3NoZW5nMUBodWF3ZWkuY29tPg0K
Pj4+PiAtLS0NCj4+Pj4gICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDMgKysrDQo+Pj4+
ICAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQo+Pj4+IGluZGV4IGI4MDk1MTNiMDNmZS4uNjg0OGY1MDIyNmQ1IDEwMDY0NA0KPj4+PiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMNCj4+Pj4gQEAgLTY3NSw2ICs2NzUsOSBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1
Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPj4+
PiAgICAgICByZXR1cm4gZG1hYnVmOw0KPj4+Pg0KPj4+PiAgICBlcnJfc3lzZnM6DQo+Pj4+ICsg
ICAgbXV0ZXhfbG9jaygmZGJfbGlzdC5sb2NrKTsNCj4+Pj4gKyAgICBsaXN0X2RlbCgmZG1hYnVm
LT5saXN0X25vZGUpOw0KPj4+PiArICAgIG11dGV4X3VubG9jaygmZGJfbGlzdC5sb2NrKTsNCj4+
Pj4gICAgICAgLyoNCj4+Pj4gICAgICAgICogU2V0IGZpbGUtPmZfcGF0aC5kZW50cnktPmRfZnNk
YXRhIHRvIE5VTEwgc28gdGhhdCB3aGVuDQo+Pj4+ICAgICAgICAqIGRtYV9idWZfcmVsZWFzZSgp
IGdldHMgaW52b2tlZCBieSBkZW50cnlfb3BzLCBpdCBleGl0cw0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
