Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B561B24322
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 09:49:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 089463F6F9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Aug 2025 07:49:52 +0000 (UTC)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	by lists.linaro.org (Postfix) with ESMTPS id 135EE3F6F9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 07:49:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=YCSpsYzo;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.161.53 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-61bca43dbeaso97755eaf.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Aug 2025 00:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755071379; x=1755676179; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wfeJn6OXLOSd2GklhvEK2KXBF/te/QhNlLJRLLpT6NU=;
        b=YCSpsYzoJRXDeejabA48AvAEikcInKIMFJ0djtN3oW2Pc7YlAqx69KktlA52tInopL
         v5+ZFT1wzaV4DMObJBCj1mb1T7m/LkXiet4CbgNEi57rjlXUGMcI91kbWkR/inQooWkH
         zUsgWpA7SYtnNTW1arnGQRZ/PGDBMQ3Exm9lwanlbOkmPjuROlcqf8cwpu6xayhoL7WQ
         Pv/uRq8kTSacY3hWN2rjd6Xspie6bX3OQCKwRP49G5qg/L27d5a7bEKx89c7aTr/eMtw
         4gauHxiMKFpZUFk8aKmnN9ThZllj26opo2rHHBOqK0SjmNJFOTsbDd6Y2w9pVH8Y5RIq
         SN7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755071379; x=1755676179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfeJn6OXLOSd2GklhvEK2KXBF/te/QhNlLJRLLpT6NU=;
        b=NBMAsLOhRm3XLC5vnZwtfC1SOCFMk1jyJ8AoS5w7hjbP3uttceUmU6qGndKrB2PliM
         ZgmkRLpXwmsUCv+Dne/pEkI+tEDNmK8WIF6PcCjmNAO7IC5HWQ76Wid1JKfp7gH60JtF
         V8HafcMMXAwgcmt+nbivIdc7rOvH9452mDu6ir5uL1aMBiXhC0qxtDlqeilwoDmHdwNt
         M//Hkf7mXUq4tZ2VqBHB0ijbhihq8y3KYk3WgYdEp0iDivBFu5xIzwp/4rY1DJ43aHEY
         v9lkNxnp7I7cSZrmTbgHiaHKeJ/V8eV7sxWoxJEeO7ht4C1dGJmuYiyKXCC3w0EUYS5R
         zw8A==
X-Forwarded-Encrypted: i=1; AJvYcCVJv1lTnz4jhv31mn+vtgPplG4LQDR42T18g4g52o9UcTIXF11SttMKrdezHcqktKcnciy7hy9pS4bZpDdQ@lists.linaro.org
X-Gm-Message-State: AOJu0YyWU65tAISUc4Xyoriw1YhbynZcqDo6XewLN0QAz7YwmeqM4yAS
	ewBawrMx6ti8ADuTUngcjU/wYPYtOhQ0KpvchoG0JKbYk8yypI548Z1UOcz4wiYJkZHIbE+O7E9
	zBC6g7jzDaQZ9kcyzCW3GkoNWUniM33HlJ4mej0nrjzjz
X-Gm-Gg: ASbGncvZhJuGN/HxCeIi3J4MhFac1d16DzkVieuengxh1mztives48CHgxv51yz2w91
	Y3fs596GpcWzdSN3KlxDiPGkEb91V6wLO35TIn9g8Df6yfuK0eT8IcZ94xpCHrfBfUPIeNu13Bx
	wMOrNB9jAMGP34V1DtrAmZwT7vrWYQhbP6mzSrdnogFp41hf6V8EbsbJNqk9Ht78hyPmwXaUObI
	raqHmT0JC0BMyFwnVQ=
X-Google-Smtp-Source: AGHT+IFAfPPXVnV/fIsv8KnI8b8Bl+IOsf+U5t0pmvRJM0gZ8xG3AukFt3DXdXVb9aF/gWZVqDSUuTyRuSP2uDtgU3s=
X-Received: by 2002:a05:6820:1ac1:b0:619:a6c0:b4b with SMTP id
 006d021491bc7-61bc758538amr1013523eaf.5.1755071379266; Wed, 13 Aug 2025
 00:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250812-qcom-tee-using-tee-ss-without-mem-obj-v7-0-ce7a1a774803@oss.qualcomm.com>
In-Reply-To: <20250812-qcom-tee-using-tee-ss-without-mem-obj-v7-0-ce7a1a774803@oss.qualcomm.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Wed, 13 Aug 2025 09:49:27 +0200
X-Gm-Features: Ac12FXyfvHrDtrackOzZC99WcBb71C_WC3_DT2d5Ppi_3YWKQtwtthH808vWulI
Message-ID: <CAHUa44FJ9iRMyDHffRBwgxxX27vTwsAwNiCCEGQ8fMQPZS_D+g@mail.gmail.com>
To: Amirreza Zarrabi <amirreza.zarrabi@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
X-Spamd-Result: default: False [-3.97 / 15.00];
	BAYES_HAM(-2.87)[99.46%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.53:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.161.53:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 135EE3F6F9
X-Spamd-Bar: ---
Message-ID-Hash: MAK36SX6OK74VASOYGZWWWN2GTMH62PA
X-Message-ID-Hash: MAK36SX6OK74VASOYGZWWWN2GTMH62PA
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Garg <sumit.garg@kernel.org>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Apurupa Pattapu <quic_apurupa@quicinc.com>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Harshal Dev <quic_hdev@quicinc.com>, linux-arm-msm@vger.kernel.org, op-tee@lists.trustedfirmware.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 00/11] Trusted Execution Environment (TEE) driver for Qualcomm TEE (QTEE)
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MAK36SX6OK74VASOYGZWWWN2GTMH62PA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gV2VkLCBBdWcgMTMsIDIwMjUgYXQgMjozN+KAr0FNIEFtaXJyZXphIFph
cnJhYmkNCjxhbWlycmV6YS56YXJyYWJpQG9zcy5xdWFsY29tbS5jb20+IHdyb3RlOg0KPg0KPiBU
aGlzIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2VzIGEgVHJ1c3RlZCBFeGVjdXRpb24gRW52aXJvbm1l
bnQgKFRFRSkNCj4gZHJpdmVyIGZvciBRdWFsY29tbSBURUUgKFFURUUpLiBRVEVFIGVuYWJsZXMg
VHJ1c3RlZCBBcHBsaWNhdGlvbnMgKFRBcykNCj4gYW5kIHNlcnZpY2VzIHRvIHJ1biBzZWN1cmVs
eS4gSXQgdXNlcyBhbiBvYmplY3QtYmFzZWQgaW50ZXJmYWNlLCB3aGVyZQ0KPiBlYWNoIHNlcnZp
Y2UgaXMgYW4gb2JqZWN0IHdpdGggc2V0cyBvZiBvcGVyYXRpb25zLiBDbGllbnRzIGNhbiBpbnZv
a2UNCj4gdGhlc2Ugb3BlcmF0aW9ucyBvbiBvYmplY3RzLCB3aGljaCBjYW4gZ2VuZXJhdGUgcmVz
dWx0cywgaW5jbHVkaW5nIG90aGVyDQo+IG9iamVjdHMuIEZvciBleGFtcGxlLCBhbiBvYmplY3Qg
Y2FuIGxvYWQgYSBUQSBhbmQgcmV0dXJuIGFub3RoZXIgb2JqZWN0DQo+IHRoYXQgcmVwcmVzZW50
cyB0aGUgbG9hZGVkIFRBLCBhbGxvd2luZyBhY2Nlc3MgdG8gaXRzIHNlcnZpY2VzLg0KPg0KDQpU
aGVyZSBhcmUgc29tZSBidWlsZCBlcnJvcnMvd2FybmluZ3MgZm9yIGFybSBhbmQgeDg2XzY0LCBz
ZWUNCmh0dHBzOi8vdHV4YXBpLnR1eHN1aXRlLmNvbS92MS9ncm91cHMvbGluYXJvL3Byb2plY3Rz
L2plbnMvcGxhbnMvMzFEbUNPbjFwRjJKR1ZEazNvdEJPWE9MNmtWDQoNClRoYW5rcywNCkplbnMN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1t
bS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGlu
YXJvLm9yZwo=
