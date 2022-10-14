Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F29295FE713
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Oct 2022 04:42:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B81023F56C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Oct 2022 02:42:01 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by lists.linaro.org (Postfix) with ESMTPS id 035CE3EF90
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Oct 2022 02:41:42 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id d24so3519063pls.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Oct 2022 19:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZJ1ZupV4pNYtfLm2nRk080Y8SXTuWCwx9eOCEUYrnLk=;
        b=mOTc8KRBadMqtPwLlQpMoDRG7Y/LhVh3ONQQ0+J/2DeJP9z2WBpqzM2zCbruFAwGQ2
         Cg9NrAsdBApxkVi7G6+/BmIIhGYCILZRVDKJgLmeZAjnkd+DscSYsrIh2d0DhZEicFJ4
         JC0NBSOAxXyESKVnAJK6Z1UcYpKzjFbwvjdW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJ1ZupV4pNYtfLm2nRk080Y8SXTuWCwx9eOCEUYrnLk=;
        b=CcxDteTceN2z3xRfRtr1HERD+Z93tHbuscLjBY7hlAq+K2v/rfluUD5lQiheW+xOoL
         0Og8CurmfnGuYQDLPSq2Yf0gOQUVmFzNDuTND4sG/fKP/bMuq7rhR9HiGjBegVhnSRpn
         CZr6/sek5JykpMCPOlAgaZVxvdi5v4WZd26dL0Z9XHrLaiv7guhM3Wk5U+8BsRsUc+iP
         EfOGF5J8dzmYgKimsG95Gv4KOzoJYwTaLBKRPLLY/05yHywFItJ1s9CTZc8SdTq7U0WN
         hqST3g9SYDYmmg9TJ0mc55Cg1xYdf13/iLfWMxaNXoPljxrpJc6Lk7yK8NH6skdZpztR
         sQQg==
X-Gm-Message-State: ACrzQf2FlZe03S7lwDc3SqMYINVFgIlybYg+Vyz9Hi61jcqWsqiZkEgl
	NYcZ6HkANmcQC7Aw1W0EWJ2kwQ==
X-Google-Smtp-Source: AMsMyM4+EvyJIPbh8SsjJ5/w//6R6z4mUB4NPnFpN2sJpNlsISjzDqMI4t1DceTMwEIjNQHzGR0rDg==
X-Received: by 2002:a17:90a:d983:b0:20a:ec04:e028 with SMTP id d3-20020a17090ad98300b0020aec04e028mr14425285pjv.122.1665715301104;
        Thu, 13 Oct 2022 19:41:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o2-20020a170902d4c200b001708c4ebbaesm467745plg.309.2022.10.13.19.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Oct 2022 19:41:40 -0700 (PDT)
Date: Thu, 13 Oct 2022 19:41:39 -0700
From: Kees Cook <keescook@chromium.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Message-ID: <202210131941.5D2AD4403E@keescook>
References: <20221013210714.16320-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221013210714.16320-1-fmdefrancesco@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---------
X-Rspamd-Queue-Id: 035CE3EF90
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.214.180:from,198.145.64.163:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.180:from];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmail.com,ffwll.ch,kernel.org,linaro.org,suse.com,roeck-us.net,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,intel.com]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=mOTc8KRB;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.214.180 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Message-ID-Hash: 66QK7OKUN5C4KKJBFLWBERIRLZFA3FD6
X-Message-ID-Hash: 66QK7OKUN5C4KKJBFLWBERIRLZFA3FD6
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alex Deucher <alexander.deucher@amd.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Christian Brauner <brauner@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-hwmon@vger.kernel.org, linux-hardening@vger.kernel.org, "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>, Ira Weiny <ira.weiny@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: Replace kmap() with kmap_local_page()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/66QK7OKUN5C4KKJBFLWBERIRLZFA3FD6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBPY3QgMTMsIDIwMjIgYXQgMTE6MDc6MTRQTSArMDIwMCwgRmFiaW8gTS4gRGUgRnJh
bmNlc2NvIHdyb3RlOg0KPiBUaGUgdXNlIG9mIGttYXAoKSBpcyBiZWluZyBkZXByZWNhdGVkIGlu
IGZhdm9yIG9mIGttYXBfbG9jYWxfcGFnZSgpLg0KPiANCj4gVGhlcmUgYXJlIHR3byBtYWluIHBy
b2JsZW1zIHdpdGgga21hcCgpOiAoMSkgSXQgY29tZXMgd2l0aCBhbiBvdmVyaGVhZCBhcw0KPiB0
aGUgbWFwcGluZyBzcGFjZSBpcyByZXN0cmljdGVkIGFuZCBwcm90ZWN0ZWQgYnkgYSBnbG9iYWwg
bG9jayBmb3INCj4gc3luY2hyb25pemF0aW9uIGFuZCAoMikgaXQgYWxzbyByZXF1aXJlcyBnbG9i
YWwgVExCIGludmFsaWRhdGlvbiB3aGVuIHRoZQ0KPiBrbWFw4oCZcyBwb29sIHdyYXBzIGFuZCBp
dCBtaWdodCBibG9jayB3aGVuIHRoZSBtYXBwaW5nIHNwYWNlIGlzIGZ1bGx5DQo+IHV0aWxpemVk
IHVudGlsIGEgc2xvdCBiZWNvbWVzIGF2YWlsYWJsZS4NCj4gDQo+IFdpdGgga21hcF9sb2NhbF9w
YWdlKCkgdGhlIG1hcHBpbmdzIGFyZSBwZXIgdGhyZWFkLCBDUFUgbG9jYWwsIGNhbiB0YWtlDQo+
IHBhZ2UgZmF1bHRzLCBhbmQgY2FuIGJlIGNhbGxlZCBmcm9tIGFueSBjb250ZXh0IChpbmNsdWRp
bmcgaW50ZXJydXB0cykuDQo+IEl0IGlzIGZhc3RlciB0aGFuIGttYXAoKSBpbiBrZXJuZWxzIHdp
dGggSElHSE1FTSBlbmFibGVkLiBGdXJ0aGVybW9yZSwNCj4gdGhlIHRhc2tzIGNhbiBiZSBwcmVl
bXB0ZWQgYW5kLCB3aGVuIHRoZXkgYXJlIHNjaGVkdWxlZCB0byBydW4gYWdhaW4sIHRoZQ0KPiBr
ZXJuZWwgdmlydHVhbCBhZGRyZXNzZXMgYXJlIHJlc3RvcmVkIGFuZCBzdGlsbCB2YWxpZC4NCj4g
DQo+IFRoZXJlZm9yZSwgcmVwbGFjZSBrbWFwKCkgd2l0aCBrbWFwX2xvY2FsX3BhZ2UoKSBpbiBy
YWRlb25fdHRtX2d0dF9yZWFkKCkuDQo+IA0KPiBDYzogIlZlbmthdGFyYW1hbmFuLCBBbmlydWRo
IiA8YW5pcnVkaC52ZW5rYXRhcmFtYW5hbkBpbnRlbC5jb20+DQo+IFN1Z2dlc3RlZC1ieTogSXJh
IFdlaW55IDxpcmEud2VpbnlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBGYWJpbyBNLiBE
ZSBGcmFuY2VzY28gPGZtZGVmcmFuY2VzY29AZ21haWwuY29tPg0KDQpSZXZpZXdlZC1ieTogS2Vl
cyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+DQoNCi0tIA0KS2VlcyBDb29rDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
