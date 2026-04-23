Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNn1HE1I6mkhxgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:53 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D3E454DD0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 18:26:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 033BE405D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 16:26:52 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lists.linaro.org (Postfix) with ESMTPS id EA0044013A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 11:49:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=TgeViV42;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-4645dde00a7so5370164b6e.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Apr 2026 04:49:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776944998; cv=none;
        d=google.com; s=arc-20240605;
        b=Kih/L3w14T51SUo168zYX6smPssg1Uf659uVSAb+r1J83cV6qm8wOSX3CxdUxWwOh6
         eRg+DVaVDaXhu+8yXDwUMtBthQWFXz7pcxIRkF4yOV7Jsvq/jm4n3WwNvN+fiJvnynLY
         I5gyQzZZNzia1vYCruoS1tVwBNq+MWB2u4RZHQ7yTwStEdayVtcxNMgJN2e4PR2f/5+r
         ntcIZ3Jhwkho/IGNFgYbyT1XsHCIRpi7Xe9+i7ANrIlQ/VxMuIRShybaLvlvReVfRYFF
         /HiL4X6UgeA5Apfdk0vGS+M//v79x2S3p6KVQNZDaWZMuvuKoitk1Fd31DgUUrnXjLBY
         5mGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=NMysmFkGdL7lDHKDD0+dBK5B2PGw1As91n2z5R0Wi3U=;
        fh=YtCx6NejKsIwW//+/If024xNWv5xuptxaAFjIFKL+O0=;
        b=IFKnR6MEDH/9SEPc/2LkaKXD8MhNRbEXSmC5gurxXq/50Z20qLxTjx4asvuDJeRKtO
         GGeV92jp6DhVrAy1J2sDuA8dWjFNyZBirFtJkVqZkHTkxcKUtUu5/CkfnuavCQ/25bx/
         RjdJeYMtaw5/26bWZ2D2lINHtrcBEf90ynQRF88WTgItEp62xAUOejlEMjsuK2wrHVY9
         d8fISYVUvSkhtMubCyrKCE5zSoBdl5TyjQC/l4toM+suO8mayz/euJ3Dv6lc+f00iVgT
         3JtOYMrGw58dzRK4ZfrBgb0qnhGlzE72DTDfQL5beR6R76+pnqNjrsPDuvoUaFRnZX3G
         zkBg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776944998; x=1777549798; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMysmFkGdL7lDHKDD0+dBK5B2PGw1As91n2z5R0Wi3U=;
        b=TgeViV42yuyGgbxDj4vQTCC041EiwMo5vNNh2mQN4k15BojqorCx/OZiBkIIur8x+g
         OgDuJ5ZtRIwb9IW9/364xtNRGQ46xW/PQb+7n0A1D+qocBT2EGkwFdSoMjc1PegO8K9e
         mgHlkmIGKssGkL6V/PPoirZgsgkOwZ/r6c2IoIpY3ELPhBci0umex7rV19H7FUGd9nfA
         iPQhjFrb2vdGHwfH4HZ63QO3lsiLZ5iZ4Upu+2fhrYLfngbu0CDaiMllmLQ1NsbrxP1L
         AJ+fk25HtaWQR5t/ANGOBl8zJ0UJ3spOY8pGbblw+CdQrdniXbnUT6iIqxIoPecH+LZ7
         fySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776944998; x=1777549798;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NMysmFkGdL7lDHKDD0+dBK5B2PGw1As91n2z5R0Wi3U=;
        b=a5NZSYcoavBhaqYnr0osPjkKcnB0GZK8ZUIRz/gUkjEoDfnlgJTRi0JU3wMGq64v5R
         uf9l2RFis0dFMIuLpa7EXDmaPRkwL/ZDhWhzUCCgyPuQHpwGyyDV3cMIUnzQ8WOhJLbC
         nKVpgLM5dohhpgwYksm5dTL6bHdBvs0l6S25PHqFc6rWr28Ux2Sd3Tbs7USgWqxVYsVv
         IzX92bcAmdrrl4SqoSvlcQZModEG/FYusOWdIh3uTjs0XQnkQ4YSGBLGmQcyEXsHwTMA
         GuK3200r0LEbi923kOpfMyCAC1i2+o93ruXE/hxm/laKVBmAj9dPHrx7Vst2mRPvj0rC
         Uykg==
X-Forwarded-Encrypted: i=1; AFNElJ+DpVy7py3WGy1h3ffiLbwI8Mov/kK5BMwcdQjFXPpjh7wde9wXZagm/AgPo58kfUcGBsstMYejwLBzBS2p@lists.linaro.org
X-Gm-Message-State: AOJu0YzfFO0kE/kvTNGR1MhSPQHdWu688C92IhTvDaIvEGsDZrGHkkln
	Iv+QDfijFBc3+/dJ+PAAGHMkCjPnAQ4K8BNGYc8bdXHCYho14dZF+HSdNxjmweAXF3bcYN/Q70a
	IdmQlg4Ylq7Et38/UDzpWWCOiWLiurXg=
X-Gm-Gg: AeBDieuoiyhfx96r10GbLYZUREieD5fQXlz2gmjv2l3OMYWqU9GXWmDOFrGkgALDQbi
	lo+2aX+iG9EZc2DzgElw5bd+sc0TErcioysKTaHmWtiEXeZbSb9qOKYO1VsmnLMqNEYZIbW74R6
	Nma9TtogmDbGbpl+nq0+cKPeaptyMKtkWmqk01ha/bPlXDS4zByD05SB+yyrAm9KpOgXc3A4b4K
	iiHNGCEHjRfNfC1JYDx8jncE1Uoyqdd04vxB+s8ql9UgDRGBsXv3JWcqYnUEWIYHuM6dQKbN9QX
	vvIFc3yvEqsRyvue7P6m
X-Received: by 2002:a05:6808:ecb:b0:47a:4fd:95f0 with SMTP id
 5614622812f47-47a04fd9f84mr2979376b6e.12.1776944998182; Thu, 23 Apr 2026
 04:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260331061657.79983-1-mikhail.v.gavrilov@gmail.com> <IA0PR11MB718531C51736C57114D6DC2CF850A@IA0PR11MB7185.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB718531C51736C57114D6DC2CF850A@IA0PR11MB7185.namprd11.prod.outlook.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Thu, 23 Apr 2026 16:49:46 +0500
X-Gm-Features: AQROBzCsr1tF7ROC5cSogOzcFX4U95VM00zHhQ_fb0LBMmia49ui3DZvV8SxZFk
Message-ID: <CABXGCsM8T4e8kaaO_bauHnN0yE5cxwkkcN+eAJWE8hnJ8RdSRw@mail.gmail.com>
To: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
X-Spamd-Bar: ----
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MNJL4FHQBGLRZXS3SYG6GQIBSC5254XT
X-Message-ID-Hash: MNJL4FHQBGLRZXS3SYG6GQIBSC5254XT
X-Mailman-Approved-At: Thu, 23 Apr 2026 16:26:50 +0000
CC: "kraxel@redhat.com" <kraxel@redhat.com>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org" <stable@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf/udmabuf: skip redundant cpu sync to fix cacheline EEXIST warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNJL4FHQBGLRZXS3SYG6GQIBSC5254XT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linaro.org:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: E8D3E454DD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBBcHIgMSwgMjAyNiBhdCA2OjE14oCvQU0gS2FzaXJlZGR5LCBWaXZlaw0KPHZpdmVr
Lmthc2lyZWRkeUBpbnRlbC5jb20+IHdyb3RlOg0KPg0KPiBBY2tlZC1ieTogVml2ZWsgS2FzaXJl
ZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiBXaWxsIHB1c2ggdGhpcyBvbmUgdG8g
ZHJtLW1pc2MtbmV4dCBzb29uLg0KPg0KPiBUaGFua3MsDQo+IFZpdmVrDQoNCkhpIFZpdmVrLA0K
DQpJIHNlZSB0aGUgcGF0Y2ggbGFuZGVkIGluIGRybS1taXNjLW5leHQgKDUwNGUyYjRhYjk3YSwg
dGFnZ2VkDQpkcm0tbWlzYy1uZXh0LTIwMjYtMDQtMjApLCB3aGljaCB0YXJnZXRzIDcuMi4NCg0K
U2luY2UgdGhlIHBhdGNoIGhhcyBhIEZpeGVzOiB0YWcgYW5kIENjOiBzdGFibGUsIHdvdWxkIGl0
IGJlDQpwb3NzaWJsZSB0byBhbHNvIGNoZXJyeS1waWNrIGl0IGludG8gZHJtLW1pc2MtbmV4dC1m
aXhlcyBzbyBpdA0KbWFrZXMgdGhlIDcuMSBtZXJnZSB3aW5kb3cgdGhhdCdzIGNsb3Npbmcgc29v
bj8NCg0KVGhlIGJ1ZyBpcyByZXByb2R1Y2libGUgb24gY3VycmVudCBtYWlubGluZSBhbmQgYWZm
ZWN0cyB1c2Vycw0Kd2l0aCBDT05GSUdfRE1BX0FQSV9ERUJVR19TRyBlbmFibGVkLg0KDQotLSAN
ClRoYW5rcywNCk1pa2hhaWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
