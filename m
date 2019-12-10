Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D020118501
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2019 11:27:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36C39617D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Dec 2019 10:27:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2AE39617EA; Tue, 10 Dec 2019 10:27:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFB4B617C9;
	Tue, 10 Dec 2019 10:26:41 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E0B6761791
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2019 10:26:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C3ADF617C9; Tue, 10 Dec 2019 10:26:39 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 7451661791
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2019 10:26:38 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c14so19369562wrn.7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Dec 2019 02:26:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=97xF32EIBIFJNHB3mGMcUkFGhGxvatxTdrICNm/qrcc=;
 b=cJgJ/O4grYCsKvqcA9Hz+2UTAq6bMr3sbejajPt7zmKJS1SVxVHQf6/JgiEXqDBBNm
 qnpOWTdRbcLF1mclGQrAuZmOIGOTNBb5m5BhyJbLRmH0uvoNK+nqT3FYRPuvB3FNK8op
 FpkSb/BOeYlUcat23oYzgfUxyU8AZGM8teYUXrS+Xm3mx2OvcjvubZ1wQiXzxoKCkuzC
 IIQnwol+Trs8bcUDlSWZqQyHFgrg52IBmkv6G11wMeDOn3i9tFryN7DwmoLH5+yZv9l0
 NMq9BO0CmHSF3GDkf0f/pXORq4LXu2uXsR76tUAAvicxSzw5rvl+xoWNoJG6MpDA1oXp
 Fn5g==
X-Gm-Message-State: APjAAAXBex8VSXRdSNeSNWmQUCmhLE4jMl82zlFOmqjpUGk0338KFNo7
 ec+vfNz4Earhn9t1BNHo66wgFzrtDto=
X-Google-Smtp-Source: APXvYqyisjRA8OXYGasr47OpUHsgLNSuGGT4qkK6eh9dxEHb8YE7Cub1BSpya6wB8Hb82X3rE8xaZA==
X-Received: by 2002:adf:e609:: with SMTP id p9mr2220769wrm.397.1575973597557; 
 Tue, 10 Dec 2019 02:26:37 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:564b:0:7567:bb67:3d7f:f863])
 by smtp.gmail.com with ESMTPSA id m3sm2748694wrs.53.2019.12.10.02.26.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 02:26:36 -0800 (PST)
Date: Tue, 10 Dec 2019 11:26:34 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thierry Reding <thierry.reding@gmail.com>
Message-ID: <20191210102634.GR624164@phenom.ffwll.local>
References: <20191204215105.874074-1-daniel.vetter@ffwll.ch>
 <20191205155111.GA1914185@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205155111.GA1914185@ulmo>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] MAINTAINERS: Match on
	dma_buf|fence|resv anywhere
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

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDQ6NTE6MTFQTSArMDEwMCwgVGhpZXJyeSBSZWRpbmcg
d3JvdGU6Cj4gT24gV2VkLCBEZWMgMDQsIDIwMTkgYXQgMTA6NTE6MDVQTSArMDEwMCwgRGFuaWVs
IFZldHRlciB3cm90ZToKPiA+IEkndmUgc3BlbnQgYSBiaXQgdG9vIG11Y2ggdGltZSByZXZpZXdp
bmcgYWxsIGtpbmRzIG9mIHVzZXJzIGFsbCBvdmVyCj4gPiB0aGUga2VybmVsIGZvciB0aGlzIGJ1
ZmZlciBzaGFyaW5nIGluZnJhc3RydWN0dXJlLiBBbmQgc29tZSBvZiBpdCBpcwo+ID4gYXQgbGVh
c3QgcXVlc3Rpb25hYmxlLgo+ID4gCj4gPiBNYWtlIHN1cmUgd2UgYXQgbGVhc3Qgc2VlIHdoZW4g
dGhpcyBzdHVmZiBmbGllcyBieS4KPiA+IAo+ID4gQWNrZWQtYnk6IERhdmUgQWlybGllIDxhaXJs
aWVkQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAaW50ZWwuY29tPgo+ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFy
by5vcmc+Cj4gPiBDYzogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK3NhbXN1bmdAa2Vy
bmVsLm9yZz4KPiA+IENjOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgo+ID4gQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiBDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCj4gPiAtLS0KPiA+ICBNQUlOVEFJTkVSUyB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+IAo+IEFja2VkLWJ5OiBUaGllcnJ5IFJlZGluZyA8dHJlZGluZ0Bu
dmlkaWEuY29tPgoKUHVzaGVkIHRvIGRybS1taXNjLWZpeGVzLgotRGFuaWVsCi0tIApEYW5pZWwg
VmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5m
ZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
