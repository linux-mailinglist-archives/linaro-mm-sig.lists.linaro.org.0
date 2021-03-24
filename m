Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6B034753F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Mar 2021 11:02:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9B985666FC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Mar 2021 10:02:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8C7146171E; Wed, 24 Mar 2021 10:02:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAA9866034;
	Wed, 24 Mar 2021 10:01:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2A74A6171E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Mar 2021 10:01:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0AD9466034; Wed, 24 Mar 2021 10:01:48 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by lists.linaro.org (Postfix) with ESMTPS id D7D2F6171E
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Mar 2021 10:01:46 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id
 d8-20020a1c1d080000b029010f15546281so803602wmd.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Mar 2021 03:01:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=Rx9Rrt/z2zFgoBGaEEFsYywvK+LMAW4MrtxKYsFOxi8=;
 b=FC35Fh2zuWPTlVVnMwNX2xY0KvEI6ypsbcb1gS5K9a2qjB25B3+8U0+vpMzbmDknD1
 337sBEz7+VC5vZ+46lmPm8wLyaLC/XpfXq29LbmTJcDnjF0IVP+jEzoPlq2D4XZDLrAD
 4gbQ3uSck7zxXMhvpnV0OFo/kHB/qw8tCH98cUNkM4XtOWwU4gtsw4aXfDOqOg6mqO96
 qADOfd1Sl+VIL4toz3yF4JKyZQjhmPks5G3wd96mLBH+5SoRk2dqrKatvBvzL827c5d3
 0CwnTglpnyunYN2V6qGZ2P27jekc1vzuVCLIbhWMSWoqBgyor411DvNd53HluQOYjoeN
 6XLw==
X-Gm-Message-State: AOAM532qRGNgdOKeTOeXNvckQsEsy0BEEQBxBPJLq3mOTj8wJVSXgNhK
 pXf0Uj5orOeoG75yzI3n8Mz6KQ==
X-Google-Smtp-Source: ABdhPJzZO9UI2vZj6xofrTq7y71eZw5LhOLy8ME2YPH+gQPzgAUK1BFVHzywoWotW3V4Wde3lxsOXQ==
X-Received: by 2002:a7b:c0d1:: with SMTP id s17mr2074690wmh.153.1616580105822; 
 Wed, 24 Mar 2021 03:01:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e13sm2443665wrg.72.2021.03.24.03.01.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 03:01:45 -0700 (PDT)
Date: Wed, 24 Mar 2021 11:01:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Liam Howlett <liam.howlett@oracle.com>
Message-ID: <YFsOB5fWBJSxo03E@phenom.ffwll.local>
Mail-Followup-To: Liam Howlett <liam.howlett@oracle.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
References: <20210323134208.3077275-1-Liam.Howlett@Oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323134208.3077275-1-Liam.Howlett@Oracle.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] i915_vma: Rename vma_lookup to
	i915_vma_lookup
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

T24gVHVlLCBNYXIgMjMsIDIwMjEgYXQgMDE6NDI6MjFQTSArMDAwMCwgTGlhbSBIb3dsZXR0IHdy
b3RlOgo+IFVzZSBpOTE1IHByZWZpeCB0byBhdm9pZCBuYW1lIGNvbGxpc2lvbiB3aXRoIGZ1dHVy
ZSB2bWFfbG9va3VwKCkgaW4gbW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogTGlhbSBSLiBIb3dsZXR0
IDxMaWFtLkhvd2xldHRAT3JhY2xlLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBXaWxjb3gg
KE9yYWNsZSkgPHdpbGx5QGluZnJhZGVhZC5vcmc+CgpBcHBsaWVkIHRvIGk5MTUtZ2VtLW5leHQg
YnJhbmNoIGZvciA1LjEzLiBXZSBoYXZlIGEgYml0IGEgYnJhbmNoIHNodWZmbGluZwpnb2luZyBv
biByaWdodCBub3cgc28gdW51c2FsIHBhdGgsIGl0IHNob3VsZCBzaG93IHVwIGluIGxpbnV4LW5l
eHQgdGhyb3VnaApkcm0tbmV4dCBob3BlZnVsbHkgdGhpcyB3ZWVrIHN0aWxsLgotRGFuaWVsCgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgNCArKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ZtYS5jCj4gaW5kZXggY2FhOWIwNDE2MTZiLi5lZTAwMjhjNjk3ZjYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmMKPiBAQCAtMjMwLDcgKzIzMCw3IEBAIHZtYV9jcmVhdGUoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgfQo+ICAKPiAgc3RhdGljIHN0cnVjdCBp
OTE1X3ZtYSAqCj4gLXZtYV9sb29rdXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
PiAraTkxNV92bWFfbG9va3VwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAkg
ICBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgCSAgIGNvbnN0IHN0cnVjdCBpOTE1
X2dndHRfdmlldyAqdmlldykKPiAgewo+IEBAIC0yNzgsNyArMjc4LDcgQEAgaTkxNV92bWFfaW5z
dGFuY2Uoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAgCUdFTV9CVUdfT04oIWF0
b21pY19yZWFkKCZ2bS0+b3BlbikpOwo+ICAKPiAgCXNwaW5fbG9jaygmb2JqLT52bWEubG9jayk7
Cj4gLQl2bWEgPSB2bWFfbG9va3VwKG9iaiwgdm0sIHZpZXcpOwo+ICsJdm1hID0gaTkxNV92bWFf
bG9va3VwKG9iaiwgdm0sIHZpZXcpOwo+ICAJc3Bpbl91bmxvY2soJm9iai0+dm1hLmxvY2spOwo+
ICAKPiAgCS8qIHZtYV9jcmVhdGUoKSB3aWxsIHJlc29sdmUgdGhlIHJhY2UgaWYgYW5vdGhlciBj
cmVhdGVzIHRoZSB2bWEgKi8KPiAtLSAKPiAyLjMwLjAKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3
YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
