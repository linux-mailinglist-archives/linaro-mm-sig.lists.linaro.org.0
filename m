Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNsZIsD24GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:32 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9A640FC2A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 180E6404E4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:48:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
	by lists.linaro.org (Postfix) with ESMTPS id 48B8B3F78C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Oct 2025 21:43:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=g2bx+PIx;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}");
	spf=pass (lists.linaro.org: domain of matthew.brost@intel.com designates 198.175.65.14 as permitted sender) smtp.mailfrom=matthew.brost@intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761082988; x=1792618988;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=NCTkvWXak8meNG9i60N4Mml1QhdqX+ijWVJvLdilUZs=;
  b=g2bx+PIxD95FqNTJP1iFis39Mg4GDf4YIYqCyysQefFtBDHVGWF01WyP
   RtPEWDniP4xfihwHkbF0Q4JATx4cCk+Nep4zuk3BHBo0jFs96GZDWpOJv
   Sue9Jv7c0JrenylBffMTGST6FwcDH0HnM/GS4znA+wUe8Q/rR8xDIgm6G
   wCr35faHo5gAPaIFWzk8tGj3afhD88SNmmykvea+rQ6RIADwcd9QLOmaa
   hhUOBOWhxGUwOFA31vKyX/XUuS5gvB13QrVJt8ut5VFG5V+p7BTjRLssz
   m8knOw2l/RI1yAitrz2HcH5bP7um01sGm+vQ/VGfocfgbt7UW0cMlBxWC
   g==;
X-CSE-ConnectionGUID: LUevGsn0TXeUC9zM/rYnYQ==
X-CSE-MsgGUID: tx225uiUTuaFTxDcZ43CFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67057468"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400";
   d="scan'208";a="67057468"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2025 14:43:07 -0700
X-CSE-ConnectionGUID: adCaib4USzONpJeI3EMOpw==
X-CSE-MsgGUID: Qc9OFsakSKaztze0NZZ6sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000";
   d="scan'208";a="188103211"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Oct 2025 14:43:07 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 14:43:06 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 14:43:06 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 14:43:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gHoWxjxjFT0laqA6e0zo08k38iFSwh/2aLjEWm+75Bkx4/7B+YO64yQl6Nc+kq8cvQf3sfrmM/3OsI18cVBUFImyJ2IuvWrZOj1GIwbSmY1rrbpcYD3SiN7yxBjEhlip42SRuydJlR78WzSqXjjZv55rmzfmFUmOcJaJ2s2cgGg4ULDft9Tj3KJOneDNzz8o2iCNQ5UnpeY1jhGZ2xyWDsjHgc5jVFWaFaewYDMC+lM3+NY+HbLjB/Z64G89TqiF30XJPaSRDLAF5cv9VGUWWyKD/82yGRC70O3TFTcNTBVioSnBHiZYAzpGBm/rEl9ac2Wl7/KYBp3R+xqwG28gzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dpWmtFyGAetesvVJjWJhNs/ocoUWOQjhsrjEuUJgaH4=;
 b=e6Imcy4GsW2R8ZXX4AeZdzMojoopA3sS2LW81XSY1FzwsAMtDExOjEtukBSt1NkSA28Q31AFaE3s9jd6LphLEzQXD9RnR8wFjyeWoniud6zDdUTNJWVP1fIxWIJEKvpaRlNWTcL+cI4vk1bTR8CuZO9k05JFDe+7OcaZn2P0Wgd3GuRm5xmJon4sVWcFZi58TaOtFbTsxkfiQqfigdoGeTJ1VPA6foh70IasXh2gpZIm6KtPFqN6CY5l/VNTNkRwCIQt1GGkRGJOYuU82IH254bcYlbzpxhnj4H/KC6GblblG2WOKAf0HUps5YmjBPhOEXP53r6G6OivddDGRTRDlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DS4PPF451ADEEF0.namprd11.prod.outlook.com (2603:10b6:f:fc02::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Tue, 21 Oct
 2025 21:43:04 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%3]) with mapi id 15.20.9228.015; Tue, 21 Oct 2025
 21:43:04 +0000
Date: Tue, 21 Oct 2025 14:43:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Rob Herring <robh@kernel.org>
Message-ID: <aPf+ZLJ2KIsz+lZx@lstrano-desk.jf.intel.com>
References: <20251016-ethos-v5-0-ba0aece0a006@kernel.org>
 <20251016-ethos-v5-2-ba0aece0a006@kernel.org>
 <aPHhXl6qdU1mMCNt@lstrano-desk.jf.intel.com>
 <20251017153746.GA1579747-robh@kernel.org>
 <aPM3J2jZcct7ODIp@lstrano-desk.jf.intel.com>
 <aPNE5po45Umson5V@lstrano-desk.jf.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aPNE5po45Umson5V@lstrano-desk.jf.intel.com>
X-ClientProxiedBy: MW4PR04CA0308.namprd04.prod.outlook.com
 (2603:10b6:303:82::13) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DS4PPF451ADEEF0:EE_
X-MS-Office365-Filtering-Correlation-Id: f3d90c70-931b-4d11-2ae6-08de10ead085
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmtMR2ZHSUluL3dUTDBNTWUvU1lrVmJIOTZRSzYyWWpaTStyb1dlSUoxT05v?=
 =?utf-8?B?OVdjYmwrZndJQVB5K0JvcFc2c1dWMzE3bWs1MU5kMGpQYWlkeDlmNGg0YS9y?=
 =?utf-8?B?WnlKdW54b0ZYWHRsaUpjSGF4OGFSQ0JyWnBqcWFSVXBOMzBzbUM0amJtVHJ1?=
 =?utf-8?B?M1ROTUpmemIwUUsxUlhsT1hKYUE5dzNJZmlxb1IxYlRGQlRTaWZ3R01GUnNl?=
 =?utf-8?B?czhudkxHbDA0Ynk3Y3R2R0JDK0JkNzVVUWxCY3Z3ajZMbnV2amxsQ2U2STgy?=
 =?utf-8?B?Q1ZBNGYzODBiNElYdHo1UnNoTzFYWUw3bkxxSFhXNTl4aDN3b3pEeGZKRkZD?=
 =?utf-8?B?RUk2VjRxeXJFM1dXYUdlRWp5SWRSSzlIOEkzd21FejJKSyswcjYyc0xUd2Vr?=
 =?utf-8?B?ekZ0UkdyVHRLSjJQbU5OWVhiODlIY2MrTzQ0UFhvWTIxQ0o1alV6RGZrTHhG?=
 =?utf-8?B?VFJHNU5SeEthWG0zdmpEd0NyMUpYK1dMODRERk5Yc2FTUW9rVlo0M1NmNXFX?=
 =?utf-8?B?WTZ3WEdlVmdBZWNmYzZZc1YzYkZwd0wrVGJKL2J5dHMxZml0eUc0UnpXOCts?=
 =?utf-8?B?UTBDVTgxMlNTU0x6MnYzZE9mNXYvRmNjMlQwSkZwcjNDb2hQOUdVOTNVZDZi?=
 =?utf-8?B?Z2lMdHBVdE9iQmkyazJRNTc5bXRRMTJZOGRHM3NucjhKYlJ6enVXTFU5Kzkz?=
 =?utf-8?B?YXRMbFJKbGRmRWE4V1hrUExvRFZvVUdCNEhFRitEYmpaek55RGNsZEtaV0d2?=
 =?utf-8?B?MHJ0N01WRWxkK3cra0VQdE51N2VWNWRQR040eWRYaE5YSVhQSHpuQVQ1SEFq?=
 =?utf-8?B?V0V5OHpuWktIblVvSDhaSVk0Qmk5M1dxV0RIeUtIRnFRL1RGQ21iY0QxV3RL?=
 =?utf-8?B?b25xMURobURrelBKZWMyMUV0Z0tRejBLay9Jb0tSRFRkS3BZb3puc1FqZXN2?=
 =?utf-8?B?ZzJxN0ZXc1crVkVFL2RwR0ZrREs4Vm9tWlJMY0xhWHRuSDBMWlRqcHVhK1hL?=
 =?utf-8?B?S2JMd2ZOa1ZxSXZEQXkrT0RHZGpBOWpZSnZBajBCanNWN0E0Z2J3S0h1RDR3?=
 =?utf-8?B?NVNqWDFHYW9uNDFnb2pPTnFISlE5aUJSUGN4TlgxRk95MjlKZmNSSjBURHNJ?=
 =?utf-8?B?YUVydm9KNU5GWk82SlVGM3FFZWNzWEI4SkdRTlhjTlhMbmR0eEl3TG43d3Z3?=
 =?utf-8?B?ZnBMQWs2L2ZDaUd0NjdwRnIvSGhxTVlJTnpYeWFPSDZRQUJNaWJaTVBqRU1C?=
 =?utf-8?B?QUpYdGVPTVlKME1JTjRRRFhpUjF3Z1RUOElqNnVuM3Q4YTZkSUdqQ3diR096?=
 =?utf-8?B?MjBPbnFoZk9PbDlob2t2c2ZueUN4MEVNdk5zMUl6NnJUSXhYRzZjbmlTR2pz?=
 =?utf-8?B?bi9ZbjkwdDFxWmJpY0Y2QW5IeitYcVhTQTRHOEUzWTZGcnJiTzJWOHNxV1lZ?=
 =?utf-8?B?OVpIL3NWbEphd3Z6OVllT0REOFdzWFp0NFZpMUxsaTVMbG94MGJZM3hDSmZ6?=
 =?utf-8?B?YktTOVk2V1pBTE5Pd2trTTN3Y01lYXlhR1o0NGJsTGdqMUh5c0JKbU5Jd0Q3?=
 =?utf-8?B?Nyt6MjVtcWZ0UzBoTHh2VTVVVmJBSjkwMkFaeFc5aVdBcmRLNUYwWXkxQWxU?=
 =?utf-8?B?cm5tcmZ4Y2V1RWpkckJra2lRajB4Uk9zUXdSVE1sVTdVaU1MMzNnTXpmWHg5?=
 =?utf-8?B?bUV0a3hMc29YVXVyZ2xNZTV1akR2WjVaODdKZGE0QUNVNmcybkVoUDZsTVYx?=
 =?utf-8?B?VHBYRVFRTW9SUTFsc25Oa3pKbm1CKzZJWDJUdmpRWEdrUGVJRisvbTlsTlFo?=
 =?utf-8?B?R3R5YlUzMVUvc2VVNG9kenFvbkNZNUk4ZmtCbzliSUlQamE4b1B6bDAxRG9j?=
 =?utf-8?B?by8yREI2aHBMa1piUEZSWWZKSlZudXJoZ05wamR1a3d0T3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB6522.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjlmZFhtVDlYQ0lPVDZHc29uTmYzZTlOZ1dpSUZZV3ZlZHB1eTRYYUNJa0R3?=
 =?utf-8?B?VG80eWVrZFA4cUJqZEdjSy80NTNORTB1b2RoL3hKMkt4MjRJa1R0TDZHdFU3?=
 =?utf-8?B?eS9Pb283YW12OEFIVXE2bVFMaWJEQkx6bFVvWitTWE1DS1ZkNzhSS1dXTUxI?=
 =?utf-8?B?SS9YSFV6aWR1dDhFMHkrY2hldnNOUGtyQjB6ZjRoOVI1NDBycnRPK1NFelFP?=
 =?utf-8?B?b0xocXNsaXBBRzdnamhKdXNWSzhOSzVUWlFzKzJvNTZBQUdmZXRNditqQ3ZP?=
 =?utf-8?B?VHRPSkJxZTlNekZDdGhRejRYM2prWnJBaE9WQ3E5UzNNcFV0dDhXODkwcWF1?=
 =?utf-8?B?WCtKMVJjMFVpaDhVNnBQYnh3Q2IxUlgzY3JPTjlNS0lHeUU5cDhVTXhSU0ZY?=
 =?utf-8?B?K3lTTDNvOTBYYTluSGlIS1dFYnB6d1M5eThkZVpRUGM2UFFhaG15OTQvSm0r?=
 =?utf-8?B?aHl2Q2FmNmIxUFlyNERBK2x6emFyWmVVTHl1U3lqVzNWV1FaWUpYTC9uTVI3?=
 =?utf-8?B?QXBJeEZ3YngwTG5lTitlUVJRRjhFb0RzTjJ0NEtWYUhhSUlsbkQ4QWlqV2tP?=
 =?utf-8?B?ZXNaclN1TmJkRHRWSkRTeE5pa3diWnBwYmFWSjBEeGlRUGV4eDIwSkludmRY?=
 =?utf-8?B?dmdtd0FLTDA0dkdRRXRGMFo3N0JLTmN2TVIyUE9wSEM0MlBhblZpc0pKT0FE?=
 =?utf-8?B?c1hKR291WERGSDkwUER4Wmo3bUJOWnRZY0doVmRYczFuZFVpbjQwZmU0UHh2?=
 =?utf-8?B?WXUyeTRtN2o2Z2NwTS9HNGo0U0lWNWR1VHV0UUpXT3JYN2J0QjRYa1ozRVRM?=
 =?utf-8?B?WDFVb2dGUGVrTVQydTZXdTNmeEpYMWNHTmVVSlZRLzJVMjBFd25IcndMaHQ0?=
 =?utf-8?B?L3BWaHdaYVQzVFEyZ0xKckRrY0htWS9mNmZvNFFvWUlLOXZjandVQ2hZOU9F?=
 =?utf-8?B?SUs3NHlFS3RKUWlVdG5pRk5RMVdCbHFXVkkzYkt5WjdZbmJUUGdZOTdhVjlk?=
 =?utf-8?B?ZGtqdE9BTHladmw3bU1pcGxhaWF5ZXFYMWJPRWR6VHFYZU1yaFN4Q3pyNWJ5?=
 =?utf-8?B?MzcvVXREYWsyeHNZUnZNR0ZhYlFUUWd1MkZrb3hIK096R09jWEg0b3FaRVdY?=
 =?utf-8?B?VE8rKzhzdnpJOXJESGxZdU9aRWE5c1I5SVA3L1VxbVVuVHQ5cTR3N0lrWVJT?=
 =?utf-8?B?Yk0yUm5JV203SjRML0x6WllsbmprZmtodGVLZ2prZFRldVBwVDVlSklMUjVG?=
 =?utf-8?B?cEtyYzVOZmdOZzJ2eE1CcmhrWUEzZG9MeGY5N04zRHZEWS9TWGU1YkR4cmNE?=
 =?utf-8?B?K1pMVUF5Ung1bkZadmc5Sk1WeHM1bEFPSndVcFdQaEYvSk8rUG1ndTBwS2Uz?=
 =?utf-8?B?RHZvaFR3aE02MTV3dGkyOUR4VmRONjhPTVRBbDh5U3lJT29SSzAwV2h2NmJZ?=
 =?utf-8?B?YlZsL2tObitjaTRrN2htdFVCVmJsd1FlN0RVWlpKVFZCelUzVWV5WHFqR1BX?=
 =?utf-8?B?ZTZmTnJCdFZLVW9MMW03eGJDUlpoTlNsWjlvQnR6cEdqNnlIOFZicWQveWcy?=
 =?utf-8?B?My80M3JNUHN3ZGxTYVVvd21Fd3pqRzNONkhxSHozR2hOL3JJUi94cWl2MjN4?=
 =?utf-8?B?bHFXTlRTS0dObDFpREYrbHMzaXRVQVBMamJoOUlZOUkxVlExY0FWcWxmc3ov?=
 =?utf-8?B?elZkVGQ0RXBEOG5oTnFOcUVFUjltTmlZMDdBdlpZZ2Z6VCs3ZDVnVWJTYmVx?=
 =?utf-8?B?aTliNmVreWZhRVIzMmh0aWxYUHpDL2c0eFhiQWp1R2lXb0gyRG44MGFSU0NY?=
 =?utf-8?B?aUgyR2NPeW5NVk1kS3R5UVMwbGNITkZNN1lTYXloZjd1dUt6QXpOcks1bjhE?=
 =?utf-8?B?bGRhajh6UkpnSjNHYU8wVnJOTkh3Z3owaUEwbDBwRi9hamNGUkFZOFZJWmhv?=
 =?utf-8?B?Q1lWWXBMRHpVR1k2bUtGbzMveDMyMVNYNGI4SEM4RnFDL2FlSXJxTWZZNk9w?=
 =?utf-8?B?UU5hWnVOT3FmdHMweHRCd3pxYTl5TlRpdlN5U20wbXF5TCtqWVg5WGJsL0Ew?=
 =?utf-8?B?SWNXVWF3ZmU0Q2M4WW5yQ1FTL0J6Sm1ZcmhaSEpQQkt4V3VPV1pKVStHNWtX?=
 =?utf-8?B?TDh2L09GRFJJNmxra2UyQ3FXNHhYL2VsZEludjFpVzRISHFsWlJMS1haNU5a?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d90c70-931b-4d11-2ae6-08de10ead085
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2025 21:43:04.1827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nK3GSf/qSlJo0OUhqJ7jcEYJuIgW8tecCNdununpdaYCBNshxuK5f5VvDh6JWX5V1i/ixDlpgGZcw/vVbcSP9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF451ADEEF0
X-OriginatorOrg: intel.com
X-Spamd-Bar: ----
X-MailFrom: matthew.brost@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JEUFIJPUNQ6PZVDNY2ATTYA2DT7MEKOA
X-Message-ID-Hash: JEUFIJPUNQ6PZVDNY2ATTYA2DT7MEKOA
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:14 +0000
CC: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Steven Price <steven.price@arm.com>, Daniel Stone <daniel@fooishbar.org>, Frank Li <Frank.li@nxp.com>, Sui Jingfeng <sui.jingfeng@linux.dev>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] accel: Add Arm Ethos-U NPU driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JEUFIJPUNQ6PZVDNY2ATTYA2DT7MEKOA/>
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
	DATE_IN_PAST(1.00)[4241];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lstrano-desk.jf.intel.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.650];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[tomeuvizoso.net,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,arm.com,fooishbar.org,nxp.com,linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0C9A640FC2A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCBPY3QgMTgsIDIwMjUgYXQgMTI6NDI6MzBBTSAtMDcwMCwgTWF0dGhldyBCcm9zdCB3
cm90ZToNCj4gT24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMTE6NDM6NTFQTSAtMDcwMCwgTWF0dGhl
dyBCcm9zdCB3cm90ZToNCj4gPiBPbiBGcmksIE9jdCAxNywgMjAyNSBhdCAxMDozNzo0NkFNIC0w
NTAwLCBSb2IgSGVycmluZyB3cm90ZToNCj4gPiA+IE9uIFRodSwgT2N0IDE2LCAyMDI1IGF0IDEx
OjI1OjM0UE0gLTA3MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+ID4gPiA+IE9uIFRodSwgT2N0
IDE2LCAyMDI1IGF0IDA0OjA2OjA1UE0gLTA1MDAsIFJvYiBIZXJyaW5nIChBcm0pIHdyb3RlOg0K
PiA+ID4gPiA+IEFkZCBhIGRyaXZlciBmb3IgQXJtIEV0aG9zLVU2NS9VODUgTlBVcy4gVGhlIEV0
aG9zLVUgTlBVIGhhcyBhDQo+ID4gPiA+ID4gcmVsYXRpdmVseSBzaW1wbGUgaW50ZXJmYWNlIHdp
dGggc2luZ2xlIGNvbW1hbmQgc3RyZWFtIHRvIGRlc2NyaWJlDQo+ID4gPiA+ID4gYnVmZmVycywg
b3BlcmF0aW9uIHNldHRpbmdzLCBhbmQgbmV0d29yayBvcGVyYXRpb25zLiBJdCBzdXBwb3J0cyB1
cCB0byA4DQo+ID4gPiA+ID4gbWVtb3J5IHJlZ2lvbnMgKHRob3VnaCBubyBoL3cgYm91bmRzIG9u
IGEgcmVnaW9uKS4gVGhlIEV0aG9zIE5QVXMNCj4gPiA+ID4gPiBhcmUgZGVzaWduZWQgdG8gdXNl
IGFuIFNSQU0gZm9yIHNjcmF0Y2ggbWVtb3J5LiBSZWdpb24gMiBpcyByZXNlcnZlZA0KPiA+ID4g
PiA+IGZvciBTUkFNIChsaWtlIHRoZSBkb3duc3RyZWFtIGRyaXZlciBzdGFjayBhbmQgY29tcGls
ZXIpLiBVc2Vyc3BhY2UNCj4gPiA+ID4gPiBkb2Vzbid0IG5lZWQgYWNjZXNzIHRvIHRoZSBTUkFN
Lg0KPiA+ID4gDQo+ID4gPiBUaGFua3MgZm9yIHRoZSByZXZpZXcuDQo+ID4gPiANCj4gPiA+IFsu
Li5dDQo+ID4gPiANCj4gPiA+ID4gPiArc3RhdGljIHN0cnVjdCBkbWFfZmVuY2UgKmV0aG9zdV9q
b2JfcnVuKHN0cnVjdCBkcm1fc2NoZWRfam9iICpzY2hlZF9qb2IpDQo+ID4gPiA+ID4gK3sNCj4g
PiA+ID4gPiArCXN0cnVjdCBldGhvc3Vfam9iICpqb2IgPSB0b19ldGhvc3Vfam9iKHNjaGVkX2pv
Yik7DQo+ID4gPiA+ID4gKwlzdHJ1Y3QgZXRob3N1X2RldmljZSAqZGV2ID0gam9iLT5kZXY7DQo+
ID4gPiA+ID4gKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IE5VTEw7DQo+ID4gPiA+ID4gKwlp
bnQgcmV0Ow0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArCWlmICh1bmxpa2VseShqb2ItPmJhc2Uu
c19mZW5jZS0+ZmluaXNoZWQuZXJyb3IpKQ0KPiA+ID4gPiA+ICsJCXJldHVybiBOVUxMOw0KPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiArCWZlbmNlID0gZXRob3N1X2ZlbmNlX2NyZWF0ZShkZXYpOw0K
PiA+ID4gPiANCj4gPiA+ID4gQW5vdGhlciByZWNsYWltIGlzc3VlOiBldGhvc3VfZmVuY2VfY3Jl
YXRlIGFsbG9jYXRlcyBtZW1vcnkgdXNpbmcNCj4gPiA+ID4gR0ZQX0tFUk5FTC4gU2luY2Ugd2Un
cmUgYWxyZWFkeSBpbiB0aGUgRE1BIGZlbmNlIHNpZ25hbGluZyBwYXRoDQo+ID4gPiA+IChyZWNs
YWltKSwgdGhpcyBjYW4gbGVhZCB0byBhIGRlYWRsb2NrLg0KPiA+ID4gPiANCj4gPiA+ID4gV2l0
aG91dCB0b28gbXVjaCB0aG91Z2h0LCB5b3UgbGlrZWx5IHdhbnQgdG8gbW92ZSB0aGlzIGFsbG9j
YXRpb24gdG8NCj4gPiA+ID4gZXRob3N1X2pvYl9kb19wdXNoLCBidXQgYmVmb3JlIHRha2luZyBk
ZXYtPnNjaGVkX2xvY2sgb3IgY2FsbGluZw0KPiA+ID4gPiBkcm1fc2NoZWRfam9iX2FybS4NCj4g
PiA+ID4gDQo+ID4gPiA+IFdlIHJlYWxseSBzaG91bGQgZml4IHRoZSBEUk0gc2NoZWR1bGVyIHdv
cmsgcXVldWUgdG8gYmUgdGFpbnRlZCB3aXRoDQo+ID4gPiA+IHJlY2xhaW0uIElmIEkgcmVjYWxs
IGNvcnJlY3RseSwgd2UnZCBuZWVkIHRvIHVwZGF0ZSB0aGUgd29yayBxdWV1ZQ0KPiA+ID4gPiBs
YXllci4gTGV0IG1lIGxvb2sgaW50byB0aGF04oCUSSd2ZSBzZWVuIHRoaXMgdHlwZSBvZiBidWcg
c2V2ZXJhbCB0aW1lcywNCj4gPiA+ID4gYW5kIGxvY2tkZXAgc2hvdWxkIGJlIGFibGUgdG8gY2F0
Y2ggaXQuDQo+ID4gPiANCj4gPiA+IExpa2VseSB0aGUgcm9ja2V0IGRyaXZlciBzdWZmZXJzIGZy
b20gdGhlIHNhbWUgaXNzdWVzLi4uDQo+ID4gPiANCj4gPiANCj4gPiBJIGFtIG5vdCBzdXJwcmlz
ZWQgYnkgdGhpcyBzdGF0ZW1lbnQuDQo+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiA+ICsJaWYgKElT
X0VSUihmZW5jZSkpDQo+ID4gPiA+ID4gKwkJcmV0dXJuIGZlbmNlOw0KPiA+ID4gPiA+ICsNCj4g
PiA+ID4gPiArCWlmIChqb2ItPmRvbmVfZmVuY2UpDQo+ID4gPiA+ID4gKwkJZG1hX2ZlbmNlX3B1
dChqb2ItPmRvbmVfZmVuY2UpOw0KPiA+ID4gPiA+ICsJam9iLT5kb25lX2ZlbmNlID0gZG1hX2Zl
bmNlX2dldChmZW5jZSk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICsJcmV0ID0gcG1fcnVudGlt
ZV9nZXRfc3luYyhkZXYtPmJhc2UuZGV2KTsNCj4gPiA+ID4gDQo+ID4gPiA+IEkgaGF2ZW4ndCBs
b29rZWQgYXQgeW91ciBQTSBkZXNpZ24sIGJ1dCB0aGlzIGdlbmVyYWxseSBsb29rcyBxdWl0ZQ0K
PiA+ID4gPiBkYW5nZXJvdXMgd2l0aCByZXNwZWN0IHRvIHJlY2xhaW0uIEZvciBleGFtcGxlLCBp
ZiB5b3VyIFBNIHJlc3VtZSBwYXRocw0KPiA+ID4gPiBhbGxvY2F0ZSBtZW1vcnkgb3IgdGFrZSBs
b2NrcyB0aGF0IGFsbG9jYXRlIG1lbW9yeSB1bmRlcm5lYXRoLCB5b3UncmUNCj4gPiA+ID4gbGlr
ZWx5IHRvIHJ1biBpbnRvIGlzc3Vlcy4NCj4gPiA+ID4gDQo+ID4gPiA+IEEgYmV0dGVyIGFwcHJv
YWNoIHdvdWxkIGJlIHRvIGF0dGFjaCBhIFBNIHJlZmVyZW5jZSB0byB5b3VyIGpvYiB1cG9uDQo+
ID4gPiA+IGNyZWF0aW9uIGFuZCByZWxlYXNlIGl0IHVwb24gam9iIGRlc3RydWN0aW9uLiBUaGF0
IHdvdWxkIGJlIHNhZmVyIGFuZA0KPiA+ID4gPiBzYXZlIHlvdSBoZWFkYWNoZXMgaW4gdGhlIGxv
bmcgcnVuLg0KPiA+ID4gDQo+ID4gPiBPdXIgUE0gaXMgbm90aGluZyBtb3JlIHRoYW4gY2xvY2sg
ZW5hYmxlL2Rpc2FibGUgYW5kIHJlZ2lzdGVyIGluaXQuIA0KPiA+ID4gDQo+ID4gPiBJZiB0aGUg
cnVudGltZSBQTSBBUEkgZG9lc24ndCB3b3JrIGFuZCBuZWVkcyBzcGVjaWFsIGRyaXZlciB3cmFw
cGVycywgDQo+ID4gPiB0aGVuIEknbSBpbmNsaW5lZCB0byBqdXN0IG5vdCB1c2UgaXQgYW5kIG1h
bmFnZSBjbG9ja3MgZGlyZWN0bHkgKGFzIA0KPiA+ID4gdGhhdCdzIGFsbCBpdCBpcyBkb2luZyku
DQo+ID4gPiANCj4gPiANCj4gPiBZZXMsIHRoZW4geW914oCZcmUgcHJvYmFibHkgZmluZS4gTW9y
ZSBjb21wbGV4IGRyaXZlcnMgY2FuIGRvIGFsbCBzb3J0cyBvZg0KPiA+IHRoaW5ncyBkdXJpbmcg
YSBQTSB3YWtlLCB3aGljaCBpcyB3aHkgUE0gd2FrZXMgc2hvdWxkIGdlbmVyYWxseSBiZSB0aGUN
Cj4gPiBvdXRlcm1vc3QgbGF5ZXIuIEkgc3RpbGwgc3VnZ2VzdCwgdG8gZnV0dXJlLXByb29mIHlv
dXIgY29kZSwgdGhhdCB5b3UNCj4gPiBtb3ZlIHRoZSBQTSByZWZlcmVuY2UgdG8gYW4gb3V0ZXIg
bGF5ZXIuDQo+ID4gDQo+IA0KPiBBbHNvLCB0YWtpbmcgYSBQTSByZWZlcmVuY2UgaW4gYSBmdW5j
dGlvbiBjYWxsIOKAlCBhcyBvcHBvc2VkIHRvIHR5aW5nIGl0DQo+IHRvIGEgb2JqZWN0J3MgbGlm
ZXRpbWUg4oCUIGlzIHJpc2t5LiBJdCBjYW4gcXVpY2tseSBsZWFkIHRvIGltYmFsYW5jZXMgaW4N
Cj4gUE0gcmVmZXJlbmNlcyBpZiB0aGluZ3MgZ28gc2lkZXdheXMgb3IgZnVuY3Rpb24gY2FsbHMg
YmVjb21lIHVuYmFsYW5jZWQuDQo+IERlcGVuZGluZyBvbiBob3cgeW91ciBkcml2ZXIgdXNlcyB0
aGUgRFJNIHNjaGVkdWxlciwgdGhpcyBzZWVtcyBsaWtlIGENCj4gcmVhbCBwb3NzaWJpbGl0eS4N
Cj4gDQo+IE1hdHQNCj4gDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIGlzIHdoYXQgd2UgZG8gaW4g
WGUgWzFdIFsyXS4NCj4gPiA+ID4gDQo+ID4gPiA+IEFsc28sIGluIGdlbmVyYWwsIHRoaXMgZHJp
dmVyIGhhcyBiZWVuIHJldmlld2VkIChSQuKAmWQpLCBidXQgaXQncyBub3QNCj4gPiA+ID4gZ3Jl
YXQgdGhhdCBJIHNwb3R0ZWQgbnVtZXJvdXMgaXNzdWVzIHdpdGhpbiBqdXN0IGZpdmUgbWludXRl
cy4gSSBzdWdnZXN0DQo+ID4gPiA+IHRha2luZyBhIHN0ZXAgYmFjayBhbmQgdGhvcm91Z2hseSBl
dmFsdWF0aW5nIGV2ZXJ5dGhpbmcgdGhpcyBkcml2ZXIgaXMNCj4gPiA+ID4gZG9pbmcuDQo+ID4g
PiANCj4gPiA+IFdlbGwsIGlmIGl0IGlzIGhhcmQgdG8gZ2V0IHNpbXBsZSBkcml2ZXJzIHJpZ2h0
LCB0aGVuIGl0J3MgYSBwcm9ibGVtIA0KPiA+ID4gd2l0aCB0aGUgc3Vic3lzdGVtIEFQSXMgSU1P
Lg0KPiA+ID4gDQo+ID4gDQo+ID4gWWVzLCBhZ3JlZWQuIFdlIHNob3VsZCBoYXZlIGFzc2VydGlv
bnMgYW5kIGxvY2tkZXAgYW5ub3RhdGlvbnMgaW4gcGxhY2UNCj4gPiB0byBjYXRjaCBkcml2ZXIt
c2lkZSBtaXN1c2VzLiBUaGlzIGlzIHRoZSBzZWNvbmQgZHJpdmVyIEnigJl2ZSByYW5kb21seQ0K
PiA+IGxvb2tlZCBhdCBvdmVyIHRoZSBwYXN0IHllYXIgdGhhdCBoYXMgYnJva2VuIERNQSBmZW5j
aW5nIGFuZCByZWNsYWltDQo+ID4gcnVsZXMuIEnigJlsbCB0YWtlIGFuIGFjdGlvbiBpdGVtIHRv
IGZpeCB0aGlzIGluIHRoZSBEUk0gc2NoZWR1bGVyLCBidXQNCj4gPiBJ4oCZbSBhZnJhaWQgSeKA
mWxsIGxpa2VseSBicmVhayBtdWx0aXBsZSBkcml2ZXJzIGluIHRoZSBwcm9jZXNzIGFzIG1pc3Vl
c3MNCj4gPiAvIGxvY2tkZXAgd2lsbCBjb21wbGFpbi4gDQoNCkkndmUgcG9zdGVkIGEgc2VyaWVz
IFsxXSBmb3IgdGhlIERSTSBzY2hlZHVsZXIgd2hpY2ggd2lsbCBjb21wbGFpbiBhYm91dCB0aGUN
CnRoaW5ncyBJJ3ZlIHBvaW50ZWQgb3V0IGhlcmUuDQoNCk1hdHQgDQoNClsxXSBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1NjI4NC8NCg0KPiA+IA0KPiA+IE1hdHQN
Cj4gPiANCj4gPiA+IFJvYg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
