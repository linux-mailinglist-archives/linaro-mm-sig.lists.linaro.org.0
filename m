Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08658DA07
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 16:02:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A63713F2C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 14:02:41 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by lists.linaro.org (Postfix) with ESMTPS id 5A7593EBAF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jul 2022 12:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657543272; x=1689079272;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=Z+kapo5dnbFedt+f2HcQKTJrZdJNpomPB/C4P6C9jy0=;
  b=bQBXqcBQlMm4a1o70aHz6XjPkSLzAj2Xw1cW/+ybt7iVUQ3uyufjKu8D
   ejBU8D7Dse9yUUtt/uWeUfoXkyeYYZYs8qyxd2+ikkCUvI5c4V2a+7Nvj
   /NdUHdK6ks176iF4VKsVZ7AgHJg/wVG/FqLKU9gF8V84dPHD3q8jRyGnd
   8vK3hO+hHHvJ3FuCtWC9bersSn+3CQY5DK+OwVD9L+q8DVGN1Eum+moaI
   5IyuceugPjb0YxKdXNYETwvX1dtjC6Kdk7JhkwSIiTBhaVIKkQfQ7MSJJ
   Mrsn7B1ysSmOHYjxYQS+tEpvBdrIhfVX9/Jzo55U3ttZoV04yaDmV7CRm
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="284675340"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="284675340"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2022 05:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="662535467"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2022 05:41:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 05:41:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 05:41:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 05:41:10 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 05:41:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DH96jnAF0iPmU/XWt9Q8EBsuFsZ7bam7AXfuEoD3IqgwMp/+1WS7q3Z7xDYAM9nudT+K/M+OsY5ju9aVfUvEQjd9CDagZp0lUJvx/Yo2VVW3K8KVglYJ/MM5R9pcT3tQqwcwOarXKIUPxUrufrX+m3IaYoUFYc3OPOz2bGXcCthBgF/+DNT/SOMy6fdeddmD0TyFBie51rkfYgsGTMCi04ExnpXcjOWX6uw5L+f+MsC7NxhIdM86gVuTVwA1Gi1cgvHQGHUTJR6jCK35EGl3KLRHu4O0GOz4TudZAjXQaWOcZ3ZyWGHsyupVaFHRXQOjVyvNTsLB+mOhjp/s8Vt8SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n1mJksXUCSbb4RJv0de3PQrtQHOXZM0MX2Bv2X4mPhc=;
 b=ccSLncFZJbyls+OJJno6NCvONd+hfPC+ov7AsrOG0fRZbvxRxjd7/THirMdWz1TkiJU8y+6Rq5xiIH4uVJXG9MAxGRkhEzwmn2t0WudXVKptXVv0W2VuFd9Hwo4kvK6GZ2r7yWyWE7uzNkRykZtsJiGUDhns49sWf36YwnLNlNQKVpi/+3O53E+HmBHXhln+iRT/fHvfkJV0e8MmNYiaAO1RTg8yzj41g6Fb1ffPUMqQGcxi3IKFK2cQUlh+DajXp9THW9EQsOF5wY3g+caWtd96zgdy3r2NcZiyD6PyDQOB+tEDjOYn2XlKPDlgGFkviWNV15L+T0qjbRfxgnfSGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.23; Mon, 11 Jul 2022 12:41:08 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 12:41:08 +0000
Message-ID: <e1604e52-42e0-f98e-3f0d-72a2b00943ca@intel.com>
Date: Mon, 11 Jul 2022 14:41:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	=?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
 <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
 <4c9598f0-4ba7-c18e-2ccd-f508769a72e9@amd.com>
 <fe4cfc97-ca20-b28d-8369-5cd404f27e19@intel.com>
 <b28cca8f-ea2c-bab9-0de7-b469df121e09@amd.com>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <b28cca8f-ea2c-bab9-0de7-b469df121e09@amd.com>
X-ClientProxiedBy: FR3P281CA0053.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::6) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 824ac85d-9d21-476f-50b7-08da633aa07e
X-MS-TrafficTypeDiagnostic: DM5PR11MB1259:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Losb/F6SCLx/Z2E/S1JzodHMrKGq86rs32W+xtOI/sIbXh7of0SJVvLXZc+PYYAcj/c5rPDzPu89NQRVUSNAIRzg09ag6YoAH+U0Q6gX9vWbSYlYwTY5Be4D5dziP2rT9cekS49mlckzw6Hiy15xCQIIoTDi902UPDs6EL2W46o8h8xs/MpdPg5wyAwgZ0wrDB9ReJD0Mrrz1YZo/T6bp8zOceyrIswu/V82Bg7afku6nu7kS6MhfMKwRRNLW8/uKzNkMvA2aSK69ycLKAecj/XGgOGOl1GCDXRT1PQwM5S8Qzv6d/Js5el3b7uFntRgL4okU4xia/4ic0IsQD596lyX5sp2Y1zpq+XrHAwj9EkLSY8KcZYJ9dA2Ki3OoGK+DnQiyyTxecJvGnjH0gj43ts7bfxiLZyk653HRo3LYJomveqvYTrIUUvX3I2tSUwq3HFSFJiI8Xdbk4K8U4TVloI01aJBZOfH6I8ATKhDBzbQLlmKHNDZQrDaDMD7jnxHHspphhsSSD9l9A3SHXdB6haGODMg2xSEL8LgG85oJia/2smWfFcWZkCLP+TOUhTtchUPB2iYx6bnNspWNYs2y7YSrNaKjr7TGDN/0vRDKCAmMTurLyzfeTw67H/RCG4X+D2QISc8HE5qCPLfqTnVqCsbuzprE+pt61AufISEqR2RSPn69wI0NcM5QbNDp63xdJdvxDjKV/oFemQUdzgNeWzWoU0TfDzohwruJFJFKVWADX0dmskwQQF/k+6GC/2u9xUYSSgW9tcJ+wLF7QReVgARbMCWv04drunVaA22qzA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4243.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(346002)(39860400002)(366004)(376002)(136003)(83380400001)(66574015)(38100700002)(66476007)(66946007)(8676002)(2616005)(66556008)(4326008)(186003)(31696002)(82960400001)(86362001)(8936002)(2906002)(44832011)(5660300002)(966005)(316002)(6486002)(6506007)(53546011)(6512007)(41300700001)(26005)(6666004)(110136005)(36756003)(31686004)(478600001)(45080400002)(36916002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aytnL2FLdGVXZ3RnY3FVOVptWGRNTStpQ296ZzZONDA3MERIWW9meUdzNGUv?=
 =?utf-8?B?TTh2ZjVVdC9zTm9vcXFZcUNTU3pDanBmNWhtdmtJMDlpQmtKKzBWQXZlNnJC?=
 =?utf-8?B?cXFXUWlIa0F3WVZzWlBHbHVBb2ZKUGplSFRQVFNqbFI5SmhsTHp4WGlWeE4w?=
 =?utf-8?B?QytobXFxM3YveVF1VjFleHdMUG5qRkpiSDBxc3MvQ2dDdmNXSUdkSGl2Z1hY?=
 =?utf-8?B?a1lGNWc0SlNkRG1xYW55SUdFSnQwOEl4dDlZU0Y0U08vN2ZqZ1ZhVURhSkVn?=
 =?utf-8?B?b2pDYU9aZ09Vc2FwY2JWTVRzSWtuZDhHQ2g0RkdaS2VDaDNDRnFYREVrcUMz?=
 =?utf-8?B?MDZvckQ4eXBXRVc2akJXVmdPS1Mrc1dFdkxXdzJqcDg3anAvYzNVUjRCOG1a?=
 =?utf-8?B?VE00TDFYQ3RlcXFWd2lCMHBZSUNOeVYraVRiTFN4Rk5qVWRHM2FlUGdhQTRx?=
 =?utf-8?B?MVRucFJRMUx3K2Z3ekZWSk02aitmbnI1RHJpQVBSd1pXOERLN21Ta09XUUNG?=
 =?utf-8?B?K3YxbEU5VHBXWVJORnZ0Sm1ucFV2b3Nhb0hhSVMxZy9XT200TDJlN1RRVVJM?=
 =?utf-8?B?MzF3UDVjZjB1eUdvb1FzSmhNQXVqd3dheUY5STlzaW9HMkk4aGtQQndteG40?=
 =?utf-8?B?ejk0d244NnJxeG50ZUhiVTVtTUlyWnFKaktIWE1TaVdoVVpVTy9GdjcvUlp1?=
 =?utf-8?B?K25VS0xSYmx5UEx3Lzd5ODRFWEs5WDFpVzd0WFd2ZFNhWTRTbUtyWTNpMWxz?=
 =?utf-8?B?Vjk2Q1JEY1pJcmZXKzNUY0UvUzZtYStib2hWVlNkM0ViRkp2b1J5cllRR1Vj?=
 =?utf-8?B?S0lBc2VKS1lhMStwRjN1MkU2dGF4bjh5akVvQWd5MmUxRXNkTlphNGRVT3BT?=
 =?utf-8?B?bDA3ZHA5RDA0ZEtlRXNvc3gyNWZkby9vZkpoUlFaKzExVWUxWFBxRyt1OFlY?=
 =?utf-8?B?N1NCSmJGQlJFWlpYWmtTVjluY2F6UTZMZFM4ajhXU0VNbjMvTE92eFBQQVN4?=
 =?utf-8?B?NU8rbWZqZDEwbXdtak5VZFNhQXd5WUsyVzlTVEt2TVhnMmVvcDkyWENYTHZ2?=
 =?utf-8?B?c1FpaVNZblVoeUphV0tuWk95VVJQNHlwRUFzcmh0TFlYdDhVKzNGOGFmR2c2?=
 =?utf-8?B?TWZraFZrYk1YcFQwWXQraXhsSWZQalk5Q09jVkRnTmZiMGttSGdta3FveFd4?=
 =?utf-8?B?c2hxZzI2bG5PeUE1UjlsNzdmUzRVRzlxUFdDUWIrcUhjT1hGV3ZpSmp6bDNQ?=
 =?utf-8?B?M2hONzE2Z2VhTmhQbEYxUnEySklsd3U1VVNrdXFNSnBmODZwTGJSUTN5Q2U0?=
 =?utf-8?B?ZXF6a0N1MHBmbGlXNUQ2emNyVjZuOEVpem9LSWgzRXdxTDZ5c21MUW5ncFp1?=
 =?utf-8?B?MDlRT1NSUWQyWkVRZUxyTURVRzMwVWYrL3JaZkx5b2h3dDl2WnIrSFNPYlZV?=
 =?utf-8?B?c1hKSDlpMDBBSks0aXdJOE11K1FJT1NzMmI2WS9zZE14ajF6R0QyU2poMWlD?=
 =?utf-8?B?T0NIWC91eEtyeU4zZ0VGUTZZMlVKUFQyeFZvNWt1WlpRQmc4Snh2azk1aUN4?=
 =?utf-8?B?Z0pZbTJpNFhaS3ZHVEVPVS9XOU03M2ttWUxTbHZhQkdtUTVZbHF1Unp5NHVp?=
 =?utf-8?B?T3BoTS90b29WRFM2Y29Eek9oK3Z2NlV5bXJyYldrNDJqUHpGMHVab2xBNlp5?=
 =?utf-8?B?M0pUcEU0Ym1HWHZMd1hBZkVIbXR0d0dHcThUNmpTa2ZYQTNFb3h3NDhoQlZH?=
 =?utf-8?B?MFBTM3pzdXdlUTR0MExCRG94Tm54RFl4a2F0dXpQUzVncTIwUlMvUFhad290?=
 =?utf-8?B?VTliZzhqa3NtaS9uc1I0K09GWm1yVU1kbmFhT05kR25ycUJBamV2UHpWTEJD?=
 =?utf-8?B?cWJzT1lORVgyUW5HcWdHY1V4Zy85QjFsZUZwdmhqR2JQWmY4SXlXaDN2UlRr?=
 =?utf-8?B?KzZyR2t2VHFQODdyTzFJUnI0eXF2R2pDdTYva1BxNThXR2FDNlBJNEZ0V1dX?=
 =?utf-8?B?VjhHbjllM1R6d1d1ZEdxeFhWSVFjbzB6a2M1eVVrbEMyTzQxNHB6cEFwSU4r?=
 =?utf-8?B?T3gyQldyUU9xMXpYc2RwbnpHZVFlRnBhV0pCRFdpUHJHaDJkWm4yOEZkSUZk?=
 =?utf-8?B?TjU1a3Z4eEE2KzJvK3p6Lzc5OTN2Z0tJSVVYVnZja2ZVUnpOclJWYUNmQTBZ?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 824ac85d-9d21-476f-50b7-08da633aa07e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 12:41:08.0419
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rg1JfbRDb+AdE7CwStRzy1wvwXfLUqQ6YA/lnzq7P/xKlaxJg8xaRQ8I9fzaJ6trb5cXiqzNQkXPncyw7kghHMNiM0BIJpVXQ0aL/NTlBIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
X-MailFrom: karolina.drobnik@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QE4ZWLBDDOL6Q3GSG5UC7RZJZ7JELLTB
X-Message-ID-Hash: QE4ZWLBDDOL6Q3GSG5UC7RZJZ7JELLTB
X-Mailman-Approved-At: Tue, 09 Aug 2022 14:02:39 +0000
CC: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QE4ZWLBDDOL6Q3GSG5UC7RZJZ7JELLTB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAxMS4wNy4yMDIyIDE0OjI1LCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBIaSBLYXJvbGluYSwNCj4gDQo+IEFtIDExLjA3LjIyIHVtIDE0OjE3IHNjaHJpZWIg
S2Fyb2xpbmEgRHJvYm5pazoNCj4+IEhpIENocmlzdGlhbiwNCj4+DQo+PiBPbiAxMS4wNy4yMDIy
IDExOjU3LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IEhpIEthcm9saW5hLA0KPj4+DQo+
Pj4gQW0gMTEuMDcuMjIgdW0gMTE6NDQgc2NocmllYiBLYXJvbGluYSBEcm9ibmlrOg0KPj4+PiBI
aSBDaHJpc3RpYW4sDQo+Pj4+DQo+Pj4+IEknbSBzb3JyeSBmb3IgZGlnZ2luZyB0aGlzIG9uZSBv
dXQgc28gbGF0ZS4NCj4+Pj4NCj4+Pj4gT24gMDYuMDUuMjAyMiAxNjoxMCwgQ2hyaXN0aWFuIEvD
tm5pZyB3cm90ZToNCj4+Pj4+IGRtYV9mZW5jZV9jaGFpbiBjb250YWluZXJzIGNsZWFudXAgc2ln
bmFsZWQgZmVuY2VzIGF1dG9tYXRpY2FsbHksIHNvDQo+Pj4+PiBmaWx0ZXIgdGhvc2Ugb3V0IGZy
b20gYXJyYXlzIGFzIHdlbGwuDQo+Pj4+Pg0KPj4+Pj4gdjI6IGZpeCBtaXNzaW5nIHdhbGsgb3Zl
ciB0aGUgYXJyYXkNCj4+Pj4+IHYzOiBtYXNzaXZlbHkgc2ltcGxpZnkgdGhlIHBhdGNoIGFuZCBh
Y3R1YWxseSB1cGRhdGUgdGhlIGRlc2NyaXB0aW9uLg0KPj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4+IC0t
LQ0KPj4+Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggfCA2ICsrKysrLQ0K
Pj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
Pj4+Pj4NCj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAu
aCANCj4+Pj4+IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+Pj4+IGluZGV4
IGU3YzIxOWRhNGVkNy4uYTRkMzQyZmVmOGUwIDEwMDY0NA0KPj4+Pj4gLS0tIGEvaW5jbHVkZS9s
aW51eC9kbWEtZmVuY2UtdW53cmFwLmgNCj4+Pj4+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLXVud3JhcC5oDQo+Pj4+PiBAQCAtNDMsOSArNDMsMTMgQEAgc3RydWN0IGRtYV9mZW5jZSAq
ZG1hX2ZlbmNlX3Vud3JhcF9uZXh0KHN0cnVjdCANCj4+Pj4+IGRtYV9mZW5jZV91bndyYXAgKmN1
cnNvcik7DQo+Pj4+PiDCoMKgICogVW53cmFwIGRtYV9mZW5jZV9jaGFpbiBhbmQgZG1hX2ZlbmNl
X2FycmF5IGNvbnRhaW5lcnMgYW5kIGRlZXAgDQo+Pj4+PiBkaXZlIGludG8gYWxsDQo+Pj4+PiDC
oMKgICogcG90ZW50aWFsIGZlbmNlcyBpbiB0aGVtLiBJZiBAaGVhZCBpcyBqdXN0IGEgbm9ybWFs
IGZlbmNlIG9ubHkgDQo+Pj4+PiB0aGF0IG9uZSBpcw0KPj4+Pj4gwqDCoCAqIHJldHVybmVkLg0K
Pj4+Pj4gKyAqDQo+Pj4+PiArICogTm90ZSB0aGF0IHNpZ25hbGxlZCBmZW5jZXMgYXJlIG9wcG9y
dHVuaXN0aWNhbGx5IGZpbHRlcmVkIG91dCwgDQo+Pj4+PiB3aGljaA0KPj4+Pj4gKyAqIG1lYW5z
IHRoZSBpdGVyYXRpb24gaXMgcG90ZW50aWFsbHkgb3ZlciBubyBmZW5jZSBhdCBhbGwuDQo+Pj4+
PiDCoMKgICovDQo+Pj4+PiDCoCAjZGVmaW5lIGRtYV9mZW5jZV91bndyYXBfZm9yX2VhY2goZmVu
Y2UsIGN1cnNvciwgaGVhZCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwNCj4+Pj4+IMKgwqDCoMKg
wqAgZm9yIChmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29yKTsgZmVu
Y2U7wqDCoMKgIFwNCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gZG1hX2ZlbmNlX3Vu
d3JhcF9uZXh0KGN1cnNvcikpDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9m
ZW5jZV91bndyYXBfbmV4dChjdXJzb3IpKSBcDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpKQ0KPj4+Pj4gwqAgwqAgI2VuZGlmDQo+Pj4+DQo+
Pj4+IEl0IGxvb2tzIGxpa2UgdGhpcyBwYXJ0aWN1bGFyIHBhdGNoIGFmZmVjdHMgbWVyZ2luZyBT
eW5jIEZlbmNlcywgDQo+Pj4+IHdoaWNoIGlzIHJlZmxlY3RlZCBieSBmYWlsaW5nIElHVCB0ZXN0
IChpZ3RAc3dfc3luYylbMV0uIFRoZSBmYWlsaW5nIA0KPj4+PiBzdWJ0ZXN0cyBhcmU6DQo+Pj4+
IMKgIC0gc3luY19tZXJnZSAtIG1lcmdpbmcgZGlmZmVyZW50IGZlbmNlcyBvbiB0aGUgc2FtZSB0
aW1lbGluZSwgbmVpdGhlcg0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgIHNpbmdsZSBub3IgbWVyZ2Vk
IGZlbmNlcyBhcmUgc2lnbmFsZWQNCj4+Pj4NCj4+Pj4gwqAgLSBzeW5jX21lcmdlX3NhbWUgLSBt
ZXJnaW5nIHRoZSBmZW5jZSB3aXRoIGl0c2VsZiBvbiB0aGUgc2FtZQ0KPj4+PiDCoMKgwqDCoMKg
wqDCoMKgIHRpbWVsaW5lLCB0aGUgZmVuY2UgZGlkbid0IHNpZ25hbCBhdCBhbGwNCj4+Pj4NCj4+
Pj4gwqAgLSBzeW5jX211bHRpX3RpbWVsaW5lX3dhaXQgLSBtZXJnaW5nIGRpZmZlcmVudCBmZW5j
ZXMgb24gZGlmZmVyZW50DQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgdGltZWxpbmVzOyB0aGUgc3Vi
dGVzdCBjaGVja3MgaWYgY291bnRpbmcgZmVuY2VzIG9mDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAg
dmFyaW91cyBzdGF0ZXMgd29ya3MuIEN1cnJlbnRseSwgaXQgY2FuIG9ubHkgc2VlIDINCj4+Pj4g
wqDCoMKgwqDCoMKgwqDCoCBhY3RpdmUgZmVuY2VzLCAwIHNpZ25hbGluZyAoc2hvdWxkIGJlIDIg
YWN0aXZlLA0KPj4+PiDCoMKgwqDCoMKgwqDCoMKgIDEgc2lnbmFsaW5nKQ0KPj4+Pg0KPj4+PiBS
ZXZlcnRpbmcgdGhpcyBjb21taXQgb24gdGhlIHRvcCBvZiBkcm0tdGlwIGZpeGVzIHRoZSBpc3N1
ZSwgYnV0IEknbSANCj4+Pj4gbm90IHN1cmUgaWYgaXQgd291bGRuJ3QgaW1wYWN0IG90aGVyIHBs
YWNlcyBpbiB0aGUgY29kZS4gUGxlYXNlIGxldCANCj4+Pj4gbWUga25vdyBpZiBJIGNhbiBiZSBv
ZiBhbnkgaGVscC4NCj4+Pg0KPj4+DQo+Pj4gVGhhbmtzIGZvciBsZXR0aW5nIG1lIGtub3cuIE5v
dCBzdXJlIHdoYXQncyBnb2luZyBvbiBoZXJlLCBidXQgSSBjYW4gDQo+Pj4gdGFrZSBhIGxvb2sg
dG9kYXkgaWYgdGltZSBwZXJtaXRzLg0KPj4NCj4+IFRoZSByZXByb2R1Y3Rpb24gd2l0aCBJR1Rz
IHNob3VsZCBiZSBxdWl0ZSBlYXN5LiBZb3UnbGwgbmVlZCB0byANCj4+IGNsb25lL2Rvd25sb2Fk
IHRoZSBJR1QgY29kZSBhbmQgZm9sbG93IGluc3RydWN0aW9ucyBmb3IgQnVpbGRpbmdbMV0gDQo+
PiB0aGUgcHJvamVjdCAobWFrZSBzdXJlIHlvdSBoYXZlIG1lc29uIGFuZCBuaW5qYSBpbnN0YWxs
ZWQpOg0KPj4NCj4+IGh0dHBzOi8vbmFtMTEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5j
b20vP3VybD1odHRwcyUzQSUyRiUyRmdpdGxhYi5mcmVlZGVza3RvcC5vcmclMkZkcm0lMkZpZ3Qt
Z3B1LXRvb2xzJmFtcDtkYXRhPTA1JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3
QzlhOTU4N2FlZmQyZDRhYzJkODYyMDhkYTYzMzc1Y2I2JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFh
ODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzkzMTM4NjY4MzYxMTc2NiU3Q1Vua25vd24lN0NUV0Zw
Ykdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhh
V3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT00V3NNdXRjRkoySHdC
cWxkJTJCVHY5TjFUeDZjYkZNd0pKWjZram01cmJmb0klM0QmYW1wO3Jlc2VydmVkPTAgDQo+Pg0K
Pj4NCj4+IE9uY2UgeW91IGhhdmUgaXQgdXAgYW5kIHJ1bm5pbmcsIGdvIHRvIDxpZ3QgcGF0aD4v
YnVpbGQvdGVzdHMsIGFuZCBydW4gDQo+PiB0aGUgc3VidGVzdHM6DQo+Pg0KPj4gwqAgLi9zd19z
eW5jIC0tcnVuIHN5bmNfbWVyZ2UNCj4+IMKgIC4vc3dfc3luYyAtLXJ1biBzeW5jX21lcmdlX3Nh
bWUNCj4+IMKgIC4vc3dfc3luYyAtLXJ1biBzeW5jX211bHRpX3RpbWVsaW5lX3dhaXQNCj4+DQo+
PiBZb3UgY2FuIHJ1biBhbGwgdGhlIHN1YnRlc3RzIHdpdGggLi9zd19zeW5jLCBidXQgSSB0aGlu
ayB0aGVzZSBhcmUgdGhlIA0KPj4gbW9zdCByZWxldmFudCB0byB5b3UuDQo+IA0KPiBUaGFua3Ms
IEkndmUgYWxyZWFkeSBtYW5hZ2VkIHRvIHJlcHJvZHVjZSBpdC4NCj4gDQo+IE5vdCBzdXJlIHdo
YXQncyBnb2luZyBvbiBoZXJlLCBidXQgY291bGQgYmUgdGhhdCB0aGUgdGVzdCBjYXNlIHdhcyBu
ZXZlciANCj4gY29ycmVjdCBpbiB0aGUgZmlyc3QgcGxhY2UuIE5lZWQgdG8gZG91YmxlIGNoZWNr
Lg0KDQpUaGF0J3MgYWxzbyBhIHBvc3NpYmlsaXR5LCBidXQgSSBjb3VsZG4ndCB2ZXJpZnkgaXQg
YmVmb3JlIHdyaXRpbmcgdG8gDQp5b3UsIGFzIGl0J3Mgbm90IG15IGFyZWEgb2YgZXhwZXJ0aXNl
Lg0KDQpUaGFua3MgZm9yIHRha2luZyBhIGxvb2sgYXQgdGhpcy4NCg0KQWxsIHRoZSBiZXN0LA0K
S2Fyb2xpbmENCg0KPiBUaGFua3MsDQo+IENocmlzdGlhbi4NCj4gDQo+Pg0KPj4gTWFueSB0aGFu
a3MsDQo+PiBLYXJvbGluYQ0KPj4NCj4+IC0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4gWzFdIC0gDQo+
PiBodHRwczovL25hbTExLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0
cHMlM0ElMkYlMkZnaXRsYWIuZnJlZWRlc2t0b3Aub3JnJTJGZHJtJTJGaWd0LWdwdS10b29scyUy
M2J1aWxkaW5nJmFtcDtkYXRhPTA1JTdDMDElN0NjaHJpc3RpYW4ua29lbmlnJTQwYW1kLmNvbSU3
QzlhOTU4N2FlZmQyZDRhYzJkODYyMDhkYTYzMzc1Y2I2JTdDM2RkODk2MWZlNDg4NGU2MDhlMTFh
ODJkOTk0ZTE4M2QlN0MwJTdDMCU3QzYzNzkzMTM4NjY4MzYxMTc2NiU3Q1Vua25vd24lN0NUV0Zw
Ykdac2IzZDhleUpXSWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhh
V3dpTENKWFZDSTZNbjAlM0QlN0MzMDAwJTdDJTdDJTdDJmFtcDtzZGF0YT1GVjBBbzZyYThFT3ly
NGNPczRON21DbXBPRVVVT2JUcmd5T3JkMHR2RVY4JTNEJmFtcDtyZXNlcnZlZD0wIA0KPj4NCj4+
DQo+Pj4gRG8geW91IGhhdmUgYSBkZXNjcmlwdGlvbiBob3cgdG8gZWFzeSByZXByb2R1Y2UgdGhp
cz8gRS5nLiBob3cgdG8gcnVuIA0KPj4+IGp1c3QgdGhvc2Ugc3BlY2lmaWMgaWd0cz8NCj4+Pg0K
Pj4+IFRoYW5rcywNCj4+PiBDaHJpc3RpYW4uDQo+Pj4NCj4+Pj4NCj4+Pj4gQWxsIHRoZSBiZXN0
LA0KPj4+PiBLYXJvbGluYQ0KPj4+Pg0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
