Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A51304881
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 20:28:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 506A466737
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 19:28:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 427376673A; Tue, 26 Jan 2021 19:28:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABB63619D7;
	Tue, 26 Jan 2021 19:27:48 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DDB9666743
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:27:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CD3166673A; Tue, 26 Jan 2021 19:27:42 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
 [209.85.214.175])
 by lists.linaro.org (Postfix) with ESMTPS id 4A56666743
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:27:40 +0000 (UTC)
Received: by mail-pl1-f175.google.com with SMTP id d4so10334926plh.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 11:27:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=yle40tWleCzEixF2mwBGtJ3uB7QHbvhm1AXLk8kwIl8=;
 b=B0GPFQ/A7KaXppUMzCMUNScE6O6vsg8cyoaH5TqIaFjLQPi15t/89ne6NEetvAsKXq
 qfUy0t7oV/tLEEHHlnI230cdBjSkzxcLiDUwP7o6su4vyfejeqtGKlr+6TPngRYi15up
 Q20H65l/rwxC/7HNE5jJJ/aNSrabhNjh119MPJi00UXEsg/8POE14qJZgfJy3yBditT6
 toVb4HODpevD9bbypyr0yHoJuUTEDfw9P3mOJR3W9jAmB3dO6XKhpP1FCLd44aBLazZf
 YtePZ4KFOE51ol3K8+77rJXwuOVabf0cceotQsQIIwJds/TkMRr7/gmTTif1zBwFZCAg
 cHow==
X-Gm-Message-State: AOAM531XyeGuEieTPJfhmdq/xl+/C/mPphwzPb9DaRL2n8oXUCxNWnLj
 +M/Zw5CeaEJqnJoypDw2fto=
X-Google-Smtp-Source: ABdhPJy5XocxQ8cgnEM5TwBXCFWhCBkaorP2EB5WKTN9SCc+sxCX2AoMx3hY+M6rFYi7ZiCnMRZYdg==
X-Received: by 2002:a17:90a:5793:: with SMTP id
 g19mr1418129pji.32.1611689259525; 
 Tue, 26 Jan 2021 11:27:39 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id w184sm20605882pgb.71.2021.01.26.11.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 11:27:38 -0800 (PST)
Date: Tue, 26 Jan 2021 11:27:35 -0800
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <YBBtJ7zMrkdcNMuV@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-5-minchan@kernel.org>
 <20210126070744.GA1244507@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126070744.GA1244507@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, mhocko@suse.com, linux-media@vger.kernel.org,
 david@redhat.com, LKML <linux-kernel@vger.kernel.org>,
 linaro-mm-sig@lists.linaro.org, linux-mm <linux-mm@kvack.org>,
 robh+dt@kernel.org, john.stultz@linaro.org, joaodias@google.com,
 hridya@google.com, Andrew Morton <akpm@linux-foundation.org>,
 pullip.cho@samsung.com, surenb@google.com, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDc6MDc6NDRBTSArMDAwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gPiArY29uZmlnIERNQUJVRl9IRUFQU19DSFVOSwo+ID4gKwlib29sICJETUEt
QlVGIENIVU5LIEhlYXAiCj4gPiArCWRlcGVuZHMgb24gRE1BQlVGX0hFQVBTICYmIERNQV9DTUEK
PiA+ICsJaGVscAo+ID4gKwkgIENob29zZSB0aGlzIG9wdGlvbiB0byBlbmFibGUgZG1hLWJ1ZiBD
SFVOSyBoZWFwLiBUaGlzIGhlYXAgaXMgYmFja2VkCj4gPiArCSAgYnkgdGhlIENvbnRpZ3VvdXMg
TWVtb3J5IEFsbG9jYXRvciAoQ01BKSBhbmQgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQKPiA+
ICsJICBhcmUgYXJyYW5nZWQgaW50byBhIGxpc3Qgb2YgZml4ZWQgc2l6ZSBjaHVua3MgdGFrZW4g
ZnJvbSBDTUEuCj4gCj4gT3Zlcmx5IGxvbmcgbGluZSwgd2hpY2ggaW4gdGV4dCBmbG93aW5nIHRl
eHQgaXMgcmVhbGx5LCByZWFsbHkgYW5ub3lpbmcuCj4gCj4gTWFueSBtb3JlIGxhdGVyLiAgUmVt
ZW1iZXIgdGhhdCA+IDgwIGNoYXJzIGFyZSBvbmx5IGFsbG93ZWQgaWYgdGhleQo+IHNpZ25pZmlj
YW50bHkgaW1wcm92ZSByZWFkYWJpbGl0eS4gIAoKTGV0IG1lIG1ha2UgaXQgc2hvcnRlciB0aGFu
IDgwIGNoYXJzIGluIG5leHQgcmV2aXNpb24uClRoYW5rcyBmb3IgdGhlIHJlaXZldywgQ2hyaXN0
b3BoLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
