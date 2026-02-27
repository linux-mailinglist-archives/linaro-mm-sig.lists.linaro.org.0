Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOqtMAQZ4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E40D41275D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:14:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6176545823
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:14:43 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com [67.231.153.30])
	by lists.linaro.org (Postfix) with ESMTPS id E4F903FDB1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 16:20:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=meta.com header.s=s2048-2025-q2 header.b=q0Ka4lwq;
	spf=pass (lists.linaro.org: domain of "prvs=051866f39e=mattev@meta.com" designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=051866f39e=mattev@meta.com";
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=reject) header.from=meta.com
Received: from pps.filterd (m0148460.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61REVPH72148436;
	Fri, 27 Feb 2026 08:20:25 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=meta.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=s2048-2025-q2;
	 bh=OoF17XLnMhcWSKMEXfdgDPrGddCHnsbQibocusT/hic=; b=q0Ka4lwqEyWi
	nks8+9qlrVtnyT+bAs6jIGjC8DjovdwFeFoLOIMM5Mqtkd5iwWLzt1e/l+BKamoD
	8f9assnjRrE/1ZNB+fTDOCNRWKVtGcJM4VQ1rZvCR9FnSc5UcxVqZOwFMCAALhCD
	2sl/tyZYQXNMQwPBBbTxW7XkKJhiBD7+aajfIyDIbRgqi3I8VH72oUYFR7HuReTz
	FunpM2BPxxJ726ECwpNtOHvCZV7tZW2+wuAo3rrRzyjXrb9lHinBla6DWe1Tsn5Y
	x/5miN42gb/yJrN9vYSIzz9brqycEWamQPkGj8BYiygWgfi8OfL1WnrqRkur+bhN
	Dc2CT5Bt4w==
Received: from ph7pr06cu001.outbound.protection.outlook.com (mail-westus3azon11010023.outbound.protection.outlook.com [52.101.201.23])
	by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4ck423wdwc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 27 Feb 2026 08:20:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l6TloS3jtQbn+bSFHQ0YdWL22I4FkbEyrNPQgGL8WQraqIEIiLSkNkJJvnSMBs0PgIJnF1rsrhrrqtiYKsnK+PLluVNv2726muqqZ+UMkEAyctW3aFZHIBVE9gdFBlJyUJDPsIkxpe7MKnrW9/f8PlUsgcP4A7kaRtbMZ8aPdfYQdQI2ECFiYpbKizdj/eg9RUZMWsPujDh1kQ/CiqaH3j6R8Whs8zoK4m6ymj6vQ2kXKEq1AU1zRccMGzIR7Cmts9+sViX3VJ1TN9Npv+U19YOWvg+EVLUBT+pivZmzEKCuX88rApnUuue85+lTyYjA+7myMlp5yxvNiN20ivOyzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OoF17XLnMhcWSKMEXfdgDPrGddCHnsbQibocusT/hic=;
 b=c9ofdWOAMxqwRHc4wjGs2NGo1VQ1hYC8TDCeJUkzuLiFgXTu3JjNYQAVZp3lx9VxyLLcFkSkSvL8YMRD5d5Z29SFyr0rs6XY6kEmWkOHJzjUHoYdCfufhi48SE78RtQc4KBVh/OmMtzSaSBGUK77mZ+EOwBlsyugWD3eEejo28OoWi7xzo//VLHhi8CDWV+19YOVMnGG1wFvl1csm/Ec3iCBNu6HFj1clvM8z9SVTv54COQ8OZJ4v4YAbWvqqjUHLADZkLILLjGdyCrIhgF+m8i5hqhXT6FwR+2q+gwzpjmvaYL/Hfwsc6JSQcxPK+DX2AV3kxPhMefA+IR8U2ddoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=meta.com; dmarc=pass action=none header.from=meta.com;
 dkim=pass header.d=meta.com; arc=none
Received: from PH0PR15MB7038.namprd15.prod.outlook.com (2603:10b6:510:38d::10)
 by BL1PPF118F27D8B.namprd15.prod.outlook.com (2603:10b6:20f:fc04::e07) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 27 Feb
 2026 16:20:22 +0000
Received: from PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19]) by PH0PR15MB7038.namprd15.prod.outlook.com
 ([fe80::617b:b77c:494d:de19%3]) with mapi id 15.20.9654.014; Fri, 27 Feb 2026
 16:20:22 +0000
Message-ID: <b736501b-a2c4-4b1f-a6cc-6e788441f851@meta.com>
Date: Fri, 27 Feb 2026 16:19:55 +0000
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Alex Williamson <alex@shazbot.org>, Leon Romanovsky <leon@kernel.org>,
        Jason Gunthorpe <jgg@nvidia.com>, Alex Mastro <amastro@fb.com>,
        Mahmoud Adam <mngyadam@amazon.de>, David Matlack <dmatlack@google.com>
References: <20260226202211.929005-1-mattev@meta.com>
 <20260226202211.929005-5-mattev@meta.com>
 <f75088c6-5795-49cc-8932-ea46c2223d74@amd.com>
 <ad614dc4-0fd3-4897-b879-5d78a22b534f@meta.com>
 <a006b938-cd53-4c56-8131-30f557919ec6@amd.com>
From: Matt Evans <mattev@meta.com>
In-Reply-To: <a006b938-cd53-4c56-8131-30f557919ec6@amd.com>
X-ClientProxiedBy: AM8P189CA0016.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::21) To PH0PR15MB7038.namprd15.prod.outlook.com
 (2603:10b6:510:38d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR15MB7038:EE_|BL1PPF118F27D8B:EE_
X-MS-Office365-Filtering-Correlation-Id: 86214e43-7a35-4c84-dfbf-08de761c1b4a
X-FB-Source: Internal
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	jqlPYxYgHws+R7Ljpl8aVh1pvq7GmRjlkMIqcf1iX+80F+ouKh8HFqgduTwyybkASKu9FsbwjqtYtkFVGHjeOEME1+OOWa4CLxWX3ve3H8WXfgfcWScflwXL4TqewwzoOJPvEH4kMqw+/id5cqWurGwqcb8gZcrlhzISieU+JhBlyp7JGk1slAJUdMe+SUo/xqwgOclpMCh3LS4v8EYquzErLy2yU33a/8zohkbgwncyaGEX36VsSd7eBx5UMdu+Kjycj1z75PPKhOlg/dDtxV8daLTV+upSzat/krcP6bbCISn3yyNB+T32Wt49Kpj93WJbED483yPLW8UmNUkawQI4SINJSDLN6N8UNhqtWrKhGpEp1yV9hlY7PkDK1WY+0ujU1XOCwowCr9HdIOuTU61rJXMc+BA00iU9yT57vL3AaehCYYtKuNzcJvj95/NGn6GR4vKMhJdwgxMUZ58XBsYoFva71Mwegids4k+PwsfzO4ObijIO5emMEdB9557hyII1DUI3yFPD5g+XcAfODaSzFqXV/x5EMF7faqZLzChz3Cyw/KxL+ISAdVPRYv319s63Hc1Xpw2P4+XVC6bM6dDVLBGdOUFTpxZBoy0TxEZ3VVcp7+6LOBVTnlcaD0cNixhkLnlLeUUrMhplWVjtWZv1nRPYEYVuxClVHNxYbJ/oNvSsja9/1IMLtvqbPajm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB7038.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dy83UVRpekpXckdQUitrU1hhR2RlcWlrVVZYSWtoZGMyMmZRRU51N3FObEpP?=
 =?utf-8?B?MHl6bENva2xoMlVTUmcxZkJxUnJ6eTJDRXIrZnJOaksrOWJIeGl4WnJXZG1v?=
 =?utf-8?B?M3ROUlVjejA3dWNwaXMzRlZBekJKcW1PT0c1REJnUlpNVndjRXZqR244blI0?=
 =?utf-8?B?ZDE5dkZoZU9JQ1V6c2hhK3lOL1p5a2paR1RoOFRua3VMZy94RSszc0VZYjFH?=
 =?utf-8?B?STJnZzR4K0tneE5vaC8vdlA1QVo1WFRtVnJ5UjlaVjk3WUxXN3dFZVVIWTh4?=
 =?utf-8?B?VHB2YlFKZnNxYkNxdW1RRldDMktRV2lHakEzNHh3Q1NkdzZJMmkxeGRMK05x?=
 =?utf-8?B?WU80MU4wTUowcnl1dmhsTjM2Q0NaVm9TcjBFL3NjTkRYSGc0WnhhWXZWNGlH?=
 =?utf-8?B?SkJIZ2JpdkxRNm5CcU91ejY1UkhkWjE1eURpcTBBUmhaNGd1WHNDajRscWE3?=
 =?utf-8?B?NlFRTEZtVWlOVWozRkw4SGFDRFNNM1EvMUlwVjgwZUFROFlCbVMxRFZSRHpv?=
 =?utf-8?B?bjkyWW1aSDVsME5hVlhUWGZmcmxZdWJQVm4rWEtyRkZEMHhJa2YxUC9iOVUz?=
 =?utf-8?B?aVJYcEg3cTMwQUJxdGF1WWpOQzE4Rmk3U2pKcUZrZk8rdnBGUTRLby9wUG9o?=
 =?utf-8?B?U0xJTnNndVdJalNrRFlsTlFHQXVBTkZSMzFISTUvWkgyVkhVc3Q1WFE3d01w?=
 =?utf-8?B?TGxsODF5N3FTR2gwSk5aUytUNTZNTU9ubWJTS1dKWXdNUjVxa08vbzlTeEZQ?=
 =?utf-8?B?czdGT1lIUThxN0FxV2sxQ014N1M2WHMvY0hPNTFaMVkraEdpdXllKzJBSmIv?=
 =?utf-8?B?WjN4dlg2MXFhK1NNb05wdysvZVMvcVFtMVR0U3cybTJjSnNyRkZHMEYrbnRr?=
 =?utf-8?B?d1huZzlEQjVqUjdoNFRScUowTkN3ZGhyTnNrR2FlR1JZSklqM01wZFBXd1Qx?=
 =?utf-8?B?dXVDbUU2OHI4blpodUJTbDNBNVZ1bVU4QXBQM0J3REFMQ3JCbExsNU9rWUdV?=
 =?utf-8?B?clp2NWdpakxBWExiaWdEdGRDbCs4T1FLV2ZmYTZySWl5cEFPVlh2b3ptblJS?=
 =?utf-8?B?VFdhbyt3MGFkbTNCQTFNL05qOWt3OCtuN0x2WEJ6QWY4cCtYU1dXWmNhdkpQ?=
 =?utf-8?B?Q0N2MGZ5VUNaanVrVHpqSTliZ2kvREVodTNoTVROREhhc3dKSWJPeHVTSXZx?=
 =?utf-8?B?U0F1L0l6a3lrZ2FlMktaaUJEZyswdTQvTlFXYit3MEtoem82dFE1U0VrL3dI?=
 =?utf-8?B?RjNkMmowclZWMEZEbEpXMHFJaVV6ZGd5U3JCc2g1R1lUZlAvSEJIbHFFZ2Rm?=
 =?utf-8?B?MVVaSUpNTzdiN0s4R2MvcWNVcGJvcDlLdlpuMCt3Mkw2bGFJWnJrZTZTRDZK?=
 =?utf-8?B?Vm5TeVh1NHZoZjhLZUt4UXBkVmRXT3hDRUhQeUdDelVHUDhtR3l5cW1TanZw?=
 =?utf-8?B?WjM3WXhDa0ZpdlFCb0RFOUFuR3VhTXJrdW9SOXA1UEtZSExPSjI1QTQ0RGpy?=
 =?utf-8?B?YzRIRHFGd21ZOW1OaU0rQnAyZ2ozVUR3NnN3amwxY0dzMXBTczUwRm8zWFpu?=
 =?utf-8?B?MW1Td25KOVNUR1dwbzVCZUxXeEpEdzg3eWFjalRHMEh1aEV2bnU5N0NQVTFS?=
 =?utf-8?B?VDNEWk9yWVJNaG5EY21ENGJLNmhWa0plY2JSM3hxZ0lPUjBXSjhmOXBkVmtH?=
 =?utf-8?B?Mm1qcytZZGZjcEhNcENudzZOOXlSR0l0RnVuejZPc21tZDZRTXAwUVFKTU5N?=
 =?utf-8?B?ZURLL21oTjlaQTBaTHN1QWRlZmh5TG5hL3g3aktVR0E1L1Z5cFUwSE1EbDNm?=
 =?utf-8?B?UFg4RjVSMlloZ2dnenNyYTRUMHhZamVEREVUUS9XczBQanZxSW4vM1ZjcWIv?=
 =?utf-8?B?T1dBdmtRcytOZzU0TDlwOU9JK3FHTERBclByU1MrVU1zUS9CQS8zTG51RktY?=
 =?utf-8?B?b1pQcHM2ZERUSDJJakVFNlA0VnlEcVk2UUVrUisycGwrbkZ6NTMzeUk1Y01t?=
 =?utf-8?B?VXF1Wm9SdGdBdkc3UWZlQ3AvQ3Bwb2N2T0NZcXkyb21DUXN0anhjY3MzSktI?=
 =?utf-8?B?WjdhTGsrVTdJRnpIQ04rMldyUWNOZDk0ajNCQ1ZKenFQQ0dONWpGV3k2WWli?=
 =?utf-8?B?UjNFSVhYU1cwaW9JNzdyUDdkQ3lqcDRQZjYxMDh0MDNzcE5lTjd4WlNzVXZS?=
 =?utf-8?B?ZXFESmNLOVZ5WHlzWVlVVXhvaXVXeStjVjNWQ0piRURielIxVkUvRmJacUll?=
 =?utf-8?B?VUJac0V6T1ZvZFRkMjBjdG1OSkFLWU9tS2QwQ3FPTEFMaHhZbXZydm5qYzNl?=
 =?utf-8?B?M0Z6dmx1cjFnMTV2TVBWVDdOcXd5TUd2QkdJR3BrK3lsbDNSOFJQUEc3RTZq?=
 =?utf-8?Q?B8ifSSibUwi35SD8=3D?=
X-OriginatorOrg: meta.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86214e43-7a35-4c84-dfbf-08de761c1b4a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB7038.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 16:20:22.4508
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0N8CepE2wa1DRisc1m9HEiIbnBLa9O97RW38FotWRK9NVo8mzJ8r6ZJqI2eZ5dg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PPF118F27D8B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE0NSBTYWx0ZWRfX+1KnjWiioZOD
 1kIQ4jbxt0NdQRugdpvJj9Z7MUHZlTR1kXp6AnjSCQ7L1E27DnpcY6eMJI/Lik4bZV/Uxbggo/H
 r4lttooDSDii5/jOzwDNbSleBa1ACB9KtIb+P+mKfAyxURW98GNZU92+Xz4Z9/tzpqjMnIdsLC1
 ox/rqmeoJjPwSK6X/SJiZ4FSlFNiEbD8re5fcCoOaH/9p4KwYA49Spgo8JGnyecUZLXDbKjviCR
 UaDjqXbmq8d643s+8lL8MRZnYpzEpzJRyPyUvHGqmm+s8+pPMMu6an9e1oBt7fAOHdD8eAprBz/
 whIVx+H8L63c+bbEAfPOMkw63jw8PxCfR40V9tMSbSlKwcaRR1mUwEWdc0PEdN0DZn+2+MCNmX3
 aJtbsKO/aGNth9MkxM7SvLEYLNU0ItqsOFQ6xo8ckREzcaLokLFiuWX3Ud+bwfGtyp0CmwMF4Ot
 +qYx+sb5acptYEyyBXQ==
X-Authority-Analysis: v=2.4 cv=T6GBjvKQ c=1 sm=1 tr=0 ts=69a1c449 cx=c_pps
 a=xBU3AFOX62plvdJ7VrUh9g==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=VwQbUJbxAAAA:8 a=VabnemYjAAAA:8 a=0R6VDxklJT5RH_P7GksA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=gKebqoRLp9LExxC7YDUY:22
X-Proofpoint-GUID: 4ZxNdmAK4Zyfm_20hIsteM9he52W4q1I
X-Proofpoint-ORIG-GUID: 4ZxNdmAK4Zyfm_20hIsteM9he52W4q1I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_03,2026-02-27_01,2025-10-01_01
X-Spamd-Bar: -----
X-MailFrom: prvs=051866f39e=mattev@meta.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MVWPSSPDIULZWL6VMWRLTAG2W6VVRE46
X-Message-ID-Hash: MVWPSSPDIULZWL6VMWRLTAG2W6VVRE46
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:08 +0000
CC: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Pranjal Shrivastava <praan@google.com>, Alistair Popple <apopple@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 4/7] dma-buf: uapi: Mechanism to revoke DMABUFs via ioctl()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MVWPSSPDIULZWL6VMWRLTAG2W6VVRE46/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[meta.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[meta.com:s=s2048-2025-q2];
	DATE_IN_PAST(1.00)[1152];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mattev@meta.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[meta.com:-];
	NEURAL_HAM(-0.00)[-0.922];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,meta.com:mid,meta.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 4E40D41275D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQ2hyaXN0aWFuLA0KDQpPbiAyNy8wMi8yMDI2IDE1OjIwLCBDaHJpc3RpYW4gS8O2bmlnIHdy
b3RlOg0KPiBIaSBNYXR0LA0KPiANCj4gT24gMi8yNy8yNiAxNDowMiwgTWF0dCBFdmFucyB3cm90
ZToNCj4+IEhpIENocmlzdGlhbiwNCj4+DQo+PiBPbiAyNy8wMi8yMDI2IDEwOjA1LCBDaHJpc3Rp
YW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDIvMjYvMjYgMjE6MjIsIE1hdHQgRXZhbnMgd3JvdGU6
DQo+Pj4+IEFkZCBhIG5ldyBkbWEtYnVmIGlvY3RsKCkgb3AsIERNQV9CVUZfSU9DVExfUkVWT0tF
LCBjb25uZWN0ZWQgdG8gYSBuZXcNCj4+Pj4gKG9wdGlvbmFsKSBkbWFfYnVmX29wcyBjYWxsYmFj
aywgcmV2b2tlKCkuICBBbiBleHBvcnRlciByZWNlaXZpbmcgdGhpcw0KPj4+PiB3aWxsIF9wZXJt
YW5lbnRseV8gcmV2b2tlIHRoZSBETUFCVUYsIG1lYW5pbmcgaXQgY2FuIG5vIGxvbmdlciBiZQ0K
Pj4+PiBtYXBwZWQvYXR0YWNoZWQvbW1hcCgpZWQuICBJdCBhbHNvIGd1YXJhbnRlZXMgdGhhdCBl
eGlzdGluZw0KPj4+PiBpbXBvcnRlcnMgaGF2ZSBiZWVuIGRldGFjaGVkIChlLmcuIHZpYSBtb3Zl
X25vdGlmeSkgYW5kIGFsbCBtYXBwaW5ncw0KPj4+PiBtYWRlIGluYWNjZXNzaWJsZS4NCj4+Pj4N
Cj4+Pj4gVGhpcyBpcyB1c2VmdWwgZm9yIGxpZmVjeWNsZSBtYW5hZ2VtZW50IGluIHNjZW5hcmlv
cyB3aGVyZSBhIHByb2Nlc3MNCj4+Pj4gaGFzIGNyZWF0ZWQgYSBETUFCVUYgcmVwcmVzZW50aW5n
IGEgcmVzb3VyY2UsIHRoZW4gZGVsZWdhdGVkIGl0IHRvDQo+Pj4+IGEgY2xpZW50IHByb2Nlc3M7
IGFjY2VzcyB0byB0aGUgcmVzb3VyY2UgaXMgcmV2b2tlZCB3aGVuIHRoZSBjbGllbnQgaXMNCj4+
Pj4gZGVlbWVkICJkb25lIiwgYW5kIHRoZSByZXNvdXJjZSBjYW4gYmUgc2FmZWx5IHJlLXVzZWQg
ZWxzZXdoZXJlLg0KPj4+DQo+Pj4gV2VsbCB0aGF0IG1lYW5zIHJldm9raW5nIGZyb20gdGhlIGlt
cG9ydGVyIHNpZGUuIFRoYXQgYWJzb2x1dGVseSBkb2Vzbid0IG1ha2Ugc2Vuc2UgdG8gbWUuDQo+
Pj4NCj4+PiBXaHkgd291bGQgeW91IGRvIHRoYXQ/DQo+Pg0KPj4gV2VsbCwgaXQncyBmb3IgY2xl
YW51cCwgYnV0IGRpcmVjdGVkIHRvIGEgc3BlY2lmaWMgYnVmZmVyLg0KPj4NCj4+IEVsYWJvcmF0
aW5nIG9uIHRoZSBvcmlnaW5hbCBleGFtcGxlLCBhIHVzZXJzcGFjZSBkcml2ZXIgY3JlYXRlcyBh
IERNQUJVRg0KPj4gZm9yIHBhcnRzIG9mIGEgQkFSIGFuZCB0aGVuIHNlbmRzIGl0cyBmZCB0byBz
b21lIG90aGVyIGNsaWVudCBwcm9jZXNzDQo+PiB2aWEgU0NNX1JJR0hUUy4gIFRoZSBjbGllbnQg
bWlnaHQgdGhlbiBkbyBhbGwgb2Y6DQo+Pg0KPj4gLSBQcm9jZXNzIG1hcHBpbmdzIG9mIHRoZSBi
dWZmZXINCj4+IC0gaW9tbXVmZCBJTy1tYXBwaW5ncyBvZiBpdA0KPj4gLSBvdGhlciB1bnJlbGF0
ZWQgZHJpdmVycyBpbXBvcnQgaXQNCj4+IC0gc2hhcmUgdGhlIGZkIHdpdGggbW9yZSBwcm9jZXNz
ZXMhDQo+Pg0KPj4gaS5lLiBwb2tpbmcgYSBwcm9ncmFtbWluZyBpbnRlcmZhY2UgYW5kIG9yY2hl
c3RyYXRpbmcgUDJQIERNQSB0byBpdC4NCj4+IEV2ZW50dWFsbHkgdGhlIGNsaWVudCBjb21wbGV0
ZXMgYW5kIG1lc3NhZ2VzIHRoZSBkcml2ZXIgdG8gc2F5IGdvb2RieWUsDQo+PiBleGNlcHQgdGhl
IGNsaWVudCBpcyBidWdneTogaXQgaGFuZ3MgYmVmb3JlIGl0IG11bm1hcHMgb3IgcmVxdWVzdCBv
dGhlcg0KPj4gZHJpdmVycyB0byBzaHV0IGRvd24vZGV0YWNoIHRoZWlyIGltcG9ydHMuDQo+Pg0K
Pj4gTm93IHRoZSBvcmlnaW5hbCBkcml2ZXIgY2FuJ3QgcmV1c2UgYW55IEJBUiByYW5nZXMgaXQg
c2hhcmVkIG91dCwgYXMNCj4+IHRoZXJlIG1pZ2h0IHN0aWxsIGJlIGFjdGl2ZSBtYXBwaW5ncyBv
ciBldmVuIG9uZ29pbmcgUDJQIERNQSB0byB0aGVtLg0KPj4NCj4+IFRoZSBnb2FsIGlzIHRvIGd1
YXJhbnRlZSBhIHBvaW50IGluIHRpbWUgd2hlcmUgcmVzb3VyY2VzIGNvcnJlc3BvbmRpbmcNCj4+
IHRvIGEgcHJldmlvdXNseS1zaGFyZWQgRE1BQlVGIGZkIF9jYW5ub3RfIGJlIGFjY2Vzc2VkIGFu
eW1vcmU6ICBDUFVzLA0KPj4gb3Igb3RoZXIgZHJpdmVycy9pbXBvcnRlcnMsIG9yIGFueSBvdGhl
ciBraW5kIG9mIFAyUCBETUEuICBTbyB5ZXMsIGENCj4+IHJldm9rZSBtdXN0IGRldGFjaCBpbXBv
cnRlcnMsIHVzaW5nIHRoZSBzeW5jaHJvbm91cyByZXZvY2F0aW9uIGZsb3cNCj4+IExlb24gYWRk
ZWQgaW4gWzBdICgiZG1hLWJ1ZjogVXNlIHJldm9rZSBtZWNoYW5pc20gdG8gaW52YWxpZGF0ZSBz
aGFyZWQNCj4+IGJ1ZmZlcnMiKS4NCj4+DQo+PiAoQXBvbG9naWVzLCBJIHNob3VsZCByZWFsbHkg
aGF2ZSBqdXN0IGJ1aWx0IHRoaXMgb24gdG9wIG9mIGEgdHJlZQ0KPj4gY29udGFpbmluZyB0aGF0
IHNlcmllcyB0byBtYWtlIHRoaXMgbmVlZCBjbGVhcmVyLikNCj4+DQo+PiBCdXQsIGl0IHVsdGlt
YXRlbHkgc2VlbXMgdG8gaGF2ZSB0aGUgc2FtZSBkb3duc3RyZWFtIGVmZmVjdHMgYXMgaWYgb25l
DQo+PiB3ZXJlIHRvLCBzYXksIHNodXQgZG93biBWRklPIGRldmljZSBmZHMgYW5kIHRoZXJlZm9y
ZSB0cmlnZ2VyDQo+PiB2ZmlvX3BjaV9kbWFfYnVmX2NsZWFudXAoKS4gIEl0J3MganVzdCB0aGUg
cmVhc29uIHRvIHRyaWdnZXIgcmV2b2NhdGlvbg0KPj4gaXMgZGlmZmVyZW50OiAgYSBzZWxlY3Rp
dmUgdXNlcnNwYWNlLXRyaWdnZXJlZCByZXZvY2F0aW9uIG9mIGEgZ2l2ZW4NCj4+IGJ1ZmZlciwg
aW5zdGVhZCBvZiBhbiBleHBvcnRlciBjbGVhbnVwLXRyaWdnZXJlZCByZXZvY2F0aW9uIG9mIGFs
bA0KPj4gYnVmZmVycy4gIEluIGJvdGggY2FzZXMgdGhlIGdvYWxzIGFyZSBpZGVudGljYWwgdG9v
LCBvZiBhIHN5bmNocm9uaXNlZA0KPj4gcG9pbnQgYWZ0ZXIgd2hpY2ggbm8gbW9yZSBETUEvQ1BV
IGFjY2VzcyBjYW4gaGFwcGVuLg0KPj4NCj4+IChJZiBJJ3ZlIG1pc3VuZGVyc3Rvb2QgeW91ciBx
dWVzdGlvbiBwbGVhc2UgY2xhcmlmeSwgYnV0IEkgaG9wZSB0aGF0DQo+PiBhbnN3ZXJzIGl0ISkN
Cj4gDQo+IFllYWggdGhhdCBtYWtlcyBpdCBjbGVhciwgSmFzb25zIGFuc3dlciBhbHNvIGhlbHBl
ZCBxdWl0ZSBhIGJpdCB0byB1bmRlcnN0YW5kIHdoYXQgeW91IHdhbnQgdG8gZG8gaGVyZS4NCj4g
DQo+IEZpcnN0IG9mIGFsbCB5b3VyIHJlcXVpcmVtZW50cyBzb3VuZCByZWFzb25hYmxlLCBidXQg
YWJzb2x1dGVseSBjbGVhciBOQUsgdG8gdGhlIHdheSB0aG9zZSBwYXRjaGVzIGFwcHJvYWNoIG9m
IGltcGxlbWVudGluZyB0aGVtLiBZb3UgY29tcGxldGVseSBtaXhlZCB1cCB0aGUgZGlmZmVyZW50
IERNQS1idWYgcm9sZXMgYW5kIHdoaWNoIGlzIHVzZWQgZm9yIHdoYXQuDQoNClllcCwgbm8gd29y
cmllcyAtLSB0aGlzIGlzIGp1c3QgYW4gUkZDIGluIG9yZGVyIHRvIGdldCBzdWNoIGZlZWRiYWNr
Lg0KDQo+IFNlZSB0aGUgSU9DVExzIG9uIHRoZSBETUEtYnVmIGZpbGUgZGVzY3JpcHRvciBhcmUg
Zm9yIHRoZSBpbXBvcnRlciBzaWRlIHRvIGNvbW11bmljYXRlIHdpdGggdGhlIGV4cG9ydGVyIHNp
ZGUuIEUuZy4gdGhpbmtzIGxpa2UgIkknbSBkb25lIHdyaXRpbmcgd2l0aCB0aGUgQ1BVLCBwbGVh
c2UgbWFrZSB0aGF0IHZpc2libGUgdG8geW91cnNlbGYgYW5kIG90aGVyIGltcG9ydGVycyIuLi4u
Lg0KPiANCj4gQnV0IHdoYXQgeW91IHdhbnQgdG8gZG8gaGVyZSBpcyBqdXN0IHRoZSBvdGhlciB3
YXkgYXJvdW5kLCB0aGUgZXhwb3J0ZXIgc2lkZSB3YW50cyB0byBzaWduYWwgdG8gYWxsIGltcG9y
dGVycyB0aGF0IGl0IGNhbid0IHVzZSB0aGUgYnVmZmVyIGFueSBtb3JlLCBjb3JyZWN0Pw0KDQpZ
ZXMsIHRoYXQncyByaWdodCwgaXQgd291bGQgYmUgdGhlIHJvbGUgb2YgdGhlIGV4cG9ydGVyIChW
RklPIGluIHRoZQ0KZmlyc3QgaW5zdGFuY2UpIGJlaW5nIHRyaWdnZXJlZCBieSB1c2Vyc3BhY2Ug
dG8gZG8gdGhpcyByZXZva2UuDQoNCkkgc2VlIHRoaXMgZG9lc24ndCByZWFsbHkgZml0IHdpdGgg
dGhlIG90aGVyIGlvY3RscyBiZWluZw0KaW1wb3J0ZXItY2VudHJpYzsgdGhhbmtzLCBJIGRvIGFn
cmVlIHRoYXQgYW4gZXhwb3J0ZXIgcmV2b2NhdGlvbiBvcA0Kd291bGQgc3RpY2sgb3V0IGhlcmUu
DQoNCihJIHRyaWVkIGluIHRoZSBjb3ZlciBsZXR0ZXIgdG8gZmxhZyB0aGF0IGJldHRlciB3YXlz
IHByb2JhYmx5IGV4aXN0LA0KYW5kIHRoZSBQb0MgaW50ZW5kZWQgdG8gc2V0IGNvbnRleHQgZm9y
IGhvdyBpdCdkIGJlIHRyaWdnZXJlZCBpbiBlbmQtdG8tDQplbmQgdXNhZ2UuICBBdCBhbnkgcmF0
ZSwgSSdtIGdsYWQgd2UncmUgYWxpZ25pbmcgb24gdGhlIG92ZXJhbGwgY29uY2VwdC8NCmdvYWxz
IChtb2R1bG8gaW1wbGVtZW50YXRpb24gOikgKS4pDQoNCj4gSWYgSSB1bmRlcnN0b29kIHRoYXQg
Y29ycmVjdGx5IHRoZW4gbXkgc3VnZ2VzdGlvbiBpcyB0aGF0IHlvdSBoYXZlIGEgbmV3IElPQ1RM
IG9uIHRoZSBWRklPIGZkIHlvdSBvcmlnaW5hbGx5IHVzZWQgdG8gZXhwb3J0IHRoZSBETUEtYnVm
IGZkLiBUaGlzIElPQ1RMIHRha2VzIHRoZSBETUEtYnVmIGZkIGFuZCBhZnRlciBkb3VibGUgY2hl
Y2tpbmcgdGhhdCBpdCBpbmRlZWQgaXMgdGhlIGV4cG9ydGVyIG9mIHRoYXQgZmQgcmV2b2tlcyBh
bGwgaW1wb3J0ZXIgYWNjZXNzIHRvIGl0Lg0KDQpUaGlzIHdhcyBKYXNvbidzIHN1Z2dlc3Rpb24g
aW4gdGhlIG90aGVyIG1haWwgdG9vLCBhbmQgaXQgc2VlbXMgbGlrZSBhDQptdWNoIG5pY2VyIHdh
eSB0byBkbyBpdC4gIFRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb25zLCBJJ2xsIHJlZG8gaXQN
Cmxpa2UgdGhhdC4NCg0KPiBJJ20gY2VydGFpbmx5IG9wZW4gb24gc3VnZ2VzdGlvbnMgb24gaG93
IHRvIGltcHJvdmUgdGhlIERNQS1idWYgZG9jdW1lbnRhdGlvbiB0byBtYWtlIHRoYXQgbW9yZSBj
bGVhcmVyIGluIHRoZSBmdXR1cmUuDQoNCkknbGwgcmUtcmVhZCBpdCBhbmQgc2VlIGlmIGFueSBp
ZGVhcyBmb3IgY2xhcmlmaWNhdGlvbiBvY2N1ciwgYXMgSSBkaWQNCmluZGVlZCBtaXNzIHRoYXQg
dGhlIGZkIGltcGxpZXMgdGhlIGltcG9ydGVyIHJvbGUsIGFwb2xvZ2llcy4NCg0KDQpUaGFua3Ms
DQoNCg0KTWF0dA0KDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4gDQo+Pg0KPj4g
Q2hlZXJzLA0KPj4NCj4+DQo+PiBNYXR0DQo+Pg0KPj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LWlvbW11LzIwMjYwMjA1LW5vY3R1cm5hbC1wb2V0aWMtY2hhbW9pcy1mNTY2YWRA
aG91YXQvVC8jbTMxMGNkMDcwMTFlM2ExNDYxYjZmZGE0NWUzZjliODg2YmE3NjU3MWEgDQo+Pg0K
Pj4+DQo+Pj4gUmVnYXJkcywNCj4+PiBDaHJpc3RpYW4uDQo+Pj4NCj4+Pj4NCj4+Pj4gU2lnbmVk
LW9mZi1ieTogTWF0dCBFdmFucyA8bWF0dGV2QG1ldGEuY29tPg0KPj4+PiAtLS0NCj4+Pj4gIGRy
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgICAgfCAgNSArKysrKw0KPj4+PiAgaW5jbHVkZS9saW51
eC9kbWEtYnVmLmggICAgICB8IDIyICsrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4gIGluY2x1
ZGUvdWFwaS9saW51eC9kbWEtYnVmLmggfCAgMSArDQo+Pj4+ICAzIGZpbGVzIGNoYW5nZWQsIDI4
IGluc2VydGlvbnMoKykNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4+IGluZGV4IGVkYWE5ZTRl
ZTRhZS4uYjliMzE1MzE3ZjJkIDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jDQo+Pj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+Pj4gQEAgLTU2
MSw2ICs1NjEsMTEgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmls
ZSwNCj4+Pj4gICAgICAgICBjYXNlIERNQV9CVUZfSU9DVExfSU1QT1JUX1NZTkNfRklMRToNCj4+
Pj4gICAgICAgICAgICAgICAgIHJldHVybiBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUoZG1hYnVm
LCAoY29uc3Qgdm9pZCBfX3VzZXIgKilhcmcpOw0KPj4+PiAgI2VuZGlmDQo+Pj4+ICsgICAgICAg
Y2FzZSBETUFfQlVGX0lPQ1RMX1JFVk9LRToNCj4+Pj4gKyAgICAgICAgICAgICAgIGlmIChkbWFi
dWYtPm9wcy0+cmV2b2tlKQ0KPj4+PiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gZG1h
YnVmLT5vcHMtPnJldm9rZShkbWFidWYpOw0KPj4+PiArICAgICAgICAgICAgICAgZWxzZQ0KPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+Pj4NCj4+Pj4gICAg
ICAgICBkZWZhdWx0Og0KPj4+PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9UVFk7DQo+Pj4+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1h
LWJ1Zi5oDQo+Pj4+IGluZGV4IDBiYzQ5MjA5MDIzNy4uYTY4YzlhZDdhZWJkIDEwMDY0NA0KPj4+
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+PiArKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1idWYuaA0KPj4+PiBAQCAtMjc3LDYgKzI3NywyOCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMg
ew0KPj4+Pg0KPj4+PiAgICAgICAgIGludCAoKnZtYXApKHN0cnVjdCBkbWFfYnVmICpkbWFidWYs
IHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+Pj4+ICAgICAgICAgdm9pZCAoKnZ1bm1hcCkoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKTsNCj4+Pj4gKw0KPj4+
PiArICAgICAgIC8qKg0KPj4+PiArICAgICAgICAqIEByZXZva2U6DQo+Pj4+ICsgICAgICAgICoN
Cj4+Pj4gKyAgICAgICAgKiBUaGlzIGNhbGxiYWNrIGlzIGludm9rZWQgZnJvbSBhIHVzZXJzcGFj
ZQ0KPj4+PiArICAgICAgICAqIERNQV9CVUZfSU9DVExfUkVWT0tFIG9wZXJhdGlvbiwgYW5kIHJl
cXVlc3RzIHRoYXQgYWNjZXNzIHRvDQo+Pj4+ICsgICAgICAgICogdGhlIGJ1ZmZlciBpcyBpbW1l
ZGlhdGVseSBhbmQgcGVybWFuZW50bHkgcmV2b2tlZC4gIE9uDQo+Pj4+ICsgICAgICAgICogc3Vj
Y2Vzc2Z1bCByZXR1cm4sIHRoZSBidWZmZXIgaXMgbm90IGFjY2Vzc2libGUgdGhyb3VnaCBhbnkN
Cj4+Pj4gKyAgICAgICAgKiBtbWFwKCkgb3IgZG1hLWJ1ZiBpbXBvcnQuICBUaGUgcmVxdWVzdCBm
YWlscyBpZiB0aGUgYnVmZmVyDQo+Pj4+ICsgICAgICAgICogaXMgcGlubmVkOyBvdGhlcndpc2Us
IHRoZSBleHBvcnRlciBtYXJrcyB0aGUgYnVmZmVyIGFzDQo+Pj4+ICsgICAgICAgICogaW5hY2Nl
c3NpYmxlIGFuZCB1c2VzIHRoZSBtb3ZlX25vdGlmeSBjYWxsYmFjayB0byBpbmZvcm0NCj4+Pj4g
KyAgICAgICAgKiBpbXBvcnRlcnMgb2YgdGhlIGNoYW5nZS4gIFRoZSBidWZmZXIgaXMgcGVybWFu
ZW50bHkNCj4+Pj4gKyAgICAgICAgKiBkaXNhYmxlZCwgYW5kIHRoZSBleHBvcnRlciBtdXN0IHJl
ZnVzZSBhbGwgbWFwLCBtbWFwLA0KPj4+PiArICAgICAgICAqIGF0dGFjaCwgZXRjLiByZXF1ZXN0
cy4NCj4+Pj4gKyAgICAgICAgKg0KPj4+PiArICAgICAgICAqIFJldHVybnM6DQo+Pj4+ICsgICAg
ICAgICoNCj4+Pj4gKyAgICAgICAgKiAwIG9uIHN1Y2Nlc3MsIG9yIGEgbmVnYXRpdmUgZXJyb3Ig
Y29kZSBvbiBmYWlsdXJlOg0KPj4+PiArICAgICAgICAqIC1FTk9ERVYgaWYgdGhlIGFzc29jaWF0
ZWQgZGV2aWNlIG5vIGxvbmdlciBleGlzdHMvaXMgY2xvc2VkLg0KPj4+PiArICAgICAgICAqIC1F
QkFERkQgaWYgdGhlIGJ1ZmZlciBoYXMgYWxyZWFkeSBiZWVuIHJldm9rZWQuDQo+Pj4+ICsgICAg
ICAgICovDQo+Pj4+ICsgICAgICAgaW50ICgqcmV2b2tlKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
KTsNCj4+Pj4gIH07DQo+Pj4+DQo+Pj4+ICAvKioNCj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWFwaS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+
IGluZGV4IDVhNmZkYTY2ZDlhZC4uODRiZjJkZDJkMGYzIDEwMDY0NA0KPj4+PiAtLS0gYS9pbmNs
dWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oDQo+Pj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9k
bWEtYnVmLmgNCj4+Pj4gQEAgLTE3OCw1ICsxNzgsNiBAQCBzdHJ1Y3QgZG1hX2J1Zl9pbXBvcnRf
c3luY19maWxlIHsNCj4+Pj4gICNkZWZpbmUgRE1BX0JVRl9TRVRfTkFNRV9CICAgICBfSU9XKERN
QV9CVUZfQkFTRSwgMSwgX191NjQpDQo+Pj4+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExfRVhQT1JU
X1NZTkNfRklMRSBfSU9XUihETUFfQlVGX0JBU0UsIDIsIHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9z
eW5jX2ZpbGUpDQo+Pj4+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExfSU1QT1JUX1NZTkNfRklMRSBf
SU9XKERNQV9CVUZfQkFTRSwgMywgc3RydWN0IGRtYV9idWZfaW1wb3J0X3N5bmNfZmlsZSkNCj4+
Pj4gKyNkZWZpbmUgRE1BX0JVRl9JT0NUTF9SRVZPS0UgICBfSU8oRE1BX0JVRl9CQVNFLCA0KQ0K
Pj4+Pg0KPj4+PiAgI2VuZGlmDQo+Pj4+IC0tDQo+Pj4+IDIuNDcuMw0KPj4+Pg0KPj4+DQo+Pg0K
PiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
