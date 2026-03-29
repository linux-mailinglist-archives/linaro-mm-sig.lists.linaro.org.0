Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE1VI/1i5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:41 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2713943158B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:31:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 130943F7D9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:31:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
	by lists.linaro.org (Postfix) with ESMTPS id 68CF53F4B6
	for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Mar 2026 19:12:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=UjYCDaKL;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (lists.linaro.org: domain of vivek.kasireddy@intel.com designates 198.175.65.17 as permitted sender) smtp.mailfrom=vivek.kasireddy@intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1774811532; x=1806347532;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=BcZB+kEHOpGQWfFtFSVdvBx/YmdfwbED8dYliESTWLU=;
  b=UjYCDaKLomDP4/O5uNj4a3AeWTumnD3QW1JDv4H6FUnCWuA+06Y7H7Bm
   Oe1D9J+1K0WtQI+GNX0a9eJWQ6svGRaDaA76Gqqu8c3m03HeyIvEg6j2z
   fJ8Nt/qnhvuMV8KAjbzRcjBSh0RFOxPsb9WZWEmfmFxuEQzLrr1IXJ8oK
   nWtn4/3oHcA0OPlpyH4SsOWC72Y+D7bs4tpsySGy02z2Z5ocuQvQVyE1a
   yTqBvS685hbZdQkAmu4DCojWqvBqEoCP91fCQ8i5SIdtA2/NAfrL+nkfV
   9RsNXAk919kZnwEgb2G/E2xHJDvjA/JPysROmkMtkB+7tFd+3uNzwQN1S
   g==;
X-CSE-ConnectionGUID: qubfN9lmTZS+Et4sRSIprg==
X-CSE-MsgGUID: JETTLF54SFCpT8INem/HjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="75781508"
X-IronPort-AV: E=Sophos;i="6.23,148,1770624000";
   d="scan'208";a="75781508"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2026 12:12:11 -0700
X-CSE-ConnectionGUID: 8n+LVhdnQZmrvpVEIcBe9Q==
X-CSE-MsgGUID: 5vqOjGJSQs6BJq7AGvTacQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,148,1770624000";
   d="scan'208";a="230766951"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
  by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2026 12:12:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 12:12:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 29 Mar 2026 12:12:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 12:12:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WpHCAgAYefvf79Je/YjzoZ5HzHnVNQ/1z0iOelBlui9FX+rPN9E1TnPf4hnds3tn7KZlt56x5R5Ifs3nCN+VwEuqkVPw3LsZ9/wJ7F/GbZOSHPdSIALU3WQJ1kDykLMND/9PSAGOxFGJhw8bIMR8q5CpktnrxDJrc3HEHMgw/4MvqulQZtF+3EaK6/cij7H9uWKFoFeH2qaI76BsLREwMrV9N8uH8rONOO0YBMYmMqds/Elh2iR47sHMs38KjI5V6CX9ns05veQqE8Wb4FtJwtTlboXhi4dUr8cXjUIshOwBcNtJ9exVViwB4xzCIdeTnbJa525XTBsOzwWMLcmOGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BcZB+kEHOpGQWfFtFSVdvBx/YmdfwbED8dYliESTWLU=;
 b=QB10PjNXS+wLeuppNUXAPKuS7vj9eLNz9iX0FfJbl9KQhWTcEVtv8Yazqa7fHWEV8bpps7BhGjOtrvbQ/0Zj1ILyAs/pNYJr31BRHj+wiLuqmUFwk7rtQ8H+ZfX7HqwqpLycONPPq1ooLrlHqTX0gOih5AhW2+v1uk1iR3uGL1KQ8+vGRK8ij+chyDaYzeH1pCDXNvxGUsN3ZWc4OAJ/8r8f+5zeJbp43MHDT/CPwEafmrfPqnS5db7VLlStCpcVwVUiw/8EnvnZf0fwB+3CoVALBmeFEpNf86JsSftCAA5zI/fZJIBL0ZwehDhkmKqChL9sh98dSXRJRea7vB5S2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7185.namprd11.prod.outlook.com (2603:10b6:208:432::20)
 by PH0PR11MB5109.namprd11.prod.outlook.com (2603:10b6:510:3e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Sun, 29 Mar
 2026 19:12:05 +0000
Received: from IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e]) by IA0PR11MB7185.namprd11.prod.outlook.com
 ([fe80::9f37:cb81:5463:300e%5]) with mapi id 15.20.9769.014; Sun, 29 Mar 2026
 19:12:05 +0000
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>, "kraxel@redhat.com"
	<kraxel@redhat.com>
Thread-Topic: [PATCH] dma-buf/udmabuf: skip redundant cpu sync to fix
 cacheline EEXIST warning
Thread-Index: AQHctdAdEiBcXRZXdE6KpMVNKEWqyrXCf4OAgABYNKA=
Date: Sun, 29 Mar 2026 19:12:05 +0000
Message-ID: <IA0PR11MB7185CCB08BE83F37DC239EF2F855A@IA0PR11MB7185.namprd11.prod.outlook.com>
References: <20260317053653.28888-1-mikhail.v.gavrilov@gmail.com>
 <CABXGCsOCjQQ65uO3c8DFGx+ErLtn9jSVnktb3MgVdHRfU2pbVw@mail.gmail.com>
In-Reply-To: <CABXGCsOCjQQ65uO3c8DFGx+ErLtn9jSVnktb3MgVdHRfU2pbVw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7185:EE_|PH0PR11MB5109:EE_
x-ms-office365-filtering-correlation-id: 94e1f976-69b9-4895-3ab1-08de8dc71114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: lbKBKxDRvBM3ET70RBHAD5Mym3+NLsNwCpi+fhcP9mKU4D7DL5OWIci6idDD4hR0vLblQ4Zx9S8E2tZUdRVY9rt8YxJ5MKz9bxaACiXbvw/mfOtIX1tya3aLJV4kn5v0moWq+vIAbQEbJK9qnzDSA0IO749hhZuUJtihWtBKcvhmzeo048E/nv3L/Z3qygLBSHiGTdUpBDvo5oK5JhUuzuHyI7f1FnbMmeOqM0YOHClp6U2IkHIGIq0+vfYkyBQ4uKC/lcgFXqLu1/GpVevREmvzBqmw6oANDduDrf8pZbX1DyQq2Wi8Lsu/B9XLneHLIn8wxScwHfqLR7pKR/NiftGPnY6JWIq+zvwh9NiBqrmokGoVyzrn7Jq/xsc6ovP9CZsqycFHc/pUfWC56Iv1RsO9H8dZY8NCLXY3fhNn4tkgPqehOACa6qavomhBeRfcEnNUKWZVvDdY0VH6DWyGbH82wQ2q8+dddxqP+pscJ0vDmpkGKH/WcepY+kqsMiQ2DWqdMx9d6sEd3vkWSEuIko32nEPFst6DwMluywjWOqfXKgUOpep52HJ5e0/rtSCnfuzay0vZmuIpHbycAxVK/edltxSOBvE/vlUydPI+53+IylbudRyLB+w4bFCNpUkM/bfTXtNz6UwaJJkU8G3aB5psTZZeG5kUpfFop4L28e+QxmoqPW8NsgRE8uWkSAn5aQcvRMbjpfsD4FasDhTcc+8lZbNYYQsL3+B/pVeZUXRCaU6IuiiR/mjKJyj1ic5FI1mKWxB90nOMNfdpUWt9HQUBypZ0MbPajWXIH7Fyk6Q=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR11MB7185.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEpVZ0lQSldGMU1VbkJjVFRTRkRIVjU4WlNncUF6aGlIbUZ0ZWVGeGhhVkJs?=
 =?utf-8?B?R3lvZUdFVW1WdCtUbGxtV1BzUWsxdTgyUXZ4KzVxeDFwc0VzbUFLeVBGZ3dD?=
 =?utf-8?B?WHlOSVBiNnRHdFJPQnc3enhNWHo5VFpZN1VMcjJkRGYxWmZGZUluMWJRZWxD?=
 =?utf-8?B?YktpNVFoN0RKbjNnTkRnRk4zZVVHQTc0eEt0bHhYYlJHZnhHTlZ0UVFGOXlF?=
 =?utf-8?B?WkhSSFpZSk91b3Q1Q1pURnVsYXdZWkE0ekptZDVCVjA0dStFcWFjRTB0UWUv?=
 =?utf-8?B?U0o1OHBndElPN3c4cDB5VmgvYzB6cXNwekdCMndXN0psdjlrRTE1OHlVR2ZH?=
 =?utf-8?B?RWI0KzBXdmRkOHc3QlpiNmdqckNJV2tNS1RmK0owTFdVeFd3dzBPazd1RTVS?=
 =?utf-8?B?N2dyL3lYWWNBaS9oclpjQXp1N0xLcXhpMmk1eHZiWnV0YVliZW9MR0JFeUxK?=
 =?utf-8?B?SXRPL0N2bFRwRGFuSmZmaFpHT1pBYkY3VTdGNUhwZmd0aC8xWjJSR09zTUZT?=
 =?utf-8?B?aEllSlZ3SjNmYjFSM1VkMEFOeVY4TWZuRDh3aEVmcGtmZUttTUkyZ3p3a29h?=
 =?utf-8?B?NkxOMEdnc3psMXdSa1RxaWNkMmpSRW9pSG1lS0hXR2ZmZC8wL2dxZ0RzSmx0?=
 =?utf-8?B?Wm9YV29nUm5zeXVpNWhYRytkMER0WjdFbmVjbE9IU2ZVUHV2dG5KUDZVQ3ZO?=
 =?utf-8?B?S1VNR04vUERkYXFDemRYUENXa2hGQjJGUS9LblNnSkxoOVRPUzVMU3phRWsv?=
 =?utf-8?B?VVVKR1A3NExkVjN5dCt4Y01wSDIrWkhBOGh0QlcrSk1oUVRXaU5PYUk0WUUz?=
 =?utf-8?B?Smg5eEFLaTVscXJ0VFliSkJrTmswS2JOUnlTWUgrbHRyOVVyMlNkTFpmUFZ2?=
 =?utf-8?B?T0xzaVJKSzJVZUpmTSt6MjNFN29rZEtmWDJ4OXJyQ0JzODRsSm9DSVhQdUNh?=
 =?utf-8?B?WklYWnR4cVJJSy9HcXFOYUNPTnk5OVdvUk9uV1FCVXk0ZzNSaWVvOGNVR3Fq?=
 =?utf-8?B?MGRlWU9zUjhpdzlrMXJoT1R5Y0NXMUFqVkF4MU54aW00ZFhNbm9FTkV1dndY?=
 =?utf-8?B?RmZIT2o5NXlXOVlOVGxPeDlJWDlQNkY4U0EremhJcU4vYTlZcUF2dUo5Z2pU?=
 =?utf-8?B?cmtPWjhzWTRGeS9Vb0xmQzdKNFBtakdneTJYc3FVSUpjcVp0RUU3SGt0Q0FM?=
 =?utf-8?B?RHNoZENjN0dHZWh4bWNHaTJpSWk1ZTNSME9EVWdCSStaUmQwdkFSRURaU1pX?=
 =?utf-8?B?K0FOV0J0S2RZVW52bjlUb21weTZaMXRxY0p2M1ZMazY2SldsZ2JBMEhkYnBG?=
 =?utf-8?B?Z2Y1U3Axd2haVDhZM2o3VVh5eWcySmNtNUs1ZVlwZHZ0a0puVTFyTE5iRkNs?=
 =?utf-8?B?bnpUN012cExjRGRRT2QzMHJ3Z3AxSnNvQ2UxSkxZQTB2SXN0Rk9uYkRaMVFZ?=
 =?utf-8?B?aEFRaEtyZm5TSGFQL0QzcjVORk83L1RjeU9OVGN1dW52MjJ2eXIzODR3NVN2?=
 =?utf-8?B?M0VJNHpQU29YYWg4cm9sTXIvam92YWZGenBhMVVBeTVVaTk4c2tvVzNjenNW?=
 =?utf-8?B?eGdKWmtuZ3FuWUhDNUlXTkNkWkQwZ0Y3TS9BaWVvaWkwbWUwekg3ZVNmaUJs?=
 =?utf-8?B?cmp5NFByQXd3SkFPb3FoZWwwWmt0T3VOTFVGYmhuOFlHbE9TMklLMzZhZW5t?=
 =?utf-8?B?eHlaSWJaM0hOZkVsbi84ZmlIaDR3Qk5GR2FnL2drMjBEci9DS1pUSmtTSVN4?=
 =?utf-8?B?QWdNa0l3cW5TOWprZmhjMXBzcVJIYnVHZzZSMUtZOUJOT2JQdmNTb1R5Yndk?=
 =?utf-8?B?R2xJcm8wdFpvNVNGMVIvUzFNWDljUmtDa2xuR2hxMUdCQURlQ25aeis1VE9Q?=
 =?utf-8?B?TUpHckR6ZVhudW9uTDlDS1hQSVVYemc0Wk5uVGlRWFdJTVFPbE9XbEJRQnh3?=
 =?utf-8?B?azlVcXlvMi9VTXJqaENUbUVZRFd5Wm93aTRTT0dtbU43dDN4OFlWelVXN1lh?=
 =?utf-8?B?ODR1VFg0bkFjdU1CSFZ5Vi9xYk9sWStCMk1STVZvZWxUak1uMU1GQ0dxR1dz?=
 =?utf-8?B?b1d2L2ZsVTB5UEJVSWFZdWY3cDBDYnc5OVhqQ2oyczNIT25uZjgxL1JTb1JS?=
 =?utf-8?B?Q0lKZnREZ2tONUxRUnBwczQwS1REdnlRRWNTT3U4REhzZWdXanViZ2JyVWQz?=
 =?utf-8?B?VGNqRjBFZ1Fad0J0dGkyMTZrb0cwcnZhUU9pOC9jeUNEdi9GdGhFRXg4dnhT?=
 =?utf-8?B?enlabit5Rm9UanB0M0ptVlZmRVNJR0xZRUdKY0dxckczWTZLc0psMFVXR1U5?=
 =?utf-8?B?RnY3eDMzdTlnRkQ1UnZwL1FwRm1KTGtDL0VCYmM0ODhkUnFlaTh2QT09?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DdnnabEAiYZYMfMMZv8QWZ3Idz+4jvdrwm/PCbX9gROA9NVE66rtNZebNXTmtCpqZYGHrJNKmnXdTaXFaeW/WnawTLUhIIq9NtJ3NrqzPhBl7ipcgdlkGrYW5RlbGeWNIKYozH6jTR3axQBgib8wllpoMUoBLAeRbpyjoTwKfGc2zL0+tulzGKmoyce/ljiHfS3W6W4bv4rb9gWSaxSUHYnWY5v076Tm7lDa16xzPXPJmWZq1o+jd/LEzcaw6Eeow/ZQUFtXhCl+IDUu21firxj/1y/7LTaLUS87vP62pwk+ux1NpWet6cIFokVt7lD9tZHhcLhXcHu24vJh32mbHQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e1f976-69b9-4895-3ab1-08de8dc71114
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2026 19:12:05.7095
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P4gaH5F/IaCXwiaVe1caXLU3lYew9wP5Wafo2m4ArCYOquQocgyPC5xLrOELKmjd5/4TajSj0Ptup27RcGDIxWr60A6H0/cto0l+JxosJcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5109
X-OriginatorOrg: intel.com
X-Spamd-Bar: -------
X-MailFrom: vivek.kasireddy@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U23CYDZYQDZE6HDDSLPUL2QHYNCH3A5F
X-Message-ID-Hash: U23CYDZYQDZE6HDDSLPUL2QHYNCH3A5F
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:56 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U23CYDZYQDZE6HDDSLPUL2QHYNCH3A5F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	DATE_IN_PAST(1.00)[526];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,redhat.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,IA0PR11MB7185.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[vivek.kasireddy@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.936];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2713943158B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgTWlraGFpbCwNCg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkbWEtYnVmL3VkbWFidWY6IHNr
aXAgcmVkdW5kYW50IGNwdSBzeW5jIHRvIGZpeA0KPiBjYWNoZWxpbmUgRUVYSVNUIHdhcm5pbmcN
Cj4gDQo+IE9uIFR1ZSwgTWFyIDE3LCAyMDI2IGF0IDEwOjM34oCvQU0gTWlraGFpbCBHYXZyaWxv
dg0KPiA8bWlraGFpbC52LmdhdnJpbG92QGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBXaGVu
IENPTkZJR19ETUFfQVBJX0RFQlVHX1NHIGlzIGVuYWJsZWQsIGltcG9ydGluZyBhIHVkbWFidWYN
Cj4gaW50byBhIERSTQ0KPiA+IGRyaXZlciAoZS5nLiBhbWRncHUgZm9yIHZpZGVvIHBsYXliYWNr
IGluIEdOT01FIFZpZGVvcyAvIFNob3d0aW1lKQ0KPiA+IHRyaWdnZXJzIGEgc3B1cmlvdXMgd2Fy
bmluZzoNCj4gPg0KPiA+ICAgRE1BLUFQSTogYW1kZ3B1IDAwMDA6MDM6MDAuMDogY2FjaGVsaW5l
IHRyYWNraW5nIEVFWElTVCwgXA0KPiA+ICAgICAgIG92ZXJsYXBwaW5nIG1hcHBpbmdzIGFyZW4n
dCBzdXBwb3J0ZWQNCj4gPiAgIFdBUk5JTkc6IGtlcm5lbC9kbWEvZGVidWcuYzo2MTkgYXQgYWRk
X2RtYV9lbnRyeSsweDQ3My8weDVmMA0KPiA+DQo+ID4gVGhlIGNhbGwgY2hhaW4gaXM6DQo+ID4N
Cj4gPiAgIGFtZGdwdV9jc19pb2N0bA0KPiA+ICAgIC0+IGFtZGdwdV90dG1fYmFja2VuZF9iaW5k
DQo+ID4gICAgIC0+IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQNCj4gPiAgICAgIC0+IFt1ZG1hYnVm
XSBtYXBfdWRtYWJ1ZiAtPiBnZXRfc2dfdGFibGUNCj4gPiAgICAgICAtPiBkbWFfbWFwX3NndGFi
bGUoZGV2LCBzZywgZGlyZWN0aW9uLCAwKSAgLy8gYXR0cnM9MA0KPiA+ICAgICAgICAtPiBkZWJ1
Z19kbWFfbWFwX3NnIC0+IGFkZF9kbWFfZW50cnkgLT4gRUVYSVNUDQo+ID4NCj4gPiBUaGlzIGhh
cHBlbnMgYmVjYXVzZSB1ZG1hYnVmIGJ1aWxkcyBhIHBlci1wYWdlIHNjYXR0ZXItZ2F0aGVyIGxp
c3QNCj4gdmlhDQo+ID4gc2dfc2V0X2ZvbGlvKCkuICBXaGVuIGJlZ2luX2NwdV91ZG1hYnVmKCkg
aGFzIGFscmVhZHkgY3JlYXRlZCBhbiBzZw0KPiA+IHRhYmxlIG1hcHBlZCBmb3IgdGhlIG1pc2Mg
ZGV2aWNlLCBhbmQgYW4gaW1wb3J0ZXIgc3VjaCBhcyBhbWRncHUNCj4gbWFwcw0KPiA+IHRoZSBz
YW1lIHBhZ2VzIGZvciBpdHMgb3duIGRldmljZSB2aWEgbWFwX3VkbWFidWYoKSwgdGhlIERNQQ0K
PiBkZWJ1Zw0KPiA+IGluZnJhc3RydWN0dXJlIHNlZXMgdHdvIGFjdGl2ZSBtYXBwaW5ncyB3aG9z
ZSBwaHlzaWNhbCBhZGRyZXNzZXMNCj4gc2hhcmUNCj4gPiBjYWNoZWxpbmUgYm91bmRhcmllcyBh
bmQgd2FybnMgYWJvdXQgdGhlIG92ZXJsYXAuDQo+ID4NCj4gPiBUaGUgRE1BX0FUVFJfU0tJUF9D
UFVfU1lOQyBmbGFnIHN1cHByZXNzZXMgdGhpcyBjaGVjayBpbg0KPiA+IGFkZF9kbWFfZW50cnko
KSBiZWNhdXNlIGl0IHNpZ25hbHMgdGhhdCBubyBDUFUgY2FjaGUgbWFpbnRlbmFuY2UgaXMNCj4g
PiBwZXJmb3JtZWQgYXQgbWFwL3VubWFwIHRpbWUsIG1ha2luZyB0aGUgY2FjaGVsaW5lIG92ZXJs
YXANCj4gaGFybWxlc3MuDQo+ID4NCj4gPiBBbGwgb3RoZXIgbWFqb3IgZG1hLWJ1ZiBleHBvcnRl
cnMgYWxyZWFkeSBwYXNzIHRoaXMgZmxhZzoNCj4gPiAgIC0gZHJtX2dlbV9tYXBfZG1hX2J1Zigp
IHBhc3NlcyBETUFfQVRUUl9TS0lQX0NQVV9TWU5DDQo+ID4gICAtIGFtZGdwdV9kbWFfYnVmX21h
cCgpIHBhc3NlcyBETUFfQVRUUl9TS0lQX0NQVV9TWU5DDQo+ID4NCj4gPiBUaGUgQ1BVIHN5bmMg
YXQgbWFwL3VubWFwIHRpbWUgaXMgYWxzbyByZWR1bmRhbnQgZm9yIHVkbWFidWY6DQo+ID4gYmVn
aW5fY3B1X3VkbWFidWYoKSBhbmQgZW5kX2NwdV91ZG1hYnVmKCkgYWxyZWFkeSBwZXJmb3JtDQo+
IGV4cGxpY2l0DQo+ID4gY2FjaGUgc3luY2hyb25pemF0aW9uIHZpYSBkbWFfc3luY19zZ3RhYmxl
X2Zvcl9jcHUvZGV2aWNlKCkgd2hlbg0KPiBDUFUNCj4gPiBhY2Nlc3MgaXMgcmVxdWVzdGVkIHRo
cm91Z2ggdGhlIGRtYS1idWYgaW50ZXJmYWNlLg0KPiA+DQo+ID4gUGFzcyBETUFfQVRUUl9TS0lQ
X0NQVV9TWU5DIHRvIGRtYV9tYXBfc2d0YWJsZSgpIGFuZA0KPiA+IGRtYV91bm1hcF9zZ3RhYmxl
KCkgaW4gdWRtYWJ1ZiB0byBzdXBwcmVzcyB0aGUgc3B1cmlvdXMgd2FybmluZw0KPiBhbmQNCj4g
PiBza2lwIHRoZSByZWR1bmRhbnQgc3luYy4NCj4gPg0KPiA+IEZpeGVzOiAyODQ1NjJlMWYzNDgg
KCJ1ZG1hYnVmOiBpbXBsZW1lbnQNCj4gYmVnaW5fY3B1X2FjY2Vzcy9lbmRfY3B1X2FjY2VzcyBo
b29rcyIpDQo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gPiBTaWduZWQtb2ZmLWJ5
OiBNaWtoYWlsIEdhdnJpbG92IDxtaWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVm
LmMNCj4gPiBpbmRleCA5NGI4ZWNiODkyYmIuLjljNmY4Nzg1YTI4YSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+ID4gKysrIGIvZHJpdmVycy9kbWEtYnVmL3Vk
bWFidWYuYw0KPiA+IEBAIC0xNjIsNyArMTYyLDcgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAq
Z2V0X3NnX3RhYmxlKHN0cnVjdA0KPiBkZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmJ1ZiwN
Cj4gPiAgICAgICAgICAgICAgICAgc2dfc2V0X2ZvbGlvKHNnbCwgdWJ1Zi0+Zm9saW9zW2ldLCBQ
QUdFX1NJWkUsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1YnVmLT5vZmZzZXRz
W2ldKTsNCj4gPg0KPiA+IC0gICAgICAgcmV0ID0gZG1hX21hcF9zZ3RhYmxlKGRldiwgc2csIGRp
cmVjdGlvbiwgMCk7DQo+ID4gKyAgICAgICByZXQgPSBkbWFfbWFwX3NndGFibGUoZGV2LCBzZywg
ZGlyZWN0aW9uLA0KPiBETUFfQVRUUl9TS0lQX0NQVV9TWU5DKTsNCj4gPiAgICAgICAgIGlmIChy
ZXQgPCAwKQ0KPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9tYXA7DQo+ID4gICAgICAgICBy
ZXR1cm4gc2c7DQo+ID4gQEAgLTE3Nyw3ICsxNzcsNyBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxl
ICpnZXRfc2dfdGFibGUoc3RydWN0DQo+IGRldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqYnVm
LA0KPiA+ICBzdGF0aWMgdm9pZCBwdXRfc2dfdGFibGUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3Qgc2dfdGFibGUgKnNnLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGRtYV9k
YXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pDQo+ID4gIHsNCj4gPiAtICAgICAgIGRtYV91bm1hcF9z
Z3RhYmxlKGRldiwgc2csIGRpcmVjdGlvbiwgMCk7DQo+ID4gKyAgICAgICBkbWFfdW5tYXBfc2d0
YWJsZShkZXYsIHNnLCBkaXJlY3Rpb24sDQo+IERNQV9BVFRSX1NLSVBfQ1BVX1NZTkMpOw0KPiA+
ICAgICAgICAgc2dfZnJlZV90YWJsZShzZyk7DQo+ID4gICAgICAgICBrZnJlZShzZyk7DQo+ID4g
IH0NCj4gPiAtLQ0KPiA+IDIuNTMuMA0KPiA+DQo+IA0KPiBHZW50bGUgcGluZyBvbiB0aGlzIHBh
dGNoLg0KPiANCj4gVG8gc3VtbWFyaXplIHRoZSByZXZpZXcgc28gZmFyOg0KPiAgIFZpdmVrOiAi
TG9va3MgT0sgdG8gbWUiDQo+ICAgQ2hyaXN0aWFuOiBBY2tlZC1ieQ0KPiANCj4gTm90ZTogd2hp
bGUgbXkgc2VwYXJhdGUgZG1hLWRlYnVnIHBhdGNoIFsxXSB3b3VsZCBhbHNvIHN1cHByZXNzDQo+
IHRoaXMgc3BlY2lmaWMgd2FybmluZyBvbiB4ODYsIHRoZSB1ZG1hYnVmIGZpeCBoZXJlIGlzIHN0
aWxsDQo+IHZhbHVhYmxlIGFzIGl0IHJlbW92ZXMgdGhlIHJlZHVuZGFudCBDUFUgc3luYyBhdCBt
YXAvdW5tYXAgdGltZQ0KPiBhbmQgYWxpZ25zIHVkbWFidWYgd2l0aCBvdGhlciBkbWEtYnVmIGV4
cG9ydGVycyB0aGF0IGFscmVhZHkNCj4gcGFzcyBETUFfQVRUUl9TS0lQX0NQVV9TWU5DLg0KPiAN
Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDMyNzEyNDE1Ni4yNDgyMC0x
LQ0KPiBtaWtoYWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tLw0KPiANCj4gR2VyZCwgY291bGQgeW91
IHRha2UgYSBsb29rIHdoZW4geW91IGhhdmUgYSBjaGFuY2U/DQpJIGFtIGNvbnZpbmNlZCB0aGF0
IHRoaXMgcGF0Y2ggaXMgdXNlZnVsIGluIHNvbWUgY2FzZXMsIHNvIEknbGwgYWRkIENocmlzdGlh
bidzDQpBY2sgYW5kIHB1c2ggaXQgKGludG8gZHJtLW1pc2MtbmV4dCkgaW4gYSBkYXkgb3IgdHdv
Lg0KDQpUaGFua3MsDQpWaXZlaw0KDQo+IA0KPiAtLQ0KPiBCZXN0IFJlZ2FyZHMsDQo+IE1pa2Ug
R2F2cmlsb3YuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
