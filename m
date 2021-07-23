Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CC18C3D3A55
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 14:34:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E979632DD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 12:34:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id DC893631A2; Fri, 23 Jul 2021 12:34:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E4D262EA4;
	Fri, 23 Jul 2021 12:34:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BDDC9604C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 12:34:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B5F5762EA4; Fri, 23 Jul 2021 12:34:26 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2045.outbound.protection.outlook.com [40.107.102.45])
 by lists.linaro.org (Postfix) with ESMTPS id 99385604C3
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 12:34:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSvkoFP+0WgtNuQrrSzGngy5PnU1G/ngzZ93bG21f7VL/mhh2uWmvZ2xPvYKVW62Sfxuz1cVqGFAGA9reg4zTBxIMe2IY4RWGbHK8G8xgFtYpOU1dQi9feka7OHEyqTF4lbXFNOARwFHz2pv8dwwTIwbLFQ945LsdA1gFBH1O1J7zDfEa1oC9Ukis3DCa00rjAu9TsUSciufW9H9oHiBEAUZvXnR+PRJ+NqfUySY0L2szsXxUwffR3IW3qqEtG2/ukY93MdDDqPTNweRjqizC1iGMwbzZNNfqk6B4xj0pznY3DmkN8oETX+45MYdMcvXHQXLeqFhlHdTzR1+VPYCKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17BJ+A+Cc5O9NEHfK6tTa6wCNCnayhVTsjcCXD5rLU4=;
 b=ei6lldzxP0s13OtfEvy6SmJZIfqfhHsWyyjQCI0hws6wKxWla5yZmx1mV5V0tuXYTiSbeCKmJIIY4rCBUSon/9RHWO5lDG33Z/pN5WxAz29AGmOqY5cNbo61X8NdAklE93JMDio/oR8tN2xfeTrUlqbId5z4dhNVTwAJGwsdVN8AfMt/FI3w8HQ+igi9e34DGoM2VNZUEYB/f0boCC8KqXXvNAxGvLR9MNYm893fs+KL24vJXGrlJaHsU/2UAq4/AgzwzqfsTey0MM9icUPxio3Mcw3VhiAGcsg6u5ExPQhaKliZtH5XCpOknMJl6NA/xzJXWaun0GErfF1oRhZzdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17BJ+A+Cc5O9NEHfK6tTa6wCNCnayhVTsjcCXD5rLU4=;
 b=I5rM9K+CNsKqTav7ZDkMB8FtuNs3xu7/am/eOl8YNjbx7FnYcd/5S9fX7a/4rhv6R9ajqwMW2KxxGfuWskaYLyHzetqLAXcUNJzIUAzKzhA/2q2VYnu5O8tca2MV0/8+SXLsHpVLiPXEVjMKyet4SGjtIXbLHEh6wYWx1t532sY=
Authentication-Results: codeaurora.org; dkim=none (message not signed)
 header.d=none;codeaurora.org; dmarc=none action=none header.from=amd.com;
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB4111.namprd12.prod.outlook.com (2603:10b6:208:1de::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Fri, 23 Jul
 2021 12:34:18 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::6c9e:1e08:7617:f756%5]) with mapi id 15.20.4352.028; Fri, 23 Jul 2021
 12:34:18 +0000
To: Charan Teja Reddy <charante@codeaurora.org>, sumit.semwal@linaro.org
References: <1627043468-16381-1-git-send-email-charante@codeaurora.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <b057b0fe-75ae-d872-f500-a307543d8233@amd.com>
Date: Fri, 23 Jul 2021 14:34:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <1627043468-16381-1-git-send-email-charante@codeaurora.org>
Content-Language: en-US
X-ClientProxiedBy: PR0P264CA0085.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::25) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:4ae7:63c0:5e49:6388]
 (2a02:908:1252:fb60:4ae7:63c0:5e49:6388) by
 PR0P264CA0085.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:18::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.25 via Frontend Transport; Fri, 23 Jul 2021 12:34:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 723abce7-5b5e-479f-c837-08d94dd63065
X-MS-TrafficTypeDiagnostic: MN2PR12MB4111:
X-Microsoft-Antispam-PRVS: <MN2PR12MB4111CF20691913E345EC211583E59@MN2PR12MB4111.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9AGKMy6Tk/BoqskVWfstwgwltvWgFp9aYmypnhG7E8ScLAAYQn3XvwrfHC2YLwDre3Y2TaTAzDrS3R4Y4IORGS1Iz4xudWiAlPPEgvBD3Cqz8HYi/nw2y7QEsvrB1A6dNhC0XDVNtK7Sr534dFK/pYuxZxxTYfgjVeCc1EO1v4oQENqv6Y1m39aiIY9jzI+JXQyGbjESjddn/MG1sjGUj8gIhjOGm2qDi6eIuKOWsopVr3t/lbQlY9nCp8ptOfpTWNJ/+TSkBFBMACPrkqkK9oVw7nw9U9oPV29GS7Y7wqAwWqumwle3gqDElEofMNhccRAASoYVciDLaW6FFnFQFW8UOFLJhKE14jsUEFnPeJtjbvR5E9m4E6qgGfyaLQgYLby6TolPQz/+8WkkfjS6+S0kEi7tmCGWQDeJeWwq7XuGHEt0GvTCjjWQCpt+V3m9ZWQGSq3jXUmSA0YZmEy2nOtpQ3S00IEBF0cpMHX54+0IUa8hRfoa9b4K3ki1hUN5cygguxfvg7TBWNILFKeAOA4L5FLubKlQC06PhWZcIBwz/7OfbDYyfog69pV3TZOnkD2hr5fHVmgUXedD/OTtkc1EMK3fKKLpjrbstyCTuoug0eQHjVHt8m2ElnGgeKuF1/sTmW2NMTLAd+6RGlcicOsUrOoF+1zHnGaAKhspYTklA1qexoRFUMEb9aC5RJspqhnVaZKRiiGAZ1yi9f3r/ccKnjWwQI1x10u+cfnAB/ceOMhjbujsWCRShU4KCKEY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(83380400001)(31686004)(36756003)(31696002)(38100700002)(86362001)(5660300002)(8936002)(8676002)(66574015)(2906002)(186003)(478600001)(6666004)(316002)(4326008)(6486002)(66946007)(66556008)(2616005)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmJOdnhyU1FsOGVidHprTzVubkRZdzc2RzBGSk5Cclp4MlF4RStnNTdYSkJ5?=
 =?utf-8?B?WUlTZmNHL0R6NmF2L2V4ZjEwdTYyYWVIUG5OcDFBcWJVbGJQcnV2dFBsbUh2?=
 =?utf-8?B?RTVLR2V5MjJtZmtxZHNzU0hYNzAxd3J1MzdYMlcyUFJGZ0YxWlhFclVuQmdZ?=
 =?utf-8?B?Y2JSbE9zY0xldFQrOWlLSlpKNkpxR29vOHU5NVVHZVR4eEd3QURtSmZhRmtK?=
 =?utf-8?B?aUd0NWoxR2dPUFZCakVDUU1UQkVkTlZKeGhORG1FMlBVUi9DYW9KNDcwNG12?=
 =?utf-8?B?L2liejduUGJxc0ttSVU4TmN3cEJzUkc0QnRKOEw5d0hlOG1GVTlrRnFLWEZ1?=
 =?utf-8?B?K1UvUW5kdHFIZlFHZk11YWI5cWxEMHRkUU0wL2YyVVZNelBHZDdEU2RHSURt?=
 =?utf-8?B?NmlKampyRzBveVlwQnNxQmdHS0pKOU5wWngxR3JOVXVPS08xR3V1TXBWT2dy?=
 =?utf-8?B?cy9FbE9yQTYrbHRPRDJpMVU5QXVqSkJCSHpsWGN5WnZqSWxyL3hEM2RheW9o?=
 =?utf-8?B?YldHU3lyNktJWVlhaS9hOFVlM2hjQmJoM08vNUliN2JZT0ZtRXRYVDhadEFj?=
 =?utf-8?B?Y1hWWGt5K0lwa0E4ZjV2bEQ5NUt2VFpVY2xuekZhWTM1dGJkaTR2TCtsa0tD?=
 =?utf-8?B?dXZsdy9uSTNpMkUySzE3VWNrUWJIZGRQT1lEc2E3NEp3NklvNWZYamNjQkM3?=
 =?utf-8?B?S1dHVXdETE5VUGs1ekF1bDJLSGJjUkJEVTk1RW94c0FHN0c3WFdPbXlUNmo4?=
 =?utf-8?B?MjJwcXQvK2RNOUw3NHFFTkl2MjBmVUxhNzZNb09SY0RzWTJmQUpZS210VTk1?=
 =?utf-8?B?NkZ5Zk54NzEvWkd5R1pRMXdOK2lVRDc4R3FLcFE5QVBYQXdaTzRNWUlXc0RS?=
 =?utf-8?B?L0VqUDkwRXF5Z1gvWUZXTjVHZ0tjRHd2cHpaN1hqc01yOEFnaGJwYit3M2R5?=
 =?utf-8?B?YjQvcjlBMmw2NHgxYW91NktCWnJaYVRqWHEybGdidUpHOGx0bk9FOVZheTNH?=
 =?utf-8?B?M0VjSTVlS3oxVUZUV3dzNzU2bU5jNndIR2pwaGk3c25ya3g2ckxudlM2ZVpJ?=
 =?utf-8?B?UStYa05pbjFXVWRGVGdIRVBuK3F1YitWYm9JTHNnYkZkYUhzUnpkQ2NBQXp6?=
 =?utf-8?B?cUtvV0JqZmdJdWRVU3lOd3hKV2RvSHBOM0YyeGxBTzdNcFd5aDBRV0VrK2c4?=
 =?utf-8?B?SmplZ0hVU2VmNnp1WlVobGVISzc1RWhlOGRnQUYxaUozOE9IRTgxUUxPU3Ba?=
 =?utf-8?B?UzNwQS93amQramQ3SFVWdGNxaS85alpOa2xQdWQ5azRBV3dBeHdXSy80dWhV?=
 =?utf-8?B?Y1JtYThjeEE4NXRZYmhxN09VLzBSaUk4UC9OK2pHcVBVQ25GS1NsNzZpWjFE?=
 =?utf-8?B?dUVQUUg1cW9LSG9mVTNDRUZNMzdMaTNDNzYzM0VPQWV1UkdWbElRZy9PajNH?=
 =?utf-8?B?ZGh4Sm5CTktjTnFDeU1oYllGcVdkMjdEZ1k3UHNTUExRcy9ZUlYvZ09YQmly?=
 =?utf-8?B?eExIN2RGRVJ1cXRUbksrdW1OU2xXTlIvaGJXUlBOUGFNTXBUeDNCUVliRUpL?=
 =?utf-8?B?a2I4NkZpSU5zVy9OT1JLTWhYcy9PdUJiQXNXTEh4SEJOV01vNjBQMGNkUmZT?=
 =?utf-8?B?bDU4RFAvekNPTnZKLytJeFR2VEt6bzcvZndkcmloZ0Vqc3FtOTNmeEtHNzhx?=
 =?utf-8?B?cFFiVW5wOWIxVCtHUlJYOEtHQWFwamIxcWthQTh0dEI1SXY0Wmw3UGxoenpN?=
 =?utf-8?B?RGJjdXBJZmQyTDFkMWRjNDc4a1I1Rjd5SUgxSW8zUk5xakV0eU0vMnJ4eW1W?=
 =?utf-8?B?OUV0MFBxa2JFWWxpNzRaQ3hCakNNcGIyN1dKZVVleDFOTWduR3ZWQms0MXV6?=
 =?utf-8?Q?c/FfwW8zh9Xnr?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 723abce7-5b5e-479f-c837-08d94dd63065
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2021 12:34:18.2161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AGrVsVmWeL6nii9JwK1n1BCUNWvwxIeaHWWqdvP7+ViSXCiwm723HjETn6QS9oIF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4111
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: WARN on dmabuf release with
 pending attachments
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjMuMDcuMjEgdW0gMTQ6MzEgc2NocmllYiBDaGFyYW4gVGVqYSBSZWRkeToKPiBJdCBpcyBl
eHBlY3RlZCBmcm9tIHRoZSBjbGllbnRzIHRvIGZvbGxvdyB0aGUgYmVsb3cgc3RlcHMgb24gYW4g
aW1wb3J0ZWQKPiBkbWFidWYgZmQ6Cj4gYSkgZG1hYnVmID0gZG1hX2J1Zl9nZXQoZmQpIC8vIEdl
dCB0aGUgZG1hYnVmIGZyb20gZmQKPiBiKSBkbWFfYnVmX2F0dGFjaChkbWFidWYpOyAvLyBDbGll
bnRzIGF0dGFjaCB0byB0aGUgZG1hYnVmCj4gICAgIG8gSGVyZSB0aGUga2VybmVsIGRvZXMgc29t
ZSBzbGFiIGFsbG9jYXRpb25zLCBzYXkgZm9yCj4gZG1hX2J1Zl9hdHRhY2htZW50IGFuZCBtYXkg
YmUgc29tZSBvdGhlciBzbGFiIGFsbG9jYXRpb24gaW4gdGhlCj4gZG1hYnVmLT5vcHMtPmF0dGFj
aCgpLgo+IGMpIENsaWVudCBtYXkgbmVlZCB0byBkbyBkbWFfYnVmX21hcF9hdHRhY2htZW50KCku
Cj4gZCkgQWNjb3JkaW5nbHkgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkgc2hvdWxkIGJlIGNh
bGxlZC4KPiBlKSBkbWFfYnVmX2RldGFjaCAoKSAvLyBDbGllbnRzIGRldGFjaCB0byB0aGUgZG1h
YnVmLgo+ICAgICBvIEhlcmUgdGhlIHNsYWIgYWxsb2NhdGlvbnMgbWFkZSBpbiBiKSBhcmUgZnJl
ZWQuCj4gZikgZG1hX2J1Zl9wdXQoZG1hYnVmKSAvLyBDYW4gZnJlZSB0aGUgZG1hYnVmIGlmIGl0
IGlzIHRoZSBsYXN0Cj4gcmVmZXJlbmNlLgo+Cj4gTm93IHNheSBhbiBlcnJvbmVvdXMgY2xpZW50
IGZhaWxlZCBhdCBzdGVwIGMpIGFib3ZlIHRodXMgaXQgZGlyZWN0bHkKPiBjYWxsZWQgZG1hX2J1
Zl9wdXQoKSwgc3RlcCBmKSBhYm92ZS4gQ29uc2lkZXJpbmcgdGhhdCBpdCBtYXkgYmUgdGhlIGxh
c3QKPiByZWZlcmVuY2UgdG8gdGhlIGRtYWJ1ZiwgYnVmZmVyIHdpbGwgYmUgZnJlZWQgd2l0aCBw
ZW5kaW5nIGF0dGFjaG1lbnRzCj4gbGVmdCB0byB0aGUgZG1hYnVmIHdoaWNoIGNhbiBzaG93IHVw
IGFzIHRoZSAnbWVtb3J5IGxlYWsnLiBUaGlzIHNob3VsZAo+IGF0IGxlYXN0IGJlIHJlcG9ydGVk
IGFzIHRoZSBXQVJOKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaGFyYW4gVGVqYSBSZWRkeSA8Y2hh
cmFudGVAY29kZWF1cm9yYS5vcmc+CgpHb29kIGlkZWEuIEkgd291bGQgZXhwZWN0IGEgY3Jhc2gg
aW1tZWRpYXRlbHksIGJ1dCBmcm9tIHN1Y2ggYSBiYWNrdHJhY2UgCml0IGlzIHF1aXRlIGhhcmQg
dG8gdGVsbCB3aGF0IHRoZSBwcm9ibGVtIGlzLgoKUGF0Y2ggaXMgUmV2aWV3ZWQtYnk6IENocmlz
dGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4gYW5kIEknbSAKZ29pbmcgdG8g
cHVzaCB0aGlzIHRvIGRybS1taXNjLW5leHQgb24gTW9uZGF5IGlmIG5vYm9keSBvYmplY3RzLgoK
VGhhbmtzLApDaHJpc3RpYW4uCgo+IC0tLQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8
IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBp
bmRleCA1MTFmZTBkLi43MzNjOGIxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMKPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTc5LDYgKzc5LDcg
QEAgc3RhdGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKPiAg
IAlpZiAoZG1hYnVmLT5yZXN2ID09IChzdHJ1Y3QgZG1hX3Jlc3YgKikmZG1hYnVmWzFdKQo+ICAg
CQlkbWFfcmVzdl9maW5pKGRtYWJ1Zi0+cmVzdik7Cj4gICAKPiArCVdBUk5fT04oIWxpc3RfZW1w
dHkoJmRtYWJ1Zi0+YXR0YWNobWVudHMpKTsKPiAgIAltb2R1bGVfcHV0KGRtYWJ1Zi0+b3duZXIp
Owo+ICAgCWtmcmVlKGRtYWJ1Zi0+bmFtZSk7Cj4gICAJa2ZyZWUoZG1hYnVmKTsKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxp
bmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
