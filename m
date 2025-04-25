Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 114D7A9BB9F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 02:14:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC0E6443AE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Apr 2025 00:14:14 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id 1D5404427F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Apr 2025 00:14:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="f0374p/V";
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.167.49 as permitted sender) smtp.mailfrom=jstultz@google.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54d3ee30af1so1802037e87.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Apr 2025 17:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745540040; x=1746144840; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=weepQ3o3E6eVKCjaxY3CTZ3gGB6j9iWw3wdfeMK8HxI=;
        b=f0374p/VFQQ1Ye705waZur0ieCG3lZv56j22ufkgYaWCWXxJCI8T4CJYxaab2iMLYb
         oK87heO0Z8cD4dlWFYPXVvqTSXM/Cx46MyqCOk/4nRgLdvcMU5v5Oc6o33sYSLvGRR41
         TUwLcJ/IZtA2svtieYy7xoZCoLqTa4wTdC9343PANISFlqrPjj40dGG3KbSj1O4gjejm
         Bpzz87L4ioMhPmnIAbxg7/NLGC+atWsyM4ahkbTbdmjVsAmU1q2TL7+/gp5sg5SHmFjD
         w6AFbgDA39gx2kW6tanVEY1U4VqNfrCvoCZXUT05U7pcSw0loVUA6RXihfpZG5pFoWGQ
         XQpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745540040; x=1746144840;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=weepQ3o3E6eVKCjaxY3CTZ3gGB6j9iWw3wdfeMK8HxI=;
        b=WH8G0NZVuleN+aHOffS1UFbtGRrOteXkaV8AO2mU2DlhO/MSbvW05sMfqPfsuYUeBr
         gWoK1t9ZT/JFedwKKdjZxZQzwJl0NP7qahqD+6EwEJE1bZN9zTMIpsx33BBOVI9rx9IC
         cnX0/Y5uX5036VXRPS+UmeItFWFUbv2I7rarQxnI2olG/D4y0C+SbfA1JotZMo5r40l8
         rmhVow8bhSa1pGnSRu/PMgYQnamVV87MCBhCrHKLuYP1Sy068z8jueOI7tFba0LLoEn+
         fb0DqPQ8JOSJxogBlR1BVwr4Hz2rse+wqBIYwzp4+7Szjd8MseijsIICj09N/fE7vuR3
         X/Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXBWXL0jgJ086Bc28i6gg9H3t3sr6+RPdMjrOtiU3g0IX/YlYrv3i0gpDcFy60OixPLHgkl8Immraws/Wmv@lists.linaro.org
X-Gm-Message-State: AOJu0Yy5XOEvhbYTw0ZDmFxV5zznK2/lpBzOpnbE470LuDCuzvjDHbvu
	XuwUcr3QxmnyS3JuyQ5iMqjsQM8XhzAenRAWtq6/OmiiSIv7nH5vw667zUN/eiRNFmispV7SdZd
	QGz+B2jOLK3bcjS0VibeExMmAUwhlu12i4Iw=
X-Gm-Gg: ASbGncs8c0sfRSG/pLqX+yWgDtZxlQyS4UsfJjL9etogjPV5l6DUOmmwxGhXNrA+WBd
	SE7IoooEue0Hd5kAsr2mnw05Dq75OoPDt322fvt6tLFBtRYq6DAXNMLOFpmbFspU/AhF62tNZxz
	jsWS3jH3HemNHyomEINrqDHzBQ6G6mlsUzU55m3FVOBcWkcV2DpWqQvg1UF530P6g=
X-Google-Smtp-Source: AGHT+IFupDhtk787UYFC+m51vWARrrW+g3qeY1nzKmRJUOvJStBMU1HIyqroJk5ca7MURfz+ouovj/qgbuHigNDZtwA=
X-Received: by 2002:a05:6512:ac5:b0:545:2871:7cd5 with SMTP id
 2adb3069b0e04-54e8cbce2bamr107809e87.15.1745540039297; Thu, 24 Apr 2025
 17:13:59 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com> <20250422191939.555963-3-jkangas@redhat.com>
 <20250424-sassy-cunning-pillbug-ffde51@houat>
In-Reply-To: <20250424-sassy-cunning-pillbug-ffde51@houat>
From: John Stultz <jstultz@google.com>
Date: Thu, 24 Apr 2025 17:13:47 -0700
X-Gm-Features: ATxdqUEd-WZkBCWlXClEEov2Vu7arSm9wmBJpDM85wdm6VobmqGM8s292rnkW9E
Message-ID: <CANDhNCqfsUbN3aavAH5hi4wdcKuUkjLX4jqhKzy-q+jCEqpoow@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1D5404427F
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.97%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.167.49:from];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.49:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: X36YB6IMXHGZMN4HBZ4UAOS2DKLYGO34
X-Message-ID-Hash: X36YB6IMXHGZMN4HBZ4UAOS2DKLYGO34
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jared Kangas <jkangas@redhat.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: Give default CMA heap a fixed name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X36YB6IMXHGZMN4HBZ4UAOS2DKLYGO34/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBBcHIgMjQsIDIwMjUgYXQgMTozNOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IE9uIFR1ZSwgQXByIDIyLCAyMDI1IGF0IDEyOjE5OjM5UE0g
LTA3MDAsIEphcmVkIEthbmdhcyB3cm90ZToNCj4gPiBAQCAtMjIsNiArMjIsNyBAQA0KPiA+ICAj
aW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiA+ICAjaW5jbHVkZSA8bGludXgvdm1hbGxvYy5oPg0K
PiA+DQo+ID4gKyNkZWZpbmUgREVGQVVMVF9DTUFfTkFNRSAiZGVmYXVsdF9jbWEiDQo+DQo+IEkg
YXBwcmVjaWF0ZSB0aGlzIGlzIGtpbmQgb2YgYmlrZXNoZWQtY29sb3IgdGVycml0b3J5LCBidXQg
SSB0aGluayAiY21hIg0KPiB3b3VsZCBiZSBhIGJldHRlciBvcHRpb24gaGVyZS4gVGhlcmUncyBu
b3RoaW5nICJkZWZhdWx0IiBhYm91dCBpdC4NCg0KSSBkaXNhZ3JlZS4gIEl0IHZlcnkgbXVjaCBp
cyAiZGVmYXVsdCIgYXMgaXQncyByZXR1cm5pbmcgdGhlDQpkbWFfY29udGlndW91c19kZWZhdWx0
X2FyZWEuDQoNClRoZXJlIGNhbiBiZSBtdWx0aXBsZSBDTUEgYXJlYXMsIGFuZCBvdXQgb2YgdHJl
ZSwgdmVuZG9ycyBkbyByZXNlcnZlDQpzZXBhcmF0ZSBhcmVhcyBmb3Igc3BlY2lmaWMgcHVycG9z
ZXMsIGV4cG9zaW5nIG11bHRpcGxlIENNQSBkbWFidWYNCmhlYXBzLg0KVGhlcmUgaGF2ZSBiZWVu
IHBhdGNoZXMgdG8gZXhwb3NlIG11bHRpcGxlIENNQSBoZWFwcywgYnV0IHdpdGggbm8NCnVwc3Ry
ZWFtIGRyaXZlcnMgdXNpbmcgdGhvc2UgcHVycG9zZSBzcGVjaWZpYyByZWdpb25zLCB3ZSBoYXZl
bid0DQp0YWtlbiB0aGVtIHlldC4NCkkgZG8gaG9wZSBhcyB0aGUgZHJpdmVycyB0aGF0IHV0aWxp
emUgdGhlc2UgcHVycG9zZSBmb2N1c2VkIGhlYXBzIGdvDQp1cHN0cmVhbSwgd2UgY2FuIGFkZCB0
aGF0IGxvZ2ljLCBzbyBJIHRoaW5rIGJlaW5nIHNwZWNpZmljIHRoYXQgdGhpcw0KaXMgZGVmYXVs
dCBDTUEgaXMgYSBnb29kIGlkZWEuDQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
