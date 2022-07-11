Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CECA58DA06
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 16:01:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DA473F2C0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  9 Aug 2022 14:01:47 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id AE0C83ED6B
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Jul 2022 12:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657541865; x=1689077865;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=PdVwqzslCIPKut3wulWtFRMHLmB5kcHuu9EJv8GQq4w=;
  b=AOvdyqBcK5M5cxcx5vsLWlM6cIyhxoOWnQ6FHbDR8IAgIfld1owBpPjf
   ZeF+twSeCQS1kGZOEMGlorapdGh09I1LG7yPJt/MOP97gNh3XwtR0ityq
   PdZmLUDknkyAuMevlFavGnf4YiBULnqOy5bN8rUezBKQO12OW8n7r/Kr5
   QPN8duJsCF7hRTCmoZYY7yCtOgLPHTkFhGC3/XoG9MHIjNdYF1wqT4ha1
   DWwO9rXHZPYAru2mXrU6137rWtCMyrNJC4IpgLzyI9MTLjMP4rfp84HkK
   YGoANIGA6k5G2OSgKQehZ2xiJrIzFYhfaqxKOXCkQDovQzCXrqqNVHyA3
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="282195695"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="282195695"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2022 05:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400";
   d="scan'208";a="684361657"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2022 05:17:44 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 05:17:43 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 05:17:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 05:17:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 05:17:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AcYea5hOu+OdgfVOs/v9TUBz1HwaXyXT4Dcplh+J9lALYvzXk0cqIUTuKKSH6tBms7WN3LfIeB4H+Zfk8wKi0C/qBSY5Voq3y2NcKnp8KoF2NIBtb7E27DDhzgPMJ+kzlyZFnuBvn7mY1oyxsJRazrCEMiCaFbtVgX57+FHy+PC7UG/mfIrf4eT8FtJpyT+f051hQ86gUChXz04e5/Ci0MbSGrZhRB1SuE7gK0rKRMLg1MLlCIwYfNbpjJBslvasB+mtxtSqUi8YhoO483gTTVQ3jMolK2+krgdVjAMRCCWwoKdXozipMMkBCNCTdM8/bfH15REqD0DGz/Jx9grc3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c3EijBxZJKXV88+nCMJorEHyrk8C7mMZER2jXIVeoD0=;
 b=YAdWznK5phJNMCMB1ap2ddWZKaf3Zlwl3ysiZF82nKhtzmG8vR25a+8mATLrzbPeO8P5Ic4waVhOZqb4GWm0V7l3Fuo8gfFnNrQOESPj1iskzAcWIK6HBLzYTyPoMyiJUjulFnK6BSQeGQFPkE40VAnkuB4Mt4uMmPn3CFLlwNLHQWom1j7DcQC80c+QZrJnJJm/EUrB7tzylr8b0oZGPO0C1QEDG1FgBcocecs6e25lT6w5zQd6xYbk/iJLTvEoHEfiKKMxz25w68wgVKfsf1O4xN02vIDOe/S9ATLhifThyBxoMKAIKYd4lZki5AMJYmRY+8ifdi4FWDbNrcIMPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by BN6PR11MB1763.namprd11.prod.outlook.com (2603:10b6:404:103::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 12:17:36 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 12:17:36 +0000
Message-ID: <fe4cfc97-ca20-b28d-8369-5cd404f27e19@intel.com>
Date: Mon, 11 Jul 2022 14:17:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	=?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20220506141009.18047-1-christian.koenig@amd.com>
 <20220506141009.18047-3-christian.koenig@amd.com>
 <f67d23e2-3953-7717-9c41-65075929525c@intel.com>
 <4c9598f0-4ba7-c18e-2ccd-f508769a72e9@amd.com>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <4c9598f0-4ba7-c18e-2ccd-f508769a72e9@amd.com>
X-ClientProxiedBy: FR3P281CA0040.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::8) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 719d3e9e-75f0-4d52-a03d-08da63375730
X-MS-TrafficTypeDiagnostic: BN6PR11MB1763:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cuhKvoyCuKOS8b5z0LCL3VaWwvvfCshpIbYzQyOGBFJ3UUjgCtKlDNJPnOpAynuEP+HBVVzIFb5CHcUp+42kPFPuz+ajwYc+wXkQq7QE/f2ubFbKWc2lOlRMwUX/sV1mYBQ6NEJePE0dUzs7GKrx5OHu5debrtcL1mZkbaEKk5AZeFOpSRfLBoJbUbz3JVgBT9N7tvLMlEri+IMs/AX3vI9cnb5LYATbpBpwBRuOX7Y17g5trLkzunjOzkK1+B8rshouKzBb7fbbecq4pjeP6AyVz2QFYbG3XBPtz/LjQFIpZ86400CKepMbipErmTRLEgBW3yVek//TzcQ5FH2AtkB0auvIs8mX3QIxLBQZHZu+T0btOjZT2c+TI3QYYgaCr218bhvKJE13e1+LM5Pij+jRIpPGX5El1ZQ6V7ZCryPkj+QVi/yneha6PtwdXkOiKzxOOxAlzMQNrpCVSPjfyDVLNE5e2x5Ga4UVtPFi3c9jnDcHkmAWiqUGstxxT52HCdslQLpaT2u+5hw48KFWbjDHHTsnpAYe4/beOeq7KsX5Fu9+2PS2vm7j6/giVt0gXp2wmo5c/jXiABJdeoWLFqgze98T7lFwjLLcoawFfB3MHB4NoYcS3VwKqapqE7FBAwvnkBNn1T5WNHL3gZie8gWyI64ftNOR1dQE4wR8x5dV6Kf5vMTs4TSFNi3bqoXhawfSftcLQLP876Y3n74w8slevMwD81pStzBGwvfRp5cZYyYEWc8ywkz1nfc4SewZdquhWBWsQtPyhrOFGMOfORH1HYP0s6Pn6g5TbWUHyj8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4243.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(366004)(39860400002)(376002)(396003)(136003)(8676002)(316002)(36756003)(44832011)(110136005)(66946007)(4326008)(83380400001)(5660300002)(8936002)(41300700001)(6486002)(66556008)(966005)(66476007)(31686004)(478600001)(2906002)(53546011)(6506007)(36916002)(66574015)(26005)(186003)(86362001)(31696002)(82960400001)(38100700002)(6512007)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejVDc2t0Qk02SStiVWJreGdER21XcHpFdDVZMkNBWG8zcm01enVEV1huN1JM?=
 =?utf-8?B?NmtHUFpMNlVYSUtINWpPTDNyT3BwYlVtY3BaQUg5SFBJOU43bDRtZW1Xd3I5?=
 =?utf-8?B?dTBINmQ4dVdvQVBSL2FxdE5HcG1rOTA1bTZKZUkwUCtkQy96UWo3THl1OU9R?=
 =?utf-8?B?Mm5LSTJKbWpQbzdWelV4bE96YlpGMERVZFRrL1dBTXVkZHlXM0xRNWdSZ1l1?=
 =?utf-8?B?R1lBZlBRbEhjYXJqSFh2VlZ5S0RtdDlCL0dFRHU3K1NHZmd4Sjl5YmVibGtB?=
 =?utf-8?B?dFJ0cTg0bnpkdU9YdjVCaXY5L1FZVHhGYjJDRHlvZzVESzlnRTNKcEJRaHhM?=
 =?utf-8?B?Z2gwWkRWUWNwMGo3RG55RFp1TEo4MTlZQWdHa1Mxall5dTFWYzBha0dhSGgr?=
 =?utf-8?B?UzhvclRKWkltcGVqR2J0a2hUaTJiY1JLMVJRN0NyWjlGaWdwYTBaZ054TzVn?=
 =?utf-8?B?anZ3MVdvcUxDK0NsaHhiOW1nTDBVdW9yQXFMSHd3QzQyM2VnOE1TT0hKd1dt?=
 =?utf-8?B?NGdZTWtCYmRUMG9UaXRFdEs2TzlCMU1lQSsxWlY3Y2ZESGc2VFo1NmRwK1RH?=
 =?utf-8?B?WDRqNWpBbGpVRE02U2ZhNVNPTzZvbUR3UnJrdklnZ3ZGQWJZVlJpWHZNT3hK?=
 =?utf-8?B?RC9NTWpFdjdtL3dVcEh0Umpud3M1N01RaW15MmNacWpYbkxSN2wzSkw5NnlC?=
 =?utf-8?B?RnlPaWxweGtpelZvNklrcEVSN1BtN1NpcGhaTEc3akszbVdhOWhseTRVaEUr?=
 =?utf-8?B?VXhwbEUrb01KZGx6OTNwRG5wWmVDME1QOGdhZUZZeUhZNXNGN01rSWVBOFpF?=
 =?utf-8?B?ZmN3bnlqbURlOE43R0ttS1lwT2IxbnJGMnRja2c5UFJmWU5sMXVZVFhWNkUv?=
 =?utf-8?B?Y1NGWThmWDRwYk9qai9DZ2h4UmZMWmFNcnY0YmVrY0poTEIwd3RsREgxZmhs?=
 =?utf-8?B?MHhsZGdFS1IydWpKckEza2RrSm9IcWpqNXcwdUZuZHR2OW5VR2lQZE1XRWhZ?=
 =?utf-8?B?ZHRIZU05eWpRWGIyMTlQd1dWN0dJQWJoYXNkT3RZU1JPVUs0UnExTFd1S2Va?=
 =?utf-8?B?dHFYbXZRWE45S2lwUE0rVU9lbUlmZ0k1MUdXbzZnN1Q2VU41WmFyTTZwdHAx?=
 =?utf-8?B?dlg3alpRYjhlZFdja3RGdlYzWnJRblpCa0F6SkY2ZzNDSEhwa0ZaZTN0aEw5?=
 =?utf-8?B?ZGFkdDlqNnVzRmVTSFdqNVhiSzl0YlgyWUlzVEFaaGJUS2p6TjJaQ1NHc01w?=
 =?utf-8?B?cDU5bWhuQXA3eEFsR2w4Q1RPRWNnMGpWOFBmSWhyekRULzZTaisvY1JjZDVN?=
 =?utf-8?B?Nm9BQXFYeFYxRHNtT3BVUHEzejcwejQ0WlRmdlo3Nm9Na2FqMTFVb2VDeVNU?=
 =?utf-8?B?a0tiTDNyN2g4Y2RxN0JZaE1jMmhadFJXL3dTWlNKeWYrRGtzOHNzZFNBZ0pi?=
 =?utf-8?B?eCtPTk5Gb3Zqc0VwaUZGT3NucG82TUxndGxlWFB1MEpwSmx4ckZIRWpscEpD?=
 =?utf-8?B?bGJYa24yb01nMmwzTVEyK01OY09xMjV6bnRoUmd5NGUwR0Z3S1QrdnhTOVRh?=
 =?utf-8?B?a3hzUzhhS2ZkcjdVUjdzQU5tWlR3Nk1TSkVlRlBaNXRoRWZKK1hNN2YzcVQv?=
 =?utf-8?B?dlNvdmx6R25wOFBWM1dISVNiMHB1K3JaTVBZY3kwU2ZQNWUyZUtRemxGS3RV?=
 =?utf-8?B?NWN1dXBIQVlrK3BZNXV1YWU4QWxBVmREK1IySi9DYkFKcjlLZEN1TDkxSFJR?=
 =?utf-8?B?NldrZ3RhTi9Ob3JlOSszOGozUjU0M3lxSEhSUWUrU3VxTFFuWHEvbGtXODNJ?=
 =?utf-8?B?MG4vT21MNjF1QVVKUloxWCtXQlFkZlFwUHF3bFBzYnZQUTJMOG16Ym5tUklL?=
 =?utf-8?B?NTVzcCtLNTcvRjgyenZOdUg5MXBHTXErNWZ1cWVLblJta1FJQlZNVS82aWs3?=
 =?utf-8?B?WWNyVDBVMzl4K2RxMU1hZmxockVtVHA1UERXbDU2TlZaYzNCNExFTjcxcUJ1?=
 =?utf-8?B?MEo0ZURYMGsxcU43Z1FPSUVCaGI5MVRwdlYyNXVnZGZUMjZmaC9FNVhkdzh2?=
 =?utf-8?B?Y1hGang5MCsvRDVoT3RqK21WNCtsd0NaVnJZTTZNaERSOVNubjR0ZGpYWGY0?=
 =?utf-8?B?L3pNYjU1d3YwU0dlSlhqektpcXBlUWJCZGFUMUlqV292NWNSK1lSSEM1T2ZQ?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 719d3e9e-75f0-4d52-a03d-08da63375730
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 12:17:36.6158
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4bE1ratVHenA7GEDGr1Or10eipEZQslWXRq5vaXJgK2nsIqE+4SK998k2p+ayyXDDmH5trKYikdn5r+znrctSz/xQ92wbKNccCTyp24nTdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1763
X-OriginatorOrg: intel.com
X-MailFrom: karolina.drobnik@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XVYGAQS7SDG2UPF4ASLDJ6CTP355WOLO
X-Message-ID-Hash: XVYGAQS7SDG2UPF4ASLDJ6CTP355WOLO
X-Mailman-Approved-At: Tue, 09 Aug 2022 14:01:44 +0000
CC: daniel@ffwll.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/5] dma-buf: return only unsignaled fences in dma_fence_unwrap_for_each v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XVYGAQS7SDG2UPF4ASLDJ6CTP355WOLO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAxMS4wNy4yMDIyIDExOjU3LCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBIaSBLYXJvbGluYSwNCj4gDQo+IEFtIDExLjA3LjIyIHVtIDExOjQ0IHNjaHJpZWIg
S2Fyb2xpbmEgRHJvYm5pazoNCj4+IEhpIENocmlzdGlhbiwNCj4+DQo+PiBJJ20gc29ycnkgZm9y
IGRpZ2dpbmcgdGhpcyBvbmUgb3V0IHNvIGxhdGUuDQo+Pg0KPj4gT24gMDYuMDUuMjAyMiAxNjox
MCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBkbWFfZmVuY2VfY2hhaW4gY29udGFpbmVy
cyBjbGVhbnVwIHNpZ25hbGVkIGZlbmNlcyBhdXRvbWF0aWNhbGx5LCBzbw0KPj4+IGZpbHRlciB0
aG9zZSBvdXQgZnJvbSBhcnJheXMgYXMgd2VsbC4NCj4+Pg0KPj4+IHYyOiBmaXggbWlzc2luZyB3
YWxrIG92ZXIgdGhlIGFycmF5DQo+Pj4gdjM6IG1hc3NpdmVseSBzaW1wbGlmeSB0aGUgcGF0Y2gg
YW5kIGFjdHVhbGx5IHVwZGF0ZSB0aGUgZGVzY3JpcHRpb24uDQo+Pj4NCj4+PiBTaWduZWQtb2Zm
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4gLS0t
DQo+Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtdW53cmFwLmggfCA2ICsrKysrLQ0KPj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+Pg0K
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaCANCj4+PiBi
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXVud3JhcC5oDQo+Pj4gaW5kZXggZTdjMjE5ZGE0ZWQ3
Li5hNGQzNDJmZWY4ZTAgMTAwNjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Ut
dW53cmFwLmgNCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS11bndyYXAuaA0KPj4+
IEBAIC00Myw5ICs0MywxMyBAQCBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfdW53cmFwX25l
eHQoc3RydWN0IA0KPj4+IGRtYV9mZW5jZV91bndyYXAgKmN1cnNvcik7DQo+Pj4gwqDCoCAqIFVu
d3JhcCBkbWFfZmVuY2VfY2hhaW4gYW5kIGRtYV9mZW5jZV9hcnJheSBjb250YWluZXJzIGFuZCBk
ZWVwIA0KPj4+IGRpdmUgaW50byBhbGwNCj4+PiDCoMKgICogcG90ZW50aWFsIGZlbmNlcyBpbiB0
aGVtLiBJZiBAaGVhZCBpcyBqdXN0IGEgbm9ybWFsIGZlbmNlIG9ubHkgDQo+Pj4gdGhhdCBvbmUg
aXMNCj4+PiDCoMKgICogcmV0dXJuZWQuDQo+Pj4gKyAqDQo+Pj4gKyAqIE5vdGUgdGhhdCBzaWdu
YWxsZWQgZmVuY2VzIGFyZSBvcHBvcnR1bmlzdGljYWxseSBmaWx0ZXJlZCBvdXQsIHdoaWNoDQo+
Pj4gKyAqIG1lYW5zIHRoZSBpdGVyYXRpb24gaXMgcG90ZW50aWFsbHkgb3ZlciBubyBmZW5jZSBh
dCBhbGwuDQo+Pj4gwqDCoCAqLw0KPj4+IMKgICNkZWZpbmUgZG1hX2ZlbmNlX3Vud3JhcF9mb3Jf
ZWFjaChmZW5jZSwgY3Vyc29yLCBoZWFkKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXA0KPj4+IMKg
wqDCoMKgwqAgZm9yIChmZW5jZSA9IGRtYV9mZW5jZV91bndyYXBfZmlyc3QoaGVhZCwgY3Vyc29y
KTsgZmVuY2U7wqDCoMKgIFwNCj4+PiAtwqDCoMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5j
ZV91bndyYXBfbmV4dChjdXJzb3IpKQ0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgIGZlbmNlID0gZG1h
X2ZlbmNlX3Vud3JhcF9uZXh0KGN1cnNvcikpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcDQo+Pj4g
K8KgwqDCoMKgwqDCoMKgIGlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCj4+PiDC
oCDCoCAjZW5kaWYNCj4+DQo+PiBJdCBsb29rcyBsaWtlIHRoaXMgcGFydGljdWxhciBwYXRjaCBh
ZmZlY3RzIG1lcmdpbmcgU3luYyBGZW5jZXMsIHdoaWNoIA0KPj4gaXMgcmVmbGVjdGVkIGJ5IGZh
aWxpbmcgSUdUIHRlc3QgKGlndEBzd19zeW5jKVsxXS4gVGhlIGZhaWxpbmcgDQo+PiBzdWJ0ZXN0
cyBhcmU6DQo+PiDCoCAtIHN5bmNfbWVyZ2UgLSBtZXJnaW5nIGRpZmZlcmVudCBmZW5jZXMgb24g
dGhlIHNhbWUgdGltZWxpbmUsIG5laXRoZXINCj4+IMKgwqDCoMKgwqDCoMKgwqAgc2luZ2xlIG5v
ciBtZXJnZWQgZmVuY2VzIGFyZSBzaWduYWxlZA0KPj4NCj4+IMKgIC0gc3luY19tZXJnZV9zYW1l
IC0gbWVyZ2luZyB0aGUgZmVuY2Ugd2l0aCBpdHNlbGYgb24gdGhlIHNhbWUNCj4+IMKgwqDCoMKg
wqDCoMKgwqAgdGltZWxpbmUsIHRoZSBmZW5jZSBkaWRuJ3Qgc2lnbmFsIGF0IGFsbA0KPj4NCj4+
IMKgIC0gc3luY19tdWx0aV90aW1lbGluZV93YWl0IC0gbWVyZ2luZyBkaWZmZXJlbnQgZmVuY2Vz
IG9uIGRpZmZlcmVudA0KPj4gwqDCoMKgwqDCoMKgwqDCoCB0aW1lbGluZXM7IHRoZSBzdWJ0ZXN0
IGNoZWNrcyBpZiBjb3VudGluZyBmZW5jZXMgb2YNCj4+IMKgwqDCoMKgwqDCoMKgwqAgdmFyaW91
cyBzdGF0ZXMgd29ya3MuIEN1cnJlbnRseSwgaXQgY2FuIG9ubHkgc2VlIDINCj4+IMKgwqDCoMKg
wqDCoMKgwqAgYWN0aXZlIGZlbmNlcywgMCBzaWduYWxpbmcgKHNob3VsZCBiZSAyIGFjdGl2ZSwN
Cj4+IMKgwqDCoMKgwqDCoMKgwqAgMSBzaWduYWxpbmcpDQo+Pg0KPj4gUmV2ZXJ0aW5nIHRoaXMg
Y29tbWl0IG9uIHRoZSB0b3Agb2YgZHJtLXRpcCBmaXhlcyB0aGUgaXNzdWUsIGJ1dCBJJ20gDQo+
PiBub3Qgc3VyZSBpZiBpdCB3b3VsZG4ndCBpbXBhY3Qgb3RoZXIgcGxhY2VzIGluIHRoZSBjb2Rl
LiBQbGVhc2UgbGV0IG1lIA0KPj4ga25vdyBpZiBJIGNhbiBiZSBvZiBhbnkgaGVscC4NCj4gDQo+
IA0KPiBUaGFua3MgZm9yIGxldHRpbmcgbWUga25vdy4gTm90IHN1cmUgd2hhdCdzIGdvaW5nIG9u
IGhlcmUsIGJ1dCBJIGNhbiANCj4gdGFrZSBhIGxvb2sgdG9kYXkgaWYgdGltZSBwZXJtaXRzLg0K
DQpUaGUgcmVwcm9kdWN0aW9uIHdpdGggSUdUcyBzaG91bGQgYmUgcXVpdGUgZWFzeS4gWW91J2xs
IG5lZWQgdG8gDQpjbG9uZS9kb3dubG9hZCB0aGUgSUdUIGNvZGUgYW5kIGZvbGxvdyBpbnN0cnVj
dGlvbnMgZm9yIEJ1aWxkaW5nWzFdIHRoZSANCnByb2plY3QgKG1ha2Ugc3VyZSB5b3UgaGF2ZSBt
ZXNvbiBhbmQgbmluamEgaW5zdGFsbGVkKToNCg0KICAgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzDQoNCk9uY2UgeW91IGhhdmUgaXQgdXAgYW5kIHJ1bm5p
bmcsIGdvIHRvIDxpZ3QgcGF0aD4vYnVpbGQvdGVzdHMsIGFuZCBydW4gDQp0aGUgc3VidGVzdHM6
DQoNCiAgIC4vc3dfc3luYyAtLXJ1biBzeW5jX21lcmdlDQogICAuL3N3X3N5bmMgLS1ydW4gc3lu
Y19tZXJnZV9zYW1lDQogICAuL3N3X3N5bmMgLS1ydW4gc3luY19tdWx0aV90aW1lbGluZV93YWl0
DQoNCllvdSBjYW4gcnVuIGFsbCB0aGUgc3VidGVzdHMgd2l0aCAuL3N3X3N5bmMsIGJ1dCBJIHRo
aW5rIHRoZXNlIGFyZSB0aGUgDQptb3N0IHJlbGV2YW50IHRvIHlvdS4NCg0KTWFueSB0aGFua3Ms
DQpLYXJvbGluYQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0NClsxXSAtIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scyNidWlsZGluZw0KDQo+IERvIHlvdSBoYXZl
IGEgZGVzY3JpcHRpb24gaG93IHRvIGVhc3kgcmVwcm9kdWNlIHRoaXM/IEUuZy4gaG93IHRvIHJ1
biANCj4ganVzdCB0aG9zZSBzcGVjaWZpYyBpZ3RzPw0KPiANCj4gVGhhbmtzLA0KPiBDaHJpc3Rp
YW4uDQo+IA0KPj4NCj4+IEFsbCB0aGUgYmVzdCwNCj4+IEthcm9saW5hDQo+Pg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
