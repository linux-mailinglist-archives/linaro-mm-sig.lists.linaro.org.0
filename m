Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJupKAf6b2mUUgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 22:56:23 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E644C9D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 22:56:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2FC063F818
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 21:56:22 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id B86823F774
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 21:56:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=eKkccWJM;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.46 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47a95a96d42so6405e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 13:56:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768946175; cv=none;
        d=google.com; s=arc-20240605;
        b=emfU/sm5C7/7v0dVFRh2m5t0gm+/c5Kux7Fek7aqjA6bzvsK2ZrB5dBEVmsmgvD11Q
         KHGH33BQc0idUpRbKmkllYkJHTdcsmZM1jte52keGpQTv4Sev5rIDd0s1NoPsUE7DfpN
         C/bBCEQN+7v7aPo2nd0izWnlDwOP5X1UPKnbgcQZT8xiMYlfJX1aPWEothEhoMhX941C
         PzPBZzRAxifwdn1e1L+5FYfPRJeThj+kTA//WpsAaYrHQwErbseocKx1/pFW0BxqnVqt
         MXs1YAyXisuowbxyYiQ76pVnvryINy5++WyjTg2KWcOR43e8X1liXLqwMeg50uyP+xLE
         9T6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QVZL0RZkg04ocz6rLt32bQ6sRNMP0a56Dl2GzXli5GE=;
        fh=gPIN3lv/gkEuJEigAndXj+fzTUZYmLCCVeSkarkL47I=;
        b=MBXCARwvIDmYM65ytOV226D8PqImZIHDlq90NhkVTEoJ6a9gXpj6YQiQBa/+UBhMyA
         ceebWuFz8M6dbpuaqlPeu3tY+GU+wV4MlaRNwo3mcL2KPgsAXH/Kbf57EAHrSiz5W5as
         n9HUljn3hiJL3+A3l4kgRLNVkCEWkafFLp/OUkWFm8wAQQPOQeMXfHPsXNZDN+vSXZNi
         EsFzSpoP2msetKE844Z4CQnGrp7PRLn5WymtNWPNOUVnUMQWm9bT5W6zD1J684gpY/8a
         WXGZ065uGCluESX90bAQ/unrYotlvCFkA/1btQoVEPcFLpK5K/PecMcfyqGfSx/zJlrg
         4AOg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768946175; x=1769550975; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QVZL0RZkg04ocz6rLt32bQ6sRNMP0a56Dl2GzXli5GE=;
        b=eKkccWJMHolRfpD6NPUaPHYMe9T4xMom5LzVWvAk/MY9Z1bsNNHt+JqLkP/ZVOxBlm
         ESAukNpKbhYavFuHYZaYmlkzfjp9MLF2O0bhX+baaCjHS3g2+aFVUlDpPkAuzR3mWydJ
         nG6mPhFir3telrIbXbFXS0qQswNSFbbcWRTHR3Kwe9pD+3NnHVGEzEtkogURFheamS2t
         JJHTZ2SRCc2OdaY/1DLjMO0Bjb6DhegjesFbmlGxYPWBZRhmw/2vE/FwrfL6VzF/W9/u
         18p7Cl24AlyjJCdgiLJV3Ntgo6JIv3ldzXdOQv2OMvj9LJXyQqezkDy9Fl3su9mtivBt
         I/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768946175; x=1769550975;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QVZL0RZkg04ocz6rLt32bQ6sRNMP0a56Dl2GzXli5GE=;
        b=BfRzK0xcB1Hdx/2ZRCwjLL3rz2yUVVWNnso1pwfDTYECLTzvAhKA5q3zX5AYEhWmD1
         WflKFB8bhsuz0ceg467D1dp073psUC9KOHGL1/cbYeppL10rEFdUELTkw3Rzn3Pm7KmH
         qoXNA1LBEZW82q4fFjPzA23Bvh4v00oKezHlEzeSK6VNKrrQw3cBzDu0W4sZSDVkF4pC
         k0g0Pi4c4eBpc1CSfFS+tuwjX5aKk+OO2XZ0/tgqLLi57nGPWttXtvJ9YJgj+Bj51QWj
         wspfuAj8kiUBhQcultlx4DVNp/qq98S3RHasTtr3sM9y2IwCjGVC4U/YAF1eTaIMHvGJ
         Cl+w==
X-Forwarded-Encrypted: i=1; AJvYcCUlG+bjGtbDNlYFT4fGEhdXtiDuG1yixfv0SVC6UibrhyxrOBpxh6ak0o4gZ/5r54y+pF5rqeyrxtRwW3kx@lists.linaro.org
X-Gm-Message-State: AOJu0YzML112+37pzVQnIlJHY6RkCkTBSaC6wkKma7VHo2REbmdRJ76h
	oGtD20qShu1gsWDa0dZ6BC3UHhYxfRaHj6JZffkYlBavTCcLr85KYTKNRlzXMbyxwjsMlKJWJmJ
	PnF99WSs/+ZmthEr5+2usBsol2FzcKr3rBP7XEX6K
X-Gm-Gg: AY/fxX4uXr4ZOe94+niX7Y83v6waHqNNfGIZwRRJFZufE5qWGfomftUmzw8YVyhg34K
	E1JqjeyNV/uQGMLAG6+YaK8LHSgZxbvJS5HVyEplwl1bM2rEcsra0b+hCXRFO+6SNhjLJtRKHS5
	Y6LJkBSQew5yPWJNCWyKpWeBRlAmoDpuQwLTm5uHMEMQE2Nw7F+OQIn97/zR/ouXP7Njdh7oAOV
	xHykqYwIYWnkGRto2l8YXWCdEJj5wuTT03S/ba6PNGzvQoejCszpxVzZEQp73UUIqFsSJAhL+Hk
	mLTqVVTRDxsXz5gi4OBNvrYdQznFQTpiaE1f/y1BykiN4HwGjoaPaG9MwrDPWE5dwEFe
X-Received: by 2002:a05:600c:2294:b0:477:b358:d7aa with SMTP id
 5b1f17b1804b1-4804269ded7mr182155e9.18.1768946174451; Tue, 20 Jan 2026
 13:56:14 -0800 (PST)
MIME-Version: 1.0
References: <20260116190517.3268458-1-tjmercier@google.com>
 <4cd1ed61-0b19-45ef-a77c-7fccde818ae9@amd.com> <CAO_48GENCZrXNCgXnW4rujNMHk8d9QrXoACT1zpJhWR0r0jACw@mail.gmail.com>
In-Reply-To: <CAO_48GENCZrXNCgXnW4rujNMHk8d9QrXoACT1zpJhWR0r0jACw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 20 Jan 2026 13:56:02 -0800
X-Gm-Features: AZwV_QhAkwIRZ_-oc6BWWemkNMCWB__3YgDNYfNqrl_eFujJJHCLVOgaVNe7XtY
Message-ID: <CABdmKX3LGWueY91k+i7_WFTC8b8LJdR8nj6Y9KeJMRk7fSrsww@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Spamd-Bar: ----
Message-ID-Hash: ANIE7K4LORJI3E43UCSSTYZQ4ENM6U5R
X-Message-ID-Hash: ANIE7K4LORJI3E43UCSSTYZQ4ENM6U5R
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove DMA-BUF sysfs stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ANIE7K4LORJI3E43UCSSTYZQ4ENM6U5R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:-]
X-Rspamd-Queue-Id: 33E644C9D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgNTowOOKAr0FNIFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vt
d2FsQGxpbmFyby5vcmc+IHdyb3RlOg0KPg0KPiBIaSBUIEosDQo+DQo+IE9uIE1vbiwgMTkgSmFu
IDIwMjYgYXQgMTU6MTUsIENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4gd3JvdGU6DQo+ID4NCj4gPiBPbiAxLzE2LzI2IDIwOjA1LCBULkouIE1lcmNpZXIgd3JvdGU6
DQo+ID4gPiBDb21taXQgYmRiOGQwNmRmZWZkICgiZG1hYnVmOiBBZGQgdGhlIGNhcGFiaWxpdHkg
dG8gZXhwb3NlIERNQS1CVUYgc3RhdHMNCj4gPiA+IGluIHN5c2ZzIikgYWRkZWQgZG1hYnVmIHN0
YXRpc3RpY3MgdG8gc3lzZnMgaW4gMjAyMSB1bmRlcg0KPiA+ID4gQ09ORklHX0RNQUJVRl9TWVNG
U19TVEFUUy4gQWZ0ZXIgYmVpbmcgdXNlZCBpbiBwcm9kdWN0aW9uLCBwZXJmb3JtYW5jZQ0KPiA+
ID4gcHJvYmxlbXMgd2VyZSBkaXNjb3ZlcmVkIGxlYWRpbmcgdG8gaXRzIGRlcHJlY2F0aW9uIGlu
IDIwMjIgaW4gY29tbWl0DQo+ID4gPiBlMGE5ZjFmZTIwNmEgKCJkbWEtYnVmOiBkZXByZWNhdGUg
RE1BQlVGX1NZU0ZTX1NUQVRTIikuIFNvbWUgb2YgdGhlDQo+ID4gPiBwcm9ibGVtcyB3aXRoIHRo
aXMgaW50ZXJmYWNlIHdlcmUgZGlzY3Vzc2VkIGluIG15IExQQyAyMDI1IHRhbGsuIFsxXVsyXQ0K
PiA+ID4NCj4gPiA+IEFuZHJvaWQgd2FzIHByb2JhYmx5IHRoZSBsYXN0IHVzZXIgb2YgdGhlIGlu
dGVyZmFjZSwgd2hpY2ggaGFzIHNpbmNlDQo+ID4gPiBiZWVuIG1pZ3JhdGVkIHRvIHVzZSB0aGUg
ZG1hYnVmIEJQRiBpdGVyYXRvciBbM10gdG8gb2J0YWluIHRoZSBzYW1lDQo+ID4gPiBpbmZvcm1h
dGlvbiBtb3JlIGNoZWFwbHkuIEFzIHByb21pc2VkIGluIHRoYXQgc2VyaWVzLCBub3cgdGhhdCB0
aGUNCj4gPiA+IGxvbmd0ZXJtIHN0YWJsZSA2LjE4IGtlcm5lbCBoYXMgYmVlbiByZWxlYXNlZCBs
ZXQncyByZW1vdmUgdGhlIHN5c2ZzDQo+ID4gPiBkbWFidWYgc3RhdGlzdGljcyBmcm9tIHRoZSBr
ZXJuZWwuDQo+ID4gPg0KPiA+ID4gWzFdIGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
RDgzcXlndWRxOWMNCj4gPiA+IFsyXSBodHRwczovL2xwYy5ldmVudHMvZXZlbnQvMTkvY29udHJp
YnV0aW9ucy8yMTE4Lw0KPiA+ID4gWzNdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1
MDUyMjIzMDQyOS45NDExOTMtMS10am1lcmNpZXJAZ29vZ2xlLmNvbS8NCj4gPiA+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+DQo+
ID4gT2ggeWVzIHBsZWFzZSA6KQ0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNo
LCBMR1RNIDopDQo+DQo+IElmIGl0cyBub3QgcHVzaGVkIHlldCwgSSdsbCBwdXNoIGl0IHRvbmln
aHQuDQo+DQo+IEJlc3QsDQo+IFN1bWl0DQoNClRoYW5rcyBTdW1pdCBhbmQgQ2hyaXN0aWFuIQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
