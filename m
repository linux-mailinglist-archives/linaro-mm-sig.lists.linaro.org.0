Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 418B02FBBA0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 16:52:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5B6861820
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Jan 2021 15:52:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D7B5161831; Tue, 19 Jan 2021 15:52:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCDFB607DB;
	Tue, 19 Jan 2021 15:51:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 54DED60628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 15:51:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3DC94607DB; Tue, 19 Jan 2021 15:51:57 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by lists.linaro.org (Postfix) with ESMTPS id BFCE260628
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 15:51:55 +0000 (UTC)
Received: by mail-pg1-f181.google.com with SMTP id 30so13191257pgr.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Jan 2021 07:51:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=jGeJYEKHSWeoJcj5qAEZzduzYII6G03XjO2vsKZy9EA=;
 b=J58Qta1gEszP3Mk7e9yIlv/p6UobgypOv3wgs4DTG1JZmO7BbsQ2rL3YNRad3LkMA6
 5odGrz+5vIKS564F60MzgnnD89PAm7DHtMSkMToKgqH4q3HaUZfCeG02wC3bzm4temvd
 Ze5IpYSBaX5m7zzim0NfpBI+bUa7K4NygTwR1zcWdwyXib7OL7xcPVNdwg3nP0txI3iT
 Ht54bVDkgh4r7Yz55CufZsg3ykXkHYe+n5oUoVPr0PLRmnQWHSm/HeRpt+py7xcgmFLu
 T5D6nX1P/L0nNPwQ6oapXKUdYhu23sU7fy67Ga+vFu7yoRIE+stgbubf0sXKTx+W/8fJ
 3QNQ==
X-Gm-Message-State: AOAM532HfuNUoGT8yRjpaqp2N9ni+h9LoTnTm7vI3LXvXsLChszp/esy
 4qIijbynKnW3RHGqLyFIKhk=
X-Google-Smtp-Source: ABdhPJyIr1aZov1YBsbDAEgjuC6i0+b3UdroSmkUYkfVGPf5O/G+0lPpjcSTJae7Ou5RcNlfOjI74Q==
X-Received: by 2002:a63:605:: with SMTP id 5mr4916819pgg.144.1611071514834;
 Tue, 19 Jan 2021 07:51:54 -0800 (PST)
Received: from google.com ([2620:15c:211:201:8d1f:e7:cd3c:db2f])
 by smtp.gmail.com with ESMTPSA id a204sm5841762pfa.49.2021.01.19.07.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Jan 2021 07:51:53 -0800 (PST)
Date: Tue, 19 Jan 2021 07:51:51 -0800
From: Minchan Kim <minchan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <YAcAF2FUhaOIDY3N@google.com>
References: <20210113012143.1201105-1-minchan@kernel.org>
 <20210113012143.1201105-5-minchan@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113012143.1201105-5-minchan@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v3 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMDU6MjE6NDNQTSAtMDgwMCwgTWluY2hhbiBLaW0gd3Jv
dGU6Cj4gRnJvbTogSHllc29vIFl1IDxoeWVzb28ueXVAc2Ftc3VuZy5jb20+Cj4gCj4gVGhpcyBw
YXRjaCBzdXBwb3J0cyBjaHVuayBoZWFwIHRoYXQgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQK
PiBhcnJhbmdlZCBpbnRvIGEgbGlzdCBhIGZpeGVkIHNpemUgY2h1bmtzIHRha2VuIGZyb20gQ01B
Lgo+IAo+IFRoZSBjaHVuayBoZWFwIGRyaXZlciBpcyBib3VuZCBkaXJlY3RseSB0byBhIHJlc2Vy
dmVkX21lbW9yeQo+IG5vZGUgYnkgZm9sbG93aW5nIFJvYiBIZXJyaW5nJ3Mgc3VnZ2VzdGlvbiBp
biBbMV0uCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTEwMjUyMjUw
MDkuNTAzMDUtMi1qb2huLnN0dWx0ekBsaW5hcm8ub3JnL1QvI20zZGM2M2FjZDMzZmVhMjY5YTU4
NGY0M2JiNzk5YTg3NmYwYjJiNDVkCj4gCj4gU2lnbmVkLW9mZi1ieTogSHllc29vIFl1IDxoeWVz
b28ueXVAc2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSHJpZHlhIFZhbHNhcmFqdSA8aHJp
ZHlhQGdvb2dsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWluY2hhbiBLaW0gPG1pbmNoYW5Aa2Vy
bmVsLm9yZz4KCkRNQUJVRiBmb2xrcywKCkl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBndXlzIGdp
dmUgYW55IGNvbW1lbnRzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
