Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0757CF7A0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 13:56:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0D43440F36
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Oct 2023 11:55:59 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by lists.linaro.org (Postfix) with ESMTPS id 7D7DE3E9FC
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Oct 2023 18:09:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=P9VZOO5M;
	spf=pass (lists.linaro.org: domain of jkardatzke@google.com designates 209.85.214.179 as permitted sender) smtp.mailfrom=jkardatzke@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1c6185cafb3so20795ad.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 03 Oct 2023 11:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696356552; x=1696961352; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z5ADml8UEYFyYxVl60KXFq6v7496GwJKAXl/Dq0m1dI=;
        b=P9VZOO5MjBHWzKGYa3BAfYDolubuEz9opbbH7A2MtfRG64oy1ky6cLFC6JMqtQWN3F
         gY7cH6b5trnrwVG/Homjr7U5W/IJKdnSNM6XXAFKNPPdcmCnVhY1vqXOymbqFPUcOax1
         4XwF5Z4mEcRpEJzlPtWF9BJh5kMKi5NcX48533Z8+8TzExlYLVvzsb/X2cK/Fscs47OZ
         jpySLeV17pKN2q/aW6AgOijL4fGDMYdItrVAzZ7TH4/J3B5Scrg4jmWUFYby9qEYEZzO
         WxaP7gBWbOxpEjKnLitOwMpvwoNU9NSqdEIH8GRIG/n0nD0moJpPf5s1me1ag0IvZNqY
         PgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696356552; x=1696961352;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z5ADml8UEYFyYxVl60KXFq6v7496GwJKAXl/Dq0m1dI=;
        b=e+V5ChtsZo11R8CWS2RILToZEk2zEr/BtdnZYCQNWKSw7kiy91jbbrGI/+LSvuI5+I
         nsHcgpWiHWs479e9X/e04ZWpcIniZAp3ooBxZiGPfqmKkqW/xyIJzMSGfnjxrLJy7fmu
         AQpV71fQhW5+ghKR9xdR48h7u5KhUiKeF5qBkguerzmCpSxRsarCHlP+tFCHtQBvmOmo
         TiQbSZkLBjVuwGkgwC5OcSuLnWzdCGRwgE7Q0bMiWA+BmdG2Y16kCIs8yhiwzBqmvt0/
         f183m5lPcd7jsTJX/iXHvN/9kTzZy6V5IVGnepobjtzRIOVWZl8jS5wiWioF9lygyg0r
         2bFQ==
X-Gm-Message-State: AOJu0YxMozPRyvZg0jOI6h11DLTaCUh118Vn7zS5eFo+dP/YMd5fgsAc
	ZNItFSU+qip+R6To1hMt7Czjbu8e/78Ts0PN6AHV
X-Google-Smtp-Source: AGHT+IEl6IJ3DsIw7oyXRf7R7HS8s4r59Isc2f9JN+K4IY+u/eiaCuHNxh0RznXZ+FmVCsNdWoBLHGhb923Bp4V1USc=
X-Received: by 2002:a17:902:dad1:b0:1c6:1e4e:b770 with SMTP id
 q17-20020a170902dad100b001c61e4eb770mr19311plx.28.1696356552314; Tue, 03 Oct
 2023 11:09:12 -0700 (PDT)
MIME-Version: 1.0
From: Jeffrey Kardatzke <jkardatzke@google.com>
Date: Tue, 3 Oct 2023 11:09:01 -0700
Message-ID: <CA+ddPcPS8oUsMk0ziumwdTTWetekE37cK0Gkt9x5w2ig1m2pXQ@mail.gmail.com>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	FAKE_REPLY(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.179:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[mediatek.com,collabora.com,kernel.org,vger.kernel.org,lists.freedesktop.org,chromium.org,linaro.org,lists.linaro.org,lists.infradead.org,gmail.com];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	BLOCKLISTDE_FAIL(0.00)[209.85.214.179:server fail];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 7D7DE3E9FC
X-MailFrom: jkardatzke@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NAHZEIS35PB54CAJWSBYNHD6FCBOOBAX
X-Message-ID-Hash: NAHZEIS35PB54CAJWSBYNHD6FCBOOBAX
X-Mailman-Approved-At: Thu, 19 Oct 2023 11:50:30 +0000
CC: Project_Global_Chrome_Upstream_Group <Project_Global_Chrome_Upstream_Group@mediatek.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, drinkcat@chromium.org, Jason-ch Chen <jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>, Nancy Lin <nancy.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Shawn Sung <shawn.sung@mediatek.com>, Singo Chang <singo.chang@mediatek.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/10] drm/mediatek: Add interface to allocate MediaTek GEM buffer.
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NAHZEIS35PB54CAJWSBYNHD6FCBOOBAX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You can remove the DRIVER_RENDER flag from this patchset. That should
not be upstreamed. The IOCTLs are still needed though because of the
flag for allocating a secure surface that is in the next patch. If
that flag wasn't needed, then dumb buffer allocations could be used
instead.

Thanks,
Jeff Kardatzke
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
