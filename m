Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 196E23386D1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Mar 2021 08:52:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 481236087B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Mar 2021 07:52:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3CFC561805; Fri, 12 Mar 2021 07:52:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D840F61754;
	Fri, 12 Mar 2021 07:51:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D3FFE6092F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Mar 2021 07:51:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BD87A6087B; Fri, 12 Mar 2021 07:51:55 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2071.outbound.protection.outlook.com [40.107.93.71])
 by lists.linaro.org (Postfix) with ESMTPS id 929256087B
 for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Mar 2021 07:51:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AM/2bkrhAoVTMYandbs0xTcimZ68hMzfieoJZaBmt9FWvCV2qstF7S5TT8mWEj9XS6JOXuzsD7UaVBw0rsQ/UywzYO7EwVQqJgKQ0WXyZbbKvAebPvoXdf3ApC0QGkTw834Gml5+xTG8XNeuujzcPMHVoikcRmppYVXFF6jBtwN8PE3HLSb5aEqp9N94FGaFyBHgOJBtazOhuWA6Du3OSe+lehIrt7J7C0F6YxZC33OM6kume0jHdNQZGskzwS41lFYlV/DU8NmcYFFavd0VidACC/CkyeFqmIHilJRdKdcpvFHcfBHwtdjhKQNTic+y8a3ZjXVzx56bOIEGtpaH9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iXp7AZWEQUtzSJVLhVzWpvY4BWD8w1//7TUA82TlbGs=;
 b=FQzLs+MljCVyaK7BJu05A6Wf8xxAwTq9ygppudqwxIqd9HQpmptZtHlmrodWZF6lE3gjMwAx4lZcMznq0f4M0BuziZC/1Hu0or4WhS29cVgXhJCIrVsFCb0Og3Tkq/sGLVx4BZtjdBzVh1G/2BypQ0qVTRs/hBPgUDY9hZAGH43iqk/4PH/PyitjOXyKkhnFBq+B9A28XAS/QZQZOTXXDGfNKxGDCDP42iLMotYueFAAcTYYk8jy5+ETYz7GIjpE1hK8fbH43+0VZRiwrjZF3Suz21B37P9QlHRF0VE8b/J58k1NFv14cp01k5J8H8Q6zNZe7gOy9D7MxCqJy0zgug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3775.namprd12.prod.outlook.com (2603:10b6:208:159::19)
 by MN2PR12MB3696.namprd12.prod.outlook.com (2603:10b6:208:169::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31; Fri, 12 Mar
 2021 07:51:52 +0000
Received: from MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2]) by MN2PR12MB3775.namprd12.prod.outlook.com
 ([fe80::c1ff:dcf1:9536:a1f2%2]) with mapi id 15.20.3933.031; Fri, 12 Mar 2021
 07:51:52 +0000
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
References: <61c5c371-debe-4ca0-a067-ce306e51ef88@shipmail.org>
 <CAKMK7uFUiJyMP0E5JUzMOx=NyMW+ZObGsaFOh409x0LOvGbnzg@mail.gmail.com>
 <0d69bd00-e673-17cf-c9e3-ccbcd52649a6@shipmail.org>
 <CAKMK7uE=8+hj-MUFXHFoG_hAbz_Obi8a99+DE5_d1K+KZaG+tQ@mail.gmail.com>
 <b367b7e8-f202-4d23-d672-a5c9bc7fcec1@shipmail.org>
 <YDyuYk8x5QeX83s6@phenom.ffwll.local>
 <be8f2503-ffcb-eb58-83be-26fa0fc1837a@shipmail.org>
 <648556e6-2d99-950d-c940-706eb5a8f6cc@amd.com>
 <CAKMK7uHOe=LacUkvGC75dyWAt9TRm7ce8vgxasXOXn-6wJTVnA@mail.gmail.com>
 <9d608c61-c64c-dcde-c719-59a970144404@shipmail.org>
 <YEoUZe8BtvQdv3TG@phenom.ffwll.local>
 <0e15ae7a-58d3-c75e-9a6c-e397e11750a7@shipmail.org>
 <CAKMK7uEzGKUc27xdWTv7KPESsyg1kCYCmVxP3b-HrzNCNO5x7g@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <c96145e3-1386-8a50-2ee6-6af61a60c861@amd.com>
Date: Fri, 12 Mar 2021 08:51:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CAKMK7uEzGKUc27xdWTv7KPESsyg1kCYCmVxP3b-HrzNCNO5x7g@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [2a02:908:1252:fb60:2108:8a72:3f15:1a1f]
X-ClientProxiedBy: AM0PR10CA0074.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:15::27) To MN2PR12MB3775.namprd12.prod.outlook.com
 (2603:10b6:208:159::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:908:1252:fb60:2108:8a72:3f15:1a1f]
 (2a02:908:1252:fb60:2108:8a72:3f15:1a1f) by
 AM0PR10CA0074.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:15::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3912.17 via Frontend Transport; Fri, 12 Mar 2021 07:51:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1077066c-90f1-4971-9421-08d8e52bb272
X-MS-TrafficTypeDiagnostic: MN2PR12MB3696:
X-Microsoft-Antispam-PRVS: <MN2PR12MB3696267E09B8E21968563D4C836F9@MN2PR12MB3696.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QeGGClAt98m0nX3miHFf0GEWNZh8qYa/w/Mk8NOzI9jBjyS2BaXlO5dAKYMcDXfskHoKy0eftQ6+0xJARr62cb2Qa+ISUG/e7BuqrTSH4Ms/L/zeUrgNAk0HPX1fIShMvgDWlWF1RLsXIcRA6fJO5msSFszktKGB9UhC+LVjTgmOY4E0+RkSrx9KFnTs5HPca3fqjRECsV/HmyUfo/ZLyBqduik9tzy/9OEKgQ1Z2j+/akf6kqRy+xhLBCE/rzAQPJltJzb6j7bmIAiHzNUUFXke02aLV7FBv4Nvh8WRc2fSc+/DrJtOSszkk4Dh1jxDuZCPhlLvlxNAdzsGUAAq62o4aF2zttRRiUc3l1Nj39dke0woMsSVaXq3PQB2udaGintWS3iqG1DhVXGApyKSlSYidc4wH4ndWNL8gioYdiSV6Ws9IfrcGsDl5nT9aQ8NdvRuwi2H6jFsM+gUbMFmAUVJ5AkK2OuHqvN6JMkv95gGLfveY1rcrHcVPyqO4hdJSydMvnUmwE5avjAISdF87Lmgf6KC5ptwub3rr8pBn1BmBTc91gXzwGc6dlr+jLKXqPCRKE3lsr50yQzPhHiN/WBOoU4Lb9jdvx2aTce82Xs/NxM515l8UoUtNkWK1K8JX6OXn1IU+074Xz38+5uJsA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3775.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(36756003)(2616005)(4326008)(2906002)(8936002)(83380400001)(8676002)(86362001)(31696002)(66476007)(54906003)(316002)(66556008)(110136005)(186003)(66946007)(16526019)(478600001)(31686004)(6486002)(7416002)(5660300002)(52116002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dUZ2THdRdUErcndqNDdFeDRLci9jRTV0S3FNcS84bXl3UEtVRDduUXpPaXhB?=
 =?utf-8?B?blJ5YWF0ZzlEb0VwYkFrbURLUUpLU3JOWUxRZTgzVTFrL0U3UUZNYWZUMmh0?=
 =?utf-8?B?MVlOd2REbldaZ1R3VlpiSUlqZVcwdzZMMkNiTko0L3FDcmRMSkJDRUFyeDYw?=
 =?utf-8?B?NEFxTTFvRDJhRnpoREZWRzZHUHZ1VWNIQi92WExQZFhyVVljbG11MWd5VUIy?=
 =?utf-8?B?TE5RQ3haZlFZam80NkdRbnRDbXdNUEw2dGNPRncxaWhsSFFjT0NIazgrcDQ5?=
 =?utf-8?B?dGhobzlYWDRtbElEVGFWb0dQOFZUODlRZitGVzNWUTc4b0s1Mnd2WnA5Y281?=
 =?utf-8?B?WHlyQ2tNTnZ1WndFUUdHNDJQYXp6UUIxS0dhaloxMS9ZakF5OGxqZTRKa2FP?=
 =?utf-8?B?b0wwbHc3TGs2ZHEvZ1VvRU8vQWtjK3hNdVNBbEZxdnhwWmVtd0xSQTFmNURP?=
 =?utf-8?B?TWJqd3hOVjRCdWxBRzVCY0dkWTU4U295bHRKcUJQQWlLbk0zOXM1dkxrL0ZD?=
 =?utf-8?B?blVUV0FNUHU1WHdCV1hTRUw0ZTgvM3pvNmpvNS9uU1Y2TnpSVFdJNWhDYWJJ?=
 =?utf-8?B?MGtSN05XVkV1TDlNalU0VlExNXMwY08zSmdtMUFYaER6S0RFaUpWbWpPNXFr?=
 =?utf-8?B?SjRUS3E2dXBNNHIyc2ZITy80bTVXOVdSZkx6Sll1TmVkUzFWVEQ0bkpiYndI?=
 =?utf-8?B?b2o0NXMwN0dLV3pYck5nS1R5cTlXaVB1WHZPWXZ1SVo2Rm5FY1N6THYvWW1m?=
 =?utf-8?B?c0hWQmJrdytZQ1dnRDNlVGhUV0ZtS2tubTdPRnJGdzJadkRwaVc5bC9YKy9h?=
 =?utf-8?B?dzlQY1N5WjFEV2FocUVENmNIa3hCdVo4VWV3VEpTa0xpdG1MNEVvRXdHNHAx?=
 =?utf-8?B?V1g2OHRjTnM4QTM3WVdPMC9UeHpIMGVzSzY3TXFWeGRzL1puUCtrTmZEenJE?=
 =?utf-8?B?aGpCa2RUWXJvUjRCRVpGd1dXRWZqanlxcFdUdnRNNGpKdXI0NnpXemsybWxm?=
 =?utf-8?B?L2s2TTRvZnhRVk00NUlYWGZ5RytIMmxSNGEvcHdSOElhMVpsMWNQbnlpenpu?=
 =?utf-8?B?WEhpRVQxZFRzZ3BPb3czcEw2ZDhtbDBCVVFWV3F6VGdWS0JPWHp4VW1iYVFz?=
 =?utf-8?B?bDFFUW1LbGt1NzRpRi9UOTNLSnA0TFVJcEZnaXFGWW1jNktjT2x1LzlCRWtV?=
 =?utf-8?B?M0p4OFlaZm5HK2k0ZlpYYURGWFFubVA2dHYrWnVhK29pNXJyeHBZaTk5dFU4?=
 =?utf-8?B?MXVvZFBmYkJPK0p1MlB4NldHTkNkV2FzYlVJL1h2eXAycFdvNzRFSm8zektw?=
 =?utf-8?B?QTRzTE51d3k4dWM1RzdVaGhpY1JXSFBaSVBFNTQ0UU1RSDMrNDZhS1FVRHNP?=
 =?utf-8?B?U1dldTB3Zy9QWXZFdVpjY215bHNvakNvUFo1RkJRWnhZZEU3RmhnbGo3NGls?=
 =?utf-8?B?MXZ4WFBSL1RHOXd5WHJWT1grd2xOdnR1cHlGaFdmemh1Ujh4dlRlSS8vOFV3?=
 =?utf-8?B?UUxFMlBSVEtmNzFXK1IrRUtaNHc0V0hIVUFpK0x3dERWTk9hZTUvVG1mRTkv?=
 =?utf-8?B?TTNjMUNxK01SMVhkZVZ2NzVFcW9mT1JISEExN0xjMmI2SXNFMUR6alJrVExO?=
 =?utf-8?B?WkpDbVROK25hYmVISXhrM1Y3eFJuWGZDUXNOMHBuRGpCNnVxdC9rVGpqRHVU?=
 =?utf-8?B?Mkp6aUY1OHhwZ0NZNXdYRVR6K0hIY3hrSzJRVnpzYTUydjB1OWxFZFZNeXBo?=
 =?utf-8?B?amwySXVxYVpYSzlHVVRHaGtyN3FuWEMzTXlPd2RWelhWVDc4LzFFUmZVQWNv?=
 =?utf-8?B?MExZaUlZWnhmVXRZQUtjTndxbW5QYlpwVU5wanJiVGRHSGZHWnlLbHFObC83?=
 =?utf-8?Q?1SRhHdvw/hDaY?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1077066c-90f1-4971-9421-08d8e52bb272
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3775.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2021 07:51:51.9659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y663TB2+qZiOkNKbbAYco9e72krETeqX0HwJbVMDi/m4/Yadu4yBSJo+kaESdvSW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3696
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] dma-buf: Require VM_PFNMAP vma for
 mmap
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAxMS4wMy4yMSB1bSAxNDoxNyBzY2hyaWViIERhbmllbCBWZXR0ZXI6Cj4gW1NOSVBdCj4+
Pj4gU28gSSBkaWQgdGhlIGZvbGxvd2luZyBxdWljayBleHBlcmltZW50IG9uIHZtd2dmeCwgYW5k
IGl0IHR1cm5zIG91dCB0aGF0Cj4+Pj4gd2l0aCBpdCwKPj4+PiBmYXN0IGd1cCBuZXZlciBzdWNj
ZWVkcy4gV2l0aG91dCB0aGUgInwgUEZOX01BUCIsIGl0IHR5cGljYWxseSBzdWNjZWVkcwo+Pj4+
Cj4+Pj4gSSBzaG91bGQgcHJvYmFibHkgY3JhZnQgYW4gUkZDIGZvcm1hbGl6aW5nIHRoaXMuCj4+
PiBZZWFoIEkgdGhpbmsgdGhhdCB3b3VsZCBiZSBnb29kLiBNYXliZSBldmVuIG1vcmUgZm9ybWFs
aXplZCBpZiB3ZSBhbHNvCj4+PiBzd2l0Y2ggb3ZlciB0byBWTV9QRk5NQVAsIHNpbmNlIGFmYWl1
aSB0aGVzZSBwdGUgZmxhZ3MgaGVyZSBvbmx5IHN0b3AgdGhlCj4+PiBmYXN0IGd1cCBwYXRoLiBB
bmQgc2xvdyBndXAgY2FuIHN0aWxsIHBlYWsgdGhyb3VnaCBWTV9NSVhFRE1BUC4gT3IKPj4+IHNv
bWV0aGluZyBsaWtlIHRoYXQuCj4+Pgo+Pj4gT3RvaCB5b3VyIGRlc2NyaXB0aW9uIG9mIHdoZW4g
aXQgb25seSBzb21ldGltZXMgc3VjY2VlZHMgd291bGQgaW5kaWNhdGUgbXkKPj4+IHVuZGVyc3Rh
bmRpbmcgb2YgVk1fUEZOTUFQIHZzIFZNX01JWEVETUFQIGlzIHdyb25nIGhlcmUuCj4+IE15IHVu
ZGVyc3RhbmRpbmcgZnJvbSByZWFkaW5nIHRoZSB2bWZfaW5zZXJ0X21peGVkKCkgY29kZSBpcyB0
aGF0IGlmZgo+PiB0aGUgYXJjaCBoYXMgcHRlX3NwZWNpYWwoKSwgVk1fTUlYRURNQVAgc2hvdWxk
IGJlIGhhcm1sZXNzLiBCdXQgdGhhdCdzCj4+IG5vdCBjb25zaXN0ZW50IHdpdGggdGhlIHZtX25v
cm1hbF9wYWdlKCkgZG9jLiBGb3IgYXJjaGl0ZWN0dXJlcyB3aXRob3V0Cj4+IHB0ZV9zcGVjaWFs
LCBWTV9QRk5NQVAgbXVzdCBiZSB1c2VkLCBhbmQgdGhlbiB3ZSBtdXN0IGFsc28gYmxvY2sgQ09X
Cj4+IG1hcHBpbmdzLgo+Pgo+PiBJZiB3ZSBjYW4gZ2V0IHNvbWVvbmUgY2FuIGNvbW1pdCB0byB2
ZXJpZnkgdGhhdCB0aGUgcG90ZW50aWFsIFBBVCBXQwo+PiBwZXJmb3JtYW5jZSBpc3N1ZSBpcyBn
b25lIHdpdGggUEZOTUFQLCBJIGNhbiBwdXQgdG9nZXRoZXIgYSBzZXJpZXMgd2l0aAo+PiB0aGF0
IGluY2x1ZGVkLgo+IElpcmMgd2hlbiBJIGNoZWNrZWQgdGhlcmUncyBub3QgbXVjaCBhcmNocyB3
aXRob3V0IHB0ZV9zcGVjaWFsLCBzbyBJCj4gZ3Vlc3MgdGhhdCdzIHdoeSB3ZSBsdWNrIG91dC4g
SG9wZWZ1bGx5LgoKSSBzdGlsbCBuZWVkIHRvIHJlYWQgdXAgYSBiaXQgb24gd2hhdCB5b3UgZ3V5
cyBhcmUgZGlzY3Vzc2luZyBoZXJlLCBidXQgCml0IHN0YXJ0cyB0byBtYWtlIGEgcGljdHVyZS4g
RXNwZWNpYWxseSBteSB1bmRlcnN0YW5kaW5nIG9mIHdoYXQgClZNX01JWEVETUFQIG1lYW5zIHNl
ZW1zIHRvIGhhdmUgYmVlbiBzbGlnaHRseSBvZi4KCkkgd291bGQgc2F5IGp1c3QgZ28gYWhlYWQg
YW5kIHByb3ZpZGUgcGF0Y2hlcyB0byBhbHdheXMgdXNlIFZNX1BGTk1BUCBpbiAKVFRNIGFuZCB3
ZSBjYW4gdGVzdCBpdCBhbmQgc2VlIGlmIHRoZXJlIGFyZSBzdGlsbCBzb21lIGlzc3Vlcy4KCj4+
IEFzIGZvciBleGlzdGluZyB1c2Vyc3BhY2UgdXNpbmcgQ09XIFRUTSBtYXBwaW5ncywgSSBvbmNl
IGhhZCBhIGNvdXBsZSBvZgo+PiB0ZXN0IGNhc2VzIHRvIHZlcmlmeSB0aGF0IGl0IGFjdHVhbGx5
IHdvcmtlZCwgaW4gcGFydGljdWxhciB0b2dldGhlcgo+PiB3aXRoIGh1Z2UgUE1EcyBhbmQgUFVE
cyB3aGVyZSBicmVha2luZyBDT1cgd291bGQgaW1wbHkgc3BsaXR0aW5nIHRob3NlLAo+PiBidXQg
SSBjYW4ndCB0aGluayBvZiBhbnl0aGluZyBlbHNlIGFjdHVhbGx5IHdhbnRpbmcgdG8gZG8gdGhh
dCBvdGhlcgo+PiB0aGFuIGJ5IG1pc3Rha2UuCj4gWWVhaCBkaXNhbGxvd2luZyBNQVBfUFJJVkFU
RSBtYXBwaW5ncyB3b3VsZCBiZSBhbm90aGVyIGdvb2QgdGhpbmcgdG8KPiBsb2NrIGRvd24uIFJl
YWxseSBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZS4KCkNvbXBsZXRlbHkgYWdyZWUuIFRoYXQgc291
bmRzIGxpa2Ugc29tZXRoaW5nIHdlIHNob3VsZCB0cnkgdG8gYXZvaWQuCgpSZWdhcmRzLApDaHJp
c3RpYW4uCgo+IC1EYW5pZWwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
