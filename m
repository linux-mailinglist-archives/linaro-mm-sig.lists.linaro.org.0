Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 760A1108ABB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Nov 2019 10:23:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E60661885
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Nov 2019 09:23:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1389D61963; Mon, 25 Nov 2019 09:23:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1478561951;
	Mon, 25 Nov 2019 09:22:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3AA97609C3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Nov 2019 09:22:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2D2E861951; Mon, 25 Nov 2019 09:22:35 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id F3FAE609C3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Nov 2019 09:22:33 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id b18so16980140wrj.8
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Nov 2019 01:22:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=QiRSkNH09nDsKaV88CvJJn/s44TY85sod7XlDRyFXvQ=;
 b=rxAHRPDgpsBAm4txx91nv5NE0v4Yr4TBQ5QCaakJGqFKq0LxH0FV0BwbL8aG3lJdJG
 DlZsNzUnqhKGKFp7I1pIWm8EokJAcvQvGWukN6Hlsa04hM00oWwoNIhPNiTttGxiul6J
 GSgAwSAcXBkP3NXMZ6hjgaTs6Sncd3rqMtOwK6SIMd/62kjbJog8G1pDb6suSawbTb8T
 GoKRbFDqahhDnmiQ2cl3LfjYLLLoJGI96RToaPZz30S8aEk9ZEyrlQJPANw1+aM4VSSv
 XIAgD92UsvC2Giqp6jFsKWCtDRJvGSdyAKOYrwUxifb0C1j/0kmIy2WGstN1QcZDq2/F
 IHLg==
X-Gm-Message-State: APjAAAUBwJ5Tseqom9wfxevwPn49EI7iFOTGisFrKwIBiHyKRrA4F38l
 3I2OM6mqD9hPJOhaLsUs5RmdxA==
X-Google-Smtp-Source: APXvYqz5j9Sk1KwP87Rie41BfxNaFxInLur5nJHL6zE3OzpkLJ4XRYQBBQiJWf93BsiUzqYndQdomA==
X-Received: by 2002:adf:da52:: with SMTP id r18mr30554159wrl.167.1574673752986; 
 Mon, 25 Nov 2019 01:22:32 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id l4sm7659664wme.4.2019.11.25.01.22.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 01:22:32 -0800 (PST)
Date: Mon, 25 Nov 2019 10:22:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Message-ID: <20191125092230.GJ29965@phenom.ffwll.local>
Mail-Followup-To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Gustavo Padovan <gustavo@padovan.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, emamd001@umn.edu
References: <20191122220957.30427-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122220957.30427-1-navid.emamdoost@gmail.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Gustavo Padovan <gustavo@padovan.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 emamd001@umn.edu, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix memory leak in
	sync_file_merge()
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

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDQ6MDk6NTVQTSAtMDYwMCwgTmF2aWQgRW1hbWRvb3N0
IHdyb3RlOgo+IEluIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBzeW5jX2ZpbGVfbWVyZ2UoKSB0aGUg
YWxsb2NhdGVkIHN5bmNfZmlsZSBpcwo+IGxlYWtlZCBpZiBudW1iZXIgb2YgZmVuY2VzIG92ZXJm
bG93cy4gUmVsZWFzZSBzeW5jX2ZpbGUgYnkgZ290byBlcnIuCj4gCj4gRml4ZXM6IGEwMmI5ZGM5
MGQ4NCAoImRtYS1idWYvc3luY19maWxlOiByZWZhY3RvciBmZW5jZSBzdG9yYWdlIGluIHN0cnVj
dCBzeW5jX2ZpbGUiKQo+IFNpZ25lZC1vZmYtYnk6IE5hdmlkIEVtYW1kb29zdCA8bmF2aWQuZW1h
bWRvb3N0QGdtYWlsLmNvbT4KClRoYW5rcyBmb3IgeW91ciBwYXRjaCwgYXBwbGllZCB3aXRoIGEg
Y2M6c3RhYmxlLgotRGFuaWVsCgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMgYi9kcml2ZXJzL2Rt
YS1idWYvc3luY19maWxlLmMKPiBpbmRleCAyNWM1YzA3MTY0NWIuLjkxMTg1ZGI5YTk1MiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3luY19maWxlLmMKPiArKysgYi9kcml2ZXJzL2Rt
YS1idWYvc3luY19maWxlLmMKPiBAQCAtMjIxLDcgKzIyMSw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3lu
Y19maWxlICpzeW5jX2ZpbGVfbWVyZ2UoY29uc3QgY2hhciAqbmFtZSwgc3RydWN0IHN5bmNfZmls
ZSAqYSwKPiAgCWFfZmVuY2VzID0gZ2V0X2ZlbmNlcyhhLCAmYV9udW1fZmVuY2VzKTsKPiAgCWJf
ZmVuY2VzID0gZ2V0X2ZlbmNlcyhiLCAmYl9udW1fZmVuY2VzKTsKPiAgCWlmIChhX251bV9mZW5j
ZXMgPiBJTlRfTUFYIC0gYl9udW1fZmVuY2VzKQo+IC0JCXJldHVybiBOVUxMOwo+ICsJCWdvdG8g
ZXJyOwo+ICAKPiAgCW51bV9mZW5jZXMgPSBhX251bV9mZW5jZXMgKyBiX251bV9mZW5jZXM7Cj4g
IAo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIElu
dGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
