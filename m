Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOCaLgK+qWnNDQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Mar 2026 18:31:46 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCC216447
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Mar 2026 18:31:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C344015D
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Mar 2026 17:31:44 +0000 (UTC)
Received: from meesny.iki.fi (meesny.iki.fi [195.140.195.201])
	by lists.linaro.org (Postfix) with ESMTPS id E65DD4015D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Mar 2026 17:31:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=iki.fi header.s=meesny header.b=vNv6Wiw4;
	dmarc=none;
	arc=pass ("iki.fi:s=meesny:i=1");
	spf=pass (lists.linaro.org: domain of sakari.ailus@iki.fi designates 195.140.195.201 as permitted sender) smtp.mailfrom=sakari.ailus@iki.fi
Received: from hillosipuli.retiisi.eu (n18ws8cotp5c1dsf-1.v6.elisa-laajakaista.fi [IPv6:2001:99a:0:19f:4ce7:0:1157:8c0f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4fRc626652zyVM;
	Thu, 05 Mar 2026 19:31:38 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1772731900;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IIdcmWFjidJR6r6yijbOg5atPdCeq+LdXxOD6ElKnbQ=;
	b=vNv6Wiw4Xvfi089Fq9+E6JNNhi2Y3WR1Jzfwss0xjhX/7G2yJZZYQHoZz9YgAgFIOayfET
	lNoOP5MnaphYFWQVqURtju+aF1rSq7Pr64avVr2C/id7Mw9Cf/rJCyEX/ibXggi5vRM6yq
	uZex9HmZB9dXwtCHOSDz6UpugIwZm4I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1772731900;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IIdcmWFjidJR6r6yijbOg5atPdCeq+LdXxOD6ElKnbQ=;
	b=GkNFEbEgaSmMs7tpq9OaKpiNvpUEkhiAShomlplPZ9KgCQoUfqsJergpyp+3V2Rt1rIlx6
	o1BtqZHo+miimEoMzUbXqJ77um/IcWBWhXf1aef5gLySzMAG7o4ihICa+tWtwaRaN6O+DL
	D7u+6eJbesIl20NAFz/mkv4j2yBUQx4=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; a=rsa-sha256; d=iki.fi; s=meesny; cv=none; t=1772731900;
	b=Qpjs3xn3xCz6V2Mh2vyntKIo+H83uUw7anamRayaNabMsetmEyZPDGwaloVk7828MPwgux
	kwsOEzJLotnKGG/L6qRItFrqBFyZwucxeQPzK+MLPEq4xE06GAq4IpE0EKQ1nYIZ7d5yfz
	R5BwA2a9kpFeYpfBUsnff7wbQ50XMGA=
Received: from valkosipuli.retiisi.eu (valkosipuli.local [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 60946634C50;
	Thu, 05 Mar 2026 19:31:34 +0200 (EET)
Date: Thu, 5 Mar 2026 19:31:34 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Alain Volmat <alain.volmat@foss.st.com>
Message-ID: <aam99usPtkwo9GbJ@valkosipuli.retiisi.eu>
References: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106-stm32-dcmi-dma-chaining-v2-0-70688bccd80a@foss.st.com>
X-Spamd-Bar: ----
Message-ID-Hash: VSQ2BYNYXMHKLMTZ2VUBQWUBO2VOFJXU
X-Message-ID-Hash: VSQ2BYNYXMHKLMTZ2VUBQWUBO2VOFJXU
X-MailFrom: sakari.ailus@iki.fi
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/12] media: stm32: dcmi: stability & performance enhancements
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VSQ2BYNYXMHKLMTZ2VUBQWUBO2VOFJXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 40CCC216447
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[iki.fi:s=meesny];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:iki.fi:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[iki.fi];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iki.fi:-];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	NEURAL_HAM(-0.00)[-0.896];
	FROM_NEQ_ENVFROM(0.00)[sakari.ailus@iki.fi,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[foss.st.com,kernel.org,gmail.com,linaro.org,amd.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Alain,

On Tue, Jan 06, 2026 at 12:34:28PM +0100, Alain Volmat wrote:
> This series improve stability of the capture by fixing the
> handling of the overrun which was leading to captured
> frame corruption.
> Locking within the driver is also simplified and the way
> DMA is handled is reworked allowing to avoid having a
> specific handling for the JPEG data.
> 
> Performances of capture can now be increased via the usage
> of a DMA->MDMA chaining which allows for capture of higher
> resolution / framerate.
> 
> Signed-off-by: Alain Volmat <alain.volmat@foss.st.com>

I've picked the 10 first patches to my tree, I presume the rest are merged
via another tree?

Please cc me on the next time. Thanks.

-- 
Kind regards,

Sakari Ailus
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
