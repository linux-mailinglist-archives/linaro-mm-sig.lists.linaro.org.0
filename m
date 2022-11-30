Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1249D63D001
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 09:00:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEBFF3EF50
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 30 Nov 2022 08:00:18 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 5BF0E3EA37
	for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 08:00:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=dB6BQ23X;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669795207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j2a8xmX2uqZ7NUsrGlJ+pz4pKlQs3R+YDShsHCw2aB8=;
	b=dB6BQ23XyvhArnf2Bwie4EAlTx4/JFwe68lSpHxrRvzWDrG4vB+lDJC/Wu+lMpaxeT2jrh
	ShKbUkpoT8kjSEmE8KvAT3/a1BIEEESgInjJw7mU4CX8LboWXWSwx6vT4n3fleJ6Ds9VCe
	fbFQPlYEAMshlik0vcjX6+9Rtk+8wpU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-85-lDmhs_s_PtiOcmbpjF7lkg-1; Wed, 30 Nov 2022 03:00:06 -0500
X-MC-Unique: lDmhs_s_PtiOcmbpjF7lkg-1
Received: by mail-wr1-f70.google.com with SMTP id q13-20020adfab0d000000b002420132f543so3165412wrc.19
        for <linaro-mm-sig@lists.linaro.org>; Wed, 30 Nov 2022 00:00:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j2a8xmX2uqZ7NUsrGlJ+pz4pKlQs3R+YDShsHCw2aB8=;
        b=2i+XWxbD8GF/cIVNOTHherFpoiEVXfpffNgMjOrFk+K32Hazj54gLqnRQ/CPhEOWJ+
         hgEgJJ1YnyOokN/8CF4MdYSR9pcToasAKQp4cfjOqYnvaYNawMbnVkL0T1lb/hM497ue
         1hrSKJ/TDlTZDRE8n2AiSKnuvrvhWShGoNAHnZCtxTKzxvhUkKsJ9SxBBxoh2WntgHXc
         XREZXqL6PPGGqizC6zeXP4Nl4eFE5GN5ThWNuB+3kmlqzUTUZB2Aupo6RcaVsCeASbP8
         ejiUkJqcMium5ToNjfiNMtg16pvV8qo07mrsIutA5VxlWEx4V4udzTa08KFtsaHEeE5I
         RSCg==
X-Gm-Message-State: ANoB5pk3pB1zU1ZFNf1uZPFi7Bttm92bouOpAj1z9BUcvMMgogsdlqoI
	VrVHzwkYFybxQ7JkRJuLcYWSrFeTx6WIUHZQbFmIfMiBgHeCQ5lnkN0RqRLhgPiRWa1H55IdKEY
	ik5/QTTdjcdVuTqR/L83UCPacAJA=
X-Received: by 2002:a05:600c:24e:b0:3c5:f9f1:f956 with SMTP id 14-20020a05600c024e00b003c5f9f1f956mr30842026wmj.50.1669795205210;
        Wed, 30 Nov 2022 00:00:05 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5Ey5+o85KLpwLVMTdnP29Su8T24kkvZHNDgYMdluRgMtIMgcoctfGdxRoxGf1Zvfd2hRrQBg==
X-Received: by 2002:a05:600c:24e:b0:3c5:f9f1:f956 with SMTP id 14-20020a05600c024e00b003c5f9f1f956mr30842007wmj.50.1669795205007;
        Wed, 30 Nov 2022 00:00:05 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c124-20020a1c3582000000b003cf894dbc4fsm1046855wma.25.2022.11.30.00.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 00:00:04 -0800 (PST)
Message-ID: <ebe02c21-7770-0415-096e-76a839bad154@redhat.com>
Date: Wed, 30 Nov 2022 09:00:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-1-efe5ed518b63@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v2-1-efe5ed518b63@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 5BF0E3EA37
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[170.10.129.124:from,92.176.231.205:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[17];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.221.70:received];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.221.70:received];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[cerno.tech,ffwll.ch,linux.intel.com,kernel.org,gmail.com,suse.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 5OD3CINAVXCBFB25FGXQ2UMDSAR7SX7E
X-Message-ID-Hash: 5OD3CINAVXCBFB25FGXQ2UMDSAR7SX7E
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/17] drm/tests: helpers: Move the helper header to include/drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5OD3CINAVXCBFB25FGXQ2UMDSAR7SX7E/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/28/22 15:53, Maxime Ripard wrote:
> We'll need to use those helpers from drivers too, so let's move it to a
> more visible location.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/tests/drm_client_modeset_test.c            | 3 +--
>  drivers/gpu/drm/tests/drm_kunit_helpers.c                  | 3 +--
>  drivers/gpu/drm/tests/drm_modes_test.c                     | 3 +--
>  drivers/gpu/drm/tests/drm_probe_helper_test.c              | 3 +--
>  {drivers/gpu/drm/tests => include/drm}/drm_kunit_helpers.h | 0
>  5 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/gpu/drm/tests/drm_client_modeset_test.c
> index 52929536a158..ed2f62e92fea 100644
> --- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
> +++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
> @@ -8,12 +8,11 @@
>  #include <drm/drm_connector.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_drv.h>
> +#include <drm/drm_kunit_helpers.h>

I wonder if now that this header was moved outside of the tests directory,
if we should add stub functions in the header file that are just defined
but do nothing if CONFIG_DRM_KUNIT_TEST isn't enabled. So that including
it in drivers will be a no-op.

Or do you plan to conditionally include this header file in drivers? So
that is only included when CONFIG_DRM_KUNIT_TEST is enabled?

Another thing that wondered is if we want a different namespace for this
header, i.e: <drm/testing/drm_kunit_helpers.h>, to make it clear that is
not part of the DRM API but just for testing helpers.

But these are open questions really, and they can be done as follow-up:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
