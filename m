Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 225C9C4E8C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Nov 2025 15:44:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EEE13F7F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Nov 2025 14:44:25 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 90B123F719
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 14:44:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=JpNlRxcR;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.49 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b729a941e35so549594466b.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Nov 2025 06:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762872251; x=1763477051; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=;
        b=JpNlRxcRvxgiwvd+Im8nY2kaXmsEdIm2FnFWwmF+wOnD03bkaQT5rh4mU7t0y/1Itn
         1s2eY1wS/c0BCLTOceek3pa5S5tL8zf3nPmM7aq9JijT+4jxpGCrDuFcvNE2ozCpmVoc
         kYPuF6fdCdautUHm0mHz8+wFv8aLl6i7Rw4X547JGJLY2FHvwKk5KRCetZZxRpht7N++
         F31CIuGVLEhrsA2iDfOlHPuoKZiAQYzw4shaVH/fmmqcTyH+4sYzpbc5oo9aFs2RMV3H
         B8fVp4QiigUorzE/J6lMBK8bacELrnAnt9Wk+bpG4lkRX2OFsLdYe9SgtivLf5hE+PBj
         O9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762872251; x=1763477051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y1/P4cjnJRMKeJXb4QuiXEQkEuLjYJ7u3PWbuQSeBbc=;
        b=pRtaJnxXFDs1xXQ3ajg+pQvmzjKHXJM0DwGDPW29lFnGXseNhaAxYdHeqB1Qb65+l+
         tMG9Z/bdMUgkbLW1GSTTXk47gjfIR6CzBDnA7ZmU+8GvSho4UNy+eEsrshaNU1v4dkob
         IZMHzmp41t93V5nPUVsiRQLcc6yhSJ37vY+nM2aqH1DONbUIf9Ctm4h1DN1+dFMLa4Qs
         Ru9Mf+jvqFHuXvM2nA5T5nSsX7UAcx5mNXF7GsLonbvxF8fVZRvLetcngFLV0TWolyAT
         ordtgDmtRe8VhYfQ9fAZ15ilOJQrW9npyFggtykl3VoABk0NOLTvkLdN6WEuamSRdvbf
         Qn+A==
X-Forwarded-Encrypted: i=1; AJvYcCV5nc7G9TQDVcFNn+4PsesMq0W8tGbOdNMg3/tJ2rvcf4JNIB9VZ7h1p50wJo6V95pvAte9RPv9/eKwxK3A@lists.linaro.org
X-Gm-Message-State: AOJu0YyjAuOctMvk/6iCszZ098z+8uZtm9ZgJRLxU1Vw7NkxE6ORM1gg
	trqoFK8FiM3LJLniEOx/V4PYklqWU4WtbZPufflB8G//UndrvvP5B5k/hmH8k0E2YfCw/1hEGGP
	6/JymHU+cCw/sv1s6fXMMSxw5xha8piZkXuUSsbbQNQ9P
X-Gm-Gg: ASbGncsjtSok+A/ChlrbbcYEibrjVrsnrZxsg/3ryhmcnk1vXz8QbLvGd8G4tzdJ6gq
	XjiYSrrV9/lMvDQmjeBTiNswIi9wVk1J7nvYeT3QcALPLScP71Sc9yRamUiBxXcuUbIB2NUjPZ3
	QayOTgWAfHUHbD+YVOTKMx96wGB4CtJBgNQ4j359FkZbhjG/PFX3i/N6IAkLeKJjhozIkNta4lB
	hMk2GCLwpJWts5P288fIXcGHs40gSIt9O0DjxvXMzZZHar9stLDqhtaq/RzT8IaRBWwZTY5e2wE
	obM3pW3n3Mcz9YlJGejAq0DxU8I=
X-Google-Smtp-Source: AGHT+IHMY6SoKSk0VgpDlYvVT6P+glN4Yq9XXIqVKd9jfwRPr/K5XWhLNKItsuRhohz/IcTpClBme4+jDstH4cTCaYk=
X-Received: by 2002:a17:907:7ea4:b0:b70:b5ce:e66e with SMTP id
 a640c23a62f3a-b72e02db993mr1289989566b.21.1762872251327; Tue, 11 Nov 2025
 06:44:11 -0800 (PST)
MIME-Version: 1.0
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com> <20251111122735.880607-5-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20251111122735.880607-5-andriy.shevchenko@linux.intel.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 11 Nov 2025 20:13:59 +0530
X-Gm-Features: AWmQ_bnAE43qdt9uTp5GKOPhntYFEAk4L2mYcClIlF1B_9-TbeBvnkuEckfJGvA
Message-ID: <CAO_48GE5LK7hD-KJHHoD-XCRjTPcZWApE2MVvs4OgVdr1=u+rg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 90B123F719
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.49:from];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim,mail.gmail.com:mid];
	TAGGED_RCPT(0.00)[cisco];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[minyard.net,amd.com,treblig.org,suse.de,oss.qualcomm.com,intel.com,linaro.org,kernel.org,wbinvd.org,linux.dev,gmail.com,oracle.com,cisco.com,schaufler-ca.com,goodmis.org,suse.com,ibm.com,ionos.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,lists.linaro.org,lists.osuosl.org,lists.linux.dev,rasmusvillemoes.dk,chromium.org,lwn.net,padovan.org,ffwll.ch,linux.intel.com,poorly.run,somainline.org,lunn.ch,davemloft.net,google.com,redhat.com,enneenne.com,linux.ibm.com,hansenpartnership.com,linuxfoundation.org,efficios.com,linux-foundation.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.218.49:from];
	RCPT_COUNT_GT_50(0.00)[91];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: Y6LBA5PGBBMUBT6CFXWNTOGXIBF2TQLW
X-Message-ID-Hash: Y6LBA5PGBBMUBT6CFXWNTOGXIBF2TQLW
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Corey Minyard <corey@minyard.net>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Dr. David Alan Gilbert" <linux@treblig.org>, Alex Deucher <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Matthew Brost <matthew.brost@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, Vitaly Lifshits <vitaly.lifshits@intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>, Calvin Owens <calvin@wbinvd.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>, Sagi Maimon <maimon.sagi@gmail.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, Karan Tilak Kumar <kartilak@cisco.com>, Hans Verkuil <hverkuil+cisco@kernel.org>, Casey Schaufler <casey@schaufler-ca.com>, Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>, Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>, Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org
 , linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, linux-pci@vger.kernel.org, linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev, ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sergey Senozhatsky <senozhatsky@chromium.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, Mar
 ijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rodolfo Giometti <giometti@enneenne.com>, Richard Cochran <richardcochran@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, Stefan Haberland <sth@linux.ibm.com>, Jan Hoeppner <hoeppner@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, Alexander Gordeev <agordeev@linux.ib
 m.com>, Christian Borntraeger <borntraeger@linux.ibm.com>, Sven Schnelle <svens@linux.ibm.com>, Satish Kharat <satishkh@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Andrew Morton <akpm@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/21] dma-buf: Switch to use %ptSp
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/Y6LBA5PGBBMUBT6CFXWNTOGXIBF2TQLW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQW5keSwNCg0KDQpPbiBUdWUsIDExIE5vdiAyMDI1IGF0IDE3OjU3LCBBbmR5IFNoZXZj
aGVua28NCjxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPg0KPiBV
c2UgJXB0U3AgaW5zdGVhZCBvZiBvcGVuIGNvZGVkIHZhcmlhbnRzIHRvIHByaW50IGNvbnRlbnQg
b2YNCj4gc3RydWN0IHRpbWVzcGVjNjQgaW4gaHVtYW4gcmVhZGFibGUgZm9ybWF0Lg0KPg0KPiBS
ZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4
LmludGVsLmNvbT4NClRoYW5rcyBmb3IgdGhlIHBhdGNoLg0KDQpGV0lXLCBwbGVhc2UgZmVlbCBm
cmVlIHRvIGFkZA0KQWNrZWQtYnk6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5v
cmc+DQoNCkJlc3QsDQpTdW1pdC4NCj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1
Zy5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jIGIvZHJp
dmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYw0KPiBpbmRleCA2N2NkNjk1NTFlNDIuLjllNWQ2NjJj
ZDRlOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYw0KPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jDQo+IEBAIC01OSw3ICs1OSw3IEBAIHN0YXRp
YyB2b2lkIHN5bmNfcHJpbnRfZmVuY2Uoc3RydWN0IHNlcV9maWxlICpzLA0KPiAgICAgICAgICAg
ICAgICAgc3RydWN0IHRpbWVzcGVjNjQgdHM2NCA9DQo+ICAgICAgICAgICAgICAgICAgICAgICAg
IGt0aW1lX3RvX3RpbWVzcGVjNjQoZmVuY2UtPnRpbWVzdGFtcCk7DQo+DQo+IC0gICAgICAgICAg
ICAgICBzZXFfcHJpbnRmKHMsICJAJWxsZC4lMDlsZCIsIChzNjQpdHM2NC50dl9zZWMsIHRzNjQu
dHZfbnNlYyk7DQo+ICsgICAgICAgICAgICAgICBzZXFfcHJpbnRmKHMsICJAJXB0U3AiLCAmdHM2
NCk7DQo+ICAgICAgICAgfQ0KPg0KPiAgICAgICAgIHNlcV9wcmludGYocywgIjogJWxsZCIsIGZl
bmNlLT5zZXFubyk7DQo+IC0tDQo+IDIuNTAuMQ0KPg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
