Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +ErJKvH04GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F4040FAD4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:40:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4B891404EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:40:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
	by lists.linaro.org (Postfix) with ESMTPS id 53FA53F757
	for <linaro-mm-sig@lists.linaro.org>; Mon, 20 Oct 2025 11:18:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=lRvnvoH+;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of matthew.brost@intel.com designates 192.198.163.18 as permitted sender) smtp.mailfrom=matthew.brost@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1760959094; x=1792495094;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=tJlP/1SmtzGuxb3pn0TonGqBh6HeMmqe2bxSm8w60M4=;
  b=lRvnvoH+dIjv4Uv8fLBhA+govPSs8bgr4MH02hTovXhs9s87DFrFNHXf
   EbMupx6xMslrO1lak/sDuncOct823GCORH12Oxe/I5atYdZmpsu/4nkMg
   KAahnQmWMst8KPFLpCmQEjuF4LxudCmEhGuusv+JCe4SGa3SWimsgKvWK
   GTd2HpFl5o5Tzl9vTFuZTARaxt8VHfhG5L0n9gBJRM21cqDMasJ5b5lVW
   qFVF9S2XL5X9C5hpPQ6B8kcxSC3QPZ/z0kXp1r19uvaLQJ+VmErkKyrak
   0WNRj3yqgS2StUy0bwSuwSjwh9CF7GVAnZhJUFtAyVoHRwHsGhXj8IWx6
   Q==;
X-CSE-ConnectionGUID: O8AgmrrBS1qOfbYVmMH2/A==
X-CSE-MsgGUID: K1iSRAvoTL+YSY4CpjroWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62280821"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000";
   d="scan'208";a="62280821"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2025 04:18:12 -0700
X-CSE-ConnectionGUID: m/PNvKcKQYyg9skVd+wqVQ==
X-CSE-MsgGUID: pJqfwN+aTySYvMumsmAIkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000";
   d="scan'208";a="213921487"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2025 04:18:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 04:18:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 04:18:11 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.24)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 04:18:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ae3vpWLi+8wu6y/2zjKVjissynAOqPwE8UyxQVXH00oJBiK4JlStQDZGdpPxqucX6Y88222wBZhDQv1dVQVd2QWwkrUG82hTW3uiSzfjnGalWDHw/L8XTCPpSasH3VwiD2sZmfnQxremjdMEtSsGu0bzvjNDeX4H6wLm+zZY67Dhf0BYE4HPUtk6MgIqtpwhne0R52FhBUJ1cEbiWp0rNzdUMcH09ZuD3dNdwI08Ete5Q2rXM1N1QCSVbnb6v+bgwBPvdqB4G0bmXMV6PEn0ioZV8xf0C97OTU1vNqI+oWUskTNQ1SLjuWblBpAj9fyWaJtubC9VWuL8CzpC+v6PaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DH6R0/yM3PXZ4BTKkOSqTKbAdFE/cs7K8r44mtDzLCc=;
 b=Kt6AZNzjPlD3K4NbPSjKt8RtWZ/x8wzhSBjk4q308wM2Lyr2V0UAvWBtXjvdvzg+VHsaqMaGqYOORjQqk+vY2R0b6sq3ZP/EKDA1b7IT4V+jAqCrJjUt/hJFZ43cwuSDXHyYe4YtRz2jk+laIdTpSVmwZ52GdCVjROAyrj2SrNcU2i+NgOO8HFzKrMUaI9erw5/hKVomuDz3nLxMKmM4UkuAcc2tCm6cDhutCAalVxmaB2YEBVkCbK87J/q/Y7zWrdVb+cxdhD9AUnKQ9YDSIaWevMwDxoNevPJNyPNHGbdoJRDWeGLmp3Zmxa9hyVm3lLAbj452mMU8EG7mhRNQWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 11:18:09 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.9228.014; Mon, 20 Oct 2025
 11:18:09 +0000
Date: Mon, 20 Oct 2025 04:18:06 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <phasta@kernel.org>
Message-ID: <aPYabivOBSJ1UChg@lstrano-desk.jf.intel.com>
References: <20251017093146.169996-2-phasta@kernel.org>
 <aPK04r1E7IbAZ9QY@lstrano-desk.jf.intel.com>
 <7b53f502aa0eaee4ffe4350621ddbcbfaafcad06.camel@mailbox.org>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <7b53f502aa0eaee4ffe4350621ddbcbfaafcad06.camel@mailbox.org>
X-ClientProxiedBy: MW4PR04CA0367.namprd04.prod.outlook.com
 (2603:10b6:303:81::12) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CY5PR11MB6368:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c1eef38-019b-4cf4-c88b-08de0fca5972
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDcxRlFvNUxIRStSL3VhOGRHejNETm13dy9FUVVwT0Q5OWJSV1dZYytNQ09H?=
 =?utf-8?B?UjlpejhGb3Evem8rd09mUFBlcDY0c3VGK0xUeGJHaWhrSzZQYm5mdjFzejdn?=
 =?utf-8?B?bGlOaHpPNCtqK1VxeGQ4bGJWOXdQdmU5ZktZc0M5Z3RvYnp2YnhTeHpDR29X?=
 =?utf-8?B?NVBVcnVkSWIwTG4ydlFYVE02SE1oOUVOcGpUc0FYYk1kYUFib3ZER20yRTlm?=
 =?utf-8?B?MDkveDZVbkRpN3RidVloZXVCYTJTMDhKYzZZYUg0UG9vQ3RQWW40SmZNaEtK?=
 =?utf-8?B?R3VFUXN5YXdreGx2ZGFZKzZlVjl0Ti9KbVRJd3d6VUVBa1M3Z3ZJalpnc1N6?=
 =?utf-8?B?bkF2c1lNV09QQ1IzMzhCcUNaMEJGNVZCaXE1TzNJSzF3K3ZTd3U4L2JmWllE?=
 =?utf-8?B?UVlnQlE2KzN5UzJWM3RRNXd6Vm1qdmhVbjdsZEI0NWxhVDluZmozL2QwNlB5?=
 =?utf-8?B?VzkyRERtdldyaWI3SDFkSjlPUnQ5cTArSVp5aUdVR2ozUlJLYWtFTXFubnMz?=
 =?utf-8?B?cHpmYUZsZ0U4NG5qVG40MDB2djFwQTdnOGpva2k3a2NBa0hzaVRRYllSUU51?=
 =?utf-8?B?QjVHS2J6YzZ2cnJQdmovTDdwbElkK0dzZ0pTNlZVS2p1SStCMGV6alFBMUJx?=
 =?utf-8?B?UUJHSzg4bGxRald5T2Vmd1Y3Yzc2K0ZXRDVZR1FIMkRWVW9JR0RLWXdNRVhK?=
 =?utf-8?B?a0cvWDRGZ1pMOVhnUFdpOEtTWit0YWc1RTRFbTBJY1ZoZTE3UGMxcW05Smd2?=
 =?utf-8?B?V1cydU96SDJyOGZLVlkvOEkxT0tDYnZXTG5Zb0VXR3NmRExkTkp1NU5IeEJP?=
 =?utf-8?B?WU9CQXhaY0NtMnZtR0tVVUtEVUl1WHNTa2w0QXdEalduaW9oYWU2UVFveUpG?=
 =?utf-8?B?bUxaZ2hmU0N4TkViTDZCU0c3Rlo2VklDYlo0V2R4T0l0eE0xY3o2ek1YNWpX?=
 =?utf-8?B?Q1lNRnhNZGRiVDE5d04yZTlVMHFsQ3JVd2hEUzQya0psbDJxZXlNbklxYUd1?=
 =?utf-8?B?cE9UeEZ1ay9FNzRqeW5LczRDTEU2cmdOTTdVbmNSU1owS3pTaW15Z2Jxc0pM?=
 =?utf-8?B?TU8xSlBJYXBERVhITGVCWEhYQkpQOTZXWWdpZEIwSWtYWnRhNldvUVlUUUlp?=
 =?utf-8?B?ZEs0YXBpTlhKbER1TVo0T3dRUkZsME9UN2xzZ0VRdHdWb3RKcCtqV2tPcXM5?=
 =?utf-8?B?UEhTWHM5Nk5DVDlYVWN5cy9JaE85YWpzUUVpbmQwMllObFh6MDFSY3NraXdO?=
 =?utf-8?B?NkRteVJ5NzYxNnMyZ2MzbW1iUWVPMWlUZkQzSkN5NmFsK2JJT2pEUGJ1U3A3?=
 =?utf-8?B?TGRVMDNRL0NuMUpJUUdoRlJxeEtWaW91clZ2akp6R2IvamsvQ2lpVU9mOXVS?=
 =?utf-8?B?eVJCcjlmaFZvT2ZMSUpGVHhacXFlaFBLbWNZZkk4QnpMWlNXbkZBZ05ZcXA5?=
 =?utf-8?B?VHhxNVpINmtTQ1NIeTN3TFJDL1IyZTFueS9YbFV0SFowcVEvc252NWdiZitj?=
 =?utf-8?B?NkI0b2FrWWZENURCMlZWbWpMNTFaVEIyTW9PTmZFVkV0WHZyU05GQWwyRnBK?=
 =?utf-8?B?c3REWjdLWGcwZHo1MGNsRWtpVlBhZkJ5Z0c4dG1VRWVLZ0U1cHFmbitrS1pk?=
 =?utf-8?B?ai9XQS9xUG1yRUtoL0g2WmUrN3pCcjFpU1Nnblg4a08xbGRETXRKcDQrQWFm?=
 =?utf-8?B?SU9VZkhOYW9reW0ySnFua2xvbUlORjllblBndStCclN3VVNPQ1NBTUJUT0lV?=
 =?utf-8?B?cXltdENnZjZxV2FaMVN5T2VLSmMrOTN6TDR0cjBsRFZhSUhCRHZLS1Bsb0t2?=
 =?utf-8?B?RVc4QTFLeHpteUJ0U1RmWXUzeXk3THR3b1FXSm5qUWxLRmVySWFwRkpvMGRy?=
 =?utf-8?B?MVBjRE81T25rSjlJc3VVb0txN2NjS1JtdXUyYTdEL1M4R3Z6aGUrQndudGI5?=
 =?utf-8?Q?NIsXnlfLFRQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6522.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmF1YXlSeWVoYUxHL2hDRktieXRWVzdrRUZCaWFHTS93SW5JVGVQZHF6VXlQ?=
 =?utf-8?B?NWFsZnhvU2NMVkVaMGQ4Z3Fxc0ZTdUtTOERDK25IaXlpOXFVckRsZ3FWMXZI?=
 =?utf-8?B?TVJxbThLSnFCVThtajh4c3JFdjdWY2JxVDc4SlFZNkxPZXNDcEVRZXRQdUNH?=
 =?utf-8?B?L1FjRlBHUVlRS2NGUHh5R3kyZXBGR1dXOExobDYvWHJta1FXMzRKZ0dQM1pW?=
 =?utf-8?B?RVlWVkQrSVMwc0ZUUlgwbkNrMmRud0s4SkpYWFEyRnNVdTl5N0psYzVJRUsr?=
 =?utf-8?B?MGJidG5jQkpVWVhFWDR2K0xFTWRTODJWQXJnbG94ZnRBbkZnKzNoZmRHdEY4?=
 =?utf-8?B?RmlOSDN6cUxaS1FNZWlJbjNFMUtGamsrV2k4cldJa0hjVnpHYUJ5Wk12OUR6?=
 =?utf-8?B?Q2lZYnVOWmJieXMzcVdIZXUvaFhMeTZQMCt5MDEyQ2FGMm9wYmJlZFBkVTNM?=
 =?utf-8?B?bjczTitUZVRBZTFWdG1rNkhuWllrT0lmK1VEdExGdzlsWHlvaXIvdGUzVXhK?=
 =?utf-8?B?WUZIYVpXWnNmTTNWVTI4YVNmalJDb2VKOHFnU3NnTUtQWGJCVWJGa0VtVGlU?=
 =?utf-8?B?OWl2dHk2bUNHSHNSK1pNWDNNcTRxaTVVNVpQMm9CMEFDZ2dJcXI1clZEK25Q?=
 =?utf-8?B?VGdHOE5OcXZsU0llaHBWV3NSUEUvYzVBQUJaV2laZFRwTVVKRVliOXdvcDg0?=
 =?utf-8?B?WUF0WWZrelJTenE0b2hUT2JmcDJaRkU4a1laVUlsRS8ySEFaTGxKR2xQYTZ3?=
 =?utf-8?B?TDVJTG0rVk5pUXNNQVI1SitDd2lFbFIxV09uc0owUWZTTWU1TDVvNTh5R3VU?=
 =?utf-8?B?WlJFdTZRNXVmaHEyM1FERG9TWFEvcVZnOU1wWmZ0SDdZSmhHVXJ5NzdQR3dH?=
 =?utf-8?B?bUpoU1VubzFDOVU0Wm13MkVOY3k5endRK2xUK2Z4M3BrTHM3LzN6b25UdU5j?=
 =?utf-8?B?amxkSVFJNG5RZTJucUNDcGVyem5nRldoQjFIL3hLcjFyOFlJM1lvK25zVlUr?=
 =?utf-8?B?SS8xb2syamQ5aE45UE5CVXE0Q2ZmR0hrZm1GY1pEa1pTSE9FMnUvRmNJcE5Z?=
 =?utf-8?B?MVZQQnFDS3poN3RPdDR0ODRSZjdTNjRHSmI5UzhMZXdrMGdDMXBhMDlyOVoy?=
 =?utf-8?B?VVRoTWJIU3pJNXZIU3ErZDhZWFB6M1U0ZktZZ29TMVN2R3l3aFUxRlVQWWh2?=
 =?utf-8?B?QmhCTGpPeEZNaGJNMlZxQVA0VHZPQW5FUmRNTm5iNStyUGdIeVlJQzM4VFlp?=
 =?utf-8?B?RkNZN2U4ZjVwWkJ5TnRiZk1yYm5ndHk3Y2xyMzZKRjJ3cWFCc3lXS0w1cXRl?=
 =?utf-8?B?OXJBSEd2SXZqZCt2Y1hwRGNNU1BWRHBQeWRZSEZ3ZEp6VWpZd1IrWXBOdEZF?=
 =?utf-8?B?Ync3b1NZaXRWMS9DVUl4MFdEd0RhdTFSejZPRldyWEcwb2pNM000Z3JROHUz?=
 =?utf-8?B?UDRSaW8wRTNjMlc4elJ0dnNrVnQ5dE1Zcnp1MVFGMzBYM2djOHVYa1R0NGk4?=
 =?utf-8?B?dTZaVFc4aDArUjQwNjI2RmorQnJqeFZMUXBJQUxkY3pCWEN4Nkd4TFIwYnR3?=
 =?utf-8?B?QllMRXVwbGlHd3hwUGptbkNaQ0t6azFHdjhlMHZCME95TzVnNGxPa0IxL2Rx?=
 =?utf-8?B?cDZCWW1NSTkreTR3bE9DTGd0T2JpL2xJN0E4dzVoNHU2Y24wMUw0Rmd2UlRh?=
 =?utf-8?B?VTNYVGF2SW54c1h4ZDJqZFlZMDhwaytQT3ZnSkh0OUVTYmtybndNYjRpNTVv?=
 =?utf-8?B?bUVqRmJQREthSGhSOXV3MDRqS3dqVjZ2L2F5bGJCQjFWbXdQRnh3bWhpOFRL?=
 =?utf-8?B?S0ZQbmpkMjEyK1FIdWY1V0wyMm0rY0NLSXVhaEZ1K0lqTUVpd1VoTSt6bDVv?=
 =?utf-8?B?RjU0SGRmbmNKMEdRMkFjM3U0bFZmS0NpNVNUaithSUhXbEt1S3AyeS9DdHRy?=
 =?utf-8?B?d0d2QjJzQ0FyZXpkdHpoNFc4c1kySGgrZFlSUHpPNXJpYmkxY3JGWVRyVlZa?=
 =?utf-8?B?eTliOE56K0Nib2ErdFkzRHlScmhvY0I5WFNRV2M2YVZPN3NVVmdRQkRaOWdz?=
 =?utf-8?B?S1VKMWJZZFFFVVFkQklTZlZ0aC9PUjVCcEhrc0hxVDRqTTUzRE5IVm94L3Rn?=
 =?utf-8?B?R0MzWDMybWJxWmdxZkNQTlFCSWk2VWUyaTBHVmxkeTdPNmVsRXNtbUN4Yncw?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c1eef38-019b-4cf4-c88b-08de0fca5972
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 11:18:09.2841
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VKXAqV+TBQy2MtSDNjQBJSTRa7o6LJ9apafNQXIfk8DZWN8SIsezNKS0MZZk4g6Z0uGw3gKH0dkn8zfFDZAw/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
X-OriginatorOrg: intel.com
X-Spamd-Bar: ------
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HMCY6RQO2FOE5XV2GLMMJ5OWKSM54X5X
X-Message-ID-Hash: HMCY6RQO2FOE5XV2GLMMJ5OWKSM54X5X
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:40:34 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, tursulin@ursulin.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH] dma-fence: Remove 64-bit flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HMCY6RQO2FOE5XV2GLMMJ5OWKSM54X5X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[4275];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lstrano-desk.jf.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 34F4040FAD4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBPY3QgMjAsIDIwMjUgYXQgMTA6MTY6MjNBTSArMDIwMCwgUGhpbGlwcCBTdGFubmVy
IHdyb3RlOg0KPiBPbiBGcmksIDIwMjUtMTAtMTcgYXQgMTQ6MjggLTA3MDAsIE1hdHRoZXcgQnJv
c3Qgd3JvdGU6DQo+ID4gT24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMTE6MzE6NDdBTSArMDIwMCwg
UGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gSXQgc2VlbXMgdGhhdCBETUFfRkVOQ0VfRkxB
R19TRVFOTzY0X0JJVCBoYXMgbm8gcmVhbCBlZmZlY3RzIGFueW1vcmUsDQo+ID4gPiBzaW5jZSBz
ZXFubyBpcyBhIHU2NCBldmVyeXdoZXJlLg0KPiA+ID4gDQo+ID4gPiBSZW1vdmUgdGhlIHVubmVl
ZGVkIGZsYWcuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8
cGhhc3RhQGtlcm5lbC5vcmc+DQo+ID4gPiAtLS0NCj4gPiA+IFNlZW1zIHRvIG1lIHRoYXQgdGhp
cyBmbGFnIGRvZXNuJ3QgcmVhbGx5IGRvIGFueXRoaW5nIGFueW1vcmU/DQo+ID4gPiANCj4gPiA+
IEkgKnN1c3BlY3QqIHRoYXQgaXQgY291bGQgYmUgdGhhdCBzb21lIGRyaXZlcnMgcGFzcyBhIHUz
MiB0bw0KPiA+ID4gZG1hX2ZlbmNlX2luaXQoKT8gSSBndWVzcyB0aGV5IGNvdWxkIGJlIHBvcnRl
ZCwgY291bGRuJ3QgdGhleS4NCj4gPiA+IA0KPiA+IA0KPiA+IFhlIHVzZXMgMzItYml0IGhhcmR3
YXJlIGZlbmNlIHNlcXVlbmNlIG51bWJlcnPigJRzZWUgWzFdIGFuZCBbMl0uIFdlIGNvdWxkDQo+
ID4gc3dpdGNoIHRvIDY0LWJpdCBoYXJkd2FyZSBmZW5jZSBzZXF1ZW5jZSBudW1iZXJzLCBidXQg
dGhhdCB3b3VsZCByZXF1aXJlDQo+ID4gY2hhbmdlcyBvbiB0aGUgZHJpdmVyIHNpZGUuIElmIHlv
dSBzZW50IHRoaXMgdG8gb3VyIENJLCBJ4oCZbSBmYWlybHkNCj4gPiBjZXJ0YWluIHdl4oCZZCBz
ZWUgYSBidW5jaCBvZiBmYWlsdXJlcy4gSSBzdXNwZWN0IHRoaXMgd291bGQgYWxzbyBicmVhaw0K
PiA+IHNldmVyYWwgb3RoZXIgZHJpdmVycy4NCj4gDQo+IFdoYXQgZXhhY3RseSBicmVha3M/IEhl
bHAgbWUgb3V0IGhlcmU7IGlmIHlvdSBwYXNzIGEgdTMyIGZvciBhIHU2NCwNCg0KU2Vxbm8gd3Jh
cHMuDQoNCj4gZG9lc24ndCB0aGUgQyBzdGFuZGFyZCBndWFyYW50ZWUgdGhhdCB0aGUgaGlnaGVy
LCB1bnVzZWQgMzIgYml0cyB3aWxsDQo+IGJlIDA/DQoNCglyZXR1cm4gKGludCkobG93ZXJfMzJf
Yml0cyhmMSkgLSBsb3dlcl8zMl9iaXRzKGYyKSkgPiAwOw0KDQpMb29rIGF0IHRoZSBhYm92ZSBs
b2dpYy4NCg0KZjEgPSAweDA7DQpmMiA9IDB4ZmZmZmZmZmY7IC8qIC0xICovDQoNClRoZSBhYm92
ZSBzdGF0ZW1lbnQgd2lsbCBjb3JyZWN0bHkgcmV0dXJuIHRydWUuDQoNCkNvbXBhcmVkIHRvIHRo
ZSBiZWxvdyBzdGF0ZW1lbnQgd2hpY2ggcmV0dXJucyBmYWxzZS4NCg0KCXJldHVybiBmMSA+IGYy
Ow0KDQpXZSB0ZXN0IHNlcW5vIHdyYXBzIGluIFhlIGJ5IHNldHRpbmcgb3VyIGluaXRpYWwgc2Vx
bm8gdG8gLTEyNywgYWdhaW4gaWYNCnlvdSBzZW5kIHRoaXMgcGF0Y2ggdG8gb3VyIENJIGFueSB0
ZXN0IHdoaWNoIHNlbmRzIG1vcmUgdGhhbiAxMjcgam9iIG9uDQpxdWV1ZSB3aWxsIGxpa2VseSBm
YWlsLg0KDQpNYXR0DQoNCj4gDQo+IEJlY2F1c2UgdGhlIG9ubHkgdGhpbmcgdGhlIGZsYWcgc3Rp
bGwgZG9lcyBpcyBkbyB0aGlzIGxvd2VyXzMyIGNoZWNrIGluDQo+IGZlbmNlX2lzX2xhdGVyLg0K
PiANCj4gUC4NCj4gDQo+ID4gDQo+ID4gQXMgSSBtZW50aW9uZWQsIGFsbCBYZS1zdXBwb3J0ZWQg
cGxhdGZvcm1zIGNvdWxkIGJlIHVwZGF0ZWQgc2luY2UgdGhlaXINCj4gPiByaW5ncyBzdXBwb3J0
IDY0LWJpdCBzdG9yZSBpbnN0cnVjdGlvbnMuIEhvd2V2ZXIsIEkgc3VzcGVjdCB0aGF0IHZlcnkN
Cj4gPiBvbGQgaTkxNSBwbGF0Zm9ybXMgZG9u4oCZdCBzdXBwb3J0IHN1Y2ggaW5zdHJ1Y3Rpb25z
IGluIHRoZSByaW5nLiBJIGFncmVlDQo+ID4gdGhpcyBpcyBhIGxlZ2FjeSBpc3N1ZSwgYW5kIHdl
IHNob3VsZCBwcm9iYWJseSB1c2UgNjQtYml0IHNlcXVlbmNlDQo+ID4gbnVtYmVycyBpbiBYZS4g
QnV0IGFnYWluLCBwbGF0Zm9ybXMgYW5kIGRyaXZlcnMgdGhhdCBhcmUgZGVjYWRlcyBvbGQNCj4g
PiBtaWdodCBicmVhayBhcyBhIHJlc3VsdC4NCj4gPiANCj4gPiBNYXR0DQo+ID4gDQo+ID4gWzFd
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE3LjEvc291cmNlL2RyaXZlcnMv
Z3B1L2RybS94ZS94ZV9od19mZW5jZS5jI0wyNjQNCj4gPiBbMl0gaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjYuMTcuMS9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2h3X2Zl
bmNlX3R5cGVzLmgjTDUxDQo+ID4gDQo+ID4gPiBQLg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8wqAgMyArLS0NCj4gPiA+IMKgaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaMKgwqAgfCAxMCArLS0tLS0tLS0tDQo+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KPiA+ID4gaW5kZXggM2Y3OGM1NmI1OGRjLi4yNDc5NGMwMjc4MTMgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiA+ID4gQEAgLTEwNzgsOCArMTA3OCw3IEBAIHZvaWQNCj4g
PiA+IMKgZG1hX2ZlbmNlX2luaXQ2NChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3Ry
dWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4gPiA+IMKgCQkgc3BpbmxvY2tfdCAqbG9jaywgdTY0
IGNvbnRleHQsIHU2NCBzZXFubykNCj4gPiA+IMKgew0KPiA+ID4gLQlfX2RtYV9mZW5jZV9pbml0
KGZlbmNlLCBvcHMsIGxvY2ssIGNvbnRleHQsIHNlcW5vLA0KPiA+ID4gLQkJCSBCSVQoRE1BX0ZF
TkNFX0ZMQUdfU0VRTk82NF9CSVQpKTsNCj4gPiA+ICsJX19kbWFfZmVuY2VfaW5pdChmZW5jZSwg
b3BzLCBsb2NrLCBjb250ZXh0LCBzZXFubywgMCk7DQo+ID4gPiDCoH0NCj4gPiA+IMKgRVhQT1JU
X1NZTUJPTChkbWFfZmVuY2VfaW5pdDY0KTsNCj4gPiA+IMKgDQo+ID4gPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4g
PiA+IGluZGV4IDY0NjM5ZTEwNDExMC4uNGVjYTJkYjI4NjI1IDEwMDY0NA0KPiA+ID4gLS0tIGEv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaA0KPiA+ID4gQEAgLTk4LDcgKzk4LDYgQEAgc3RydWN0IGRtYV9mZW5jZSB7DQo+ID4g
PiDCoH07DQo+ID4gPiDCoA0KPiA+ID4gwqBlbnVtIGRtYV9mZW5jZV9mbGFnX2JpdHMgew0KPiA+
ID4gLQlETUFfRkVOQ0VfRkxBR19TRVFOTzY0X0JJVCwNCj4gPiA+IMKgCURNQV9GRU5DRV9GTEFH
X1NJR05BTEVEX0JJVCwNCj4gPiA+IMKgCURNQV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQsDQo+
ID4gPiDCoAlETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwNCj4gPiA+IEBAIC00NzAs
MTQgKzQ2OSw3IEBAIGRtYV9mZW5jZV9pc19zaWduYWxlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4gPiA+IMKgICovDQo+ID4gPiDCoHN0YXRpYyBpbmxpbmUgYm9vbCBfX2RtYV9mZW5jZV9p
c19sYXRlcihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgdTY0IGYxLCB1NjQgZjIpDQo+ID4gPiDC
oHsNCj4gPiA+IC0JLyogVGhpcyBpcyBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3aXRoIGRy
aXZlcnMgd2hpY2ggY2FuIG9ubHkgaGFuZGxlDQo+ID4gPiAtCSAqIDMyYml0IHNlcXVlbmNlIG51
bWJlcnMuIFVzZSBhIDY0Yml0IGNvbXBhcmUgd2hlbiB0aGUgZHJpdmVyIHNheXMgdG8NCj4gPiA+
IC0JICogZG8gc28uDQo+ID4gPiAtCSAqLw0KPiA+ID4gLQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfU0VRTk82NF9CSVQsICZmZW5jZS0+ZmxhZ3MpKQ0KPiA+ID4gLQkJcmV0dXJuIGYxID4g
ZjI7DQo+ID4gPiAtDQo+ID4gPiAtCXJldHVybiAoaW50KShsb3dlcl8zMl9iaXRzKGYxKSAtIGxv
d2VyXzMyX2JpdHMoZjIpKSA+IDA7DQo+ID4gPiArCXJldHVybiBmMSA+IGYyOw0KPiA+ID4gwqB9
DQo+ID4gPiDCoA0KPiA+ID4gwqAvKioNCj4gPiA+IC0tIA0KPiA+ID4gMi40OS4wDQo+ID4gPiAN
Cj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
