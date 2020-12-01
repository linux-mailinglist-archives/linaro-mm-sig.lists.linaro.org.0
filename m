Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2A52CB084
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 23:56:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EE9CA6654F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Dec 2020 22:56:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E0AB766539; Tue,  1 Dec 2020 22:56:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15EFF65FCE;
	Tue,  1 Dec 2020 22:56:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id DE9B960BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 22:55:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C312C65FCE; Tue,  1 Dec 2020 22:55:59 +0000 (UTC)
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by lists.linaro.org (Postfix) with ESMTPS id C888F60BE0
 for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Dec 2020 22:55:58 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id v1so2266627pjr.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Dec 2020 14:55:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=xF9wBhJ/ruSDlA6Srxw1jVi0WbujgXsPSvslQZosYxU=;
 b=b+WjBv4/z/tjbyubu0lpo5Su2OV1VDmd1VmfAHI2/tOkBmOhDRk9fpGjtFRw0gzhcr
 JsHggK2W+l5Wbei3iiqZugzbTo1C4rZ14XBRmMixIpSmwOSoRC/B+IGrbih/n+iWH6Lr
 DGzQLUEWDDI7Al/RjUAX7JXvmb7z2u3l/dqNxybgTFNDeZs4BgIsm34hMRflSCDJVFBS
 1xqlhZSr0baxF19YugLoqUrhqJK6J+HPeiWvmwype7nSgWS60LbHiVioLYWBsiBmQDw+
 hYM5F5hrg0Yqhv1ym9HI9YC+FCG4bLyB1ebW/rnn1DB2VQTXusRiksVE6EuvTTuPdUvk
 heZA==
X-Gm-Message-State: AOAM530TQJF4AluAwOwb7Wljd8kLKVYmx1FMdcS9kGlC1OksBSUnh8yN
 j4wTx88yTI/PdeLFSNF6i2U=
X-Google-Smtp-Source: ABdhPJy3f2TRP3AqnHaRLUzLECJ1htGQGvX3mrji3EHlmRSp8/8UXe2pBn1MoP8oA9an04VIieWPDQ==
X-Received: by 2002:a17:90a:d308:: with SMTP id
 p8mr5051014pju.110.1606863357919; 
 Tue, 01 Dec 2020 14:55:57 -0800 (PST)
Received: from google.com ([2620:15c:211:201:7220:84ff:fe09:5e58])
 by smtp.gmail.com with ESMTPSA id v196sm758721pfc.34.2020.12.01.14.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 14:55:56 -0800 (PST)
Date: Tue, 1 Dec 2020 14:55:54 -0800
From: Minchan Kim <minchan@kernel.org>
To: John Stultz <john.stultz@linaro.org>
Message-ID: <20201201225554.GA3968963@google.com>
References: <20201201175144.3996569-1-minchan@kernel.org>
 <20201201175144.3996569-5-minchan@kernel.org>
 <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLXFeUStaJ8Mtm5v3kSxmeqnjzLTsyathkrKF0ke3fYGiQ@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 linux-mm <linux-mm@kvack.org>, Christian Koenig <christian.koenig@amd.com>,
 John Dias <joaodias@google.com>, Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 KyongHo Cho <pullip.cho@samsung.com>, Suren Baghdasaryan <surenb@google.com>,
 iamjoonsoo.kim@lge.com, vbabka@suse.cz, Hyesoo Yu <hyesoo.yu@samsung.com>
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] dma-buf: heaps: add chunk heap
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

T24gVHVlLCBEZWMgMDEsIDIwMjAgYXQgMTE6NDg6MTVBTSAtMDgwMCwgSm9obiBTdHVsdHogd3Jv
dGU6Cj4gT24gVHVlLCBEZWMgMSwgMjAyMCBhdCA5OjUxIEFNIE1pbmNoYW4gS2ltIDxtaW5jaGFu
QGtlcm5lbC5vcmc+IHdyb3RlOgo+IAo+IFRoYW5rcyBmb3IgcmV3b3JraW5nIGFuZCByZXNlbmRp
bmcgdGhpcyEKPiAKPiAuLi4KPiA+ICtzdGF0aWMgaW50IF9faW5pdCBjaHVua19oZWFwX2luaXQo
dm9pZCkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBjbWEgKmRlZmF1bHRfY21hID0gZGV2X2dl
dF9jbWFfYXJlYShOVUxMKTsKPiA+ICsgICAgICAgc3RydWN0IGRtYV9oZWFwX2V4cG9ydF9pbmZv
IGV4cF9pbmZvOwo+ID4gKyAgICAgICBzdHJ1Y3QgY2h1bmtfaGVhcCAqY2h1bmtfaGVhcDsKPiA+
ICsKPiA+ICsgICAgICAgaWYgKCFkZWZhdWx0X2NtYSkKPiA+ICsgICAgICAgICAgICAgICByZXR1
cm4gMDsKPiA+ICsKPiA+ICsgICAgICAgY2h1bmtfaGVhcCA9IGt6YWxsb2Moc2l6ZW9mKCpjaHVu
a19oZWFwKSwgR0ZQX0tFUk5FTCk7Cj4gPiArICAgICAgIGlmICghY2h1bmtfaGVhcCkKPiA+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiA+ICsKPiA+ICsgICAgICAgY2h1bmtfaGVh
cC0+b3JkZXIgPSBDSFVOS19IRUFQX09SREVSOwo+ID4gKyAgICAgICBjaHVua19oZWFwLT5jbWEg
PSBkZWZhdWx0X2NtYTsKPiA+ICsKPiA+ICsgICAgICAgZXhwX2luZm8ubmFtZSA9IGNtYV9nZXRf
bmFtZShkZWZhdWx0X2NtYSk7Cj4gCj4gU28sIHRoaXMgd291bGQgY3JlYXRlIGEgY2h1bmsgaGVh
cCBuYW1lIHdpdGggdGhlIGRlZmF1bHQgQ01BIG5hbWUsCj4gd2hpY2ggd291bGQgYmUgaW5kaXN0
aW5ndWlzaGFibGUgZnJvbSB0aGUgaGVhcCBuYW1lIHVzZWQgZm9yIHRoZSBwbGFpbgo+IENNQSBo
ZWFwLgo+IAo+IFByb2JhYmx5IGEgZ29vZCBpZGVhIHRvIHByZWZpeCBpdCB3aXRoICJjaHVuay0i
IHNvIHRoZSBoZWFwIGRldmljZQo+IG5hbWVzIGFyZSB1bmlxdWU/CgpUaGF0IHdpbGwgZ2l2ZSBh
biBpbXByZXNzaW9uIHRvIHVzZXIgdGhhdCB0aGV5IGFyZSB1c2luZyBkaWZmZXJlbnQgQ01BCmFy
ZWEgYnV0IHRoYXQncyBub3QgdHJ1ZS4gSU1ITywgbGV0J3MgYmUgaG9uZXN0IGF0IHRoaXMgbW9t
ZW50LgpXaGVuIERUIGJpbmRpbmcgd2l0aCBDTUEgaXMgbGFuZGluZyBkb3duLCBpdCBjb3VsZCBw
cm92aWRlIHVuaXF1ZSBuYW1lLgpUaG91Z2h0PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
