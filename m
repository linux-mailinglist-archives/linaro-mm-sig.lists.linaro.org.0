Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D56638854
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:12:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD4573EF32
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:12:22 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 211463ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:12:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=IJlUauWr;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374734;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2lxU1Rbb/abSsZvZ6c7uR6nOCdyrA7Yjf5rgzN1ey7M=;
	b=IJlUauWrHDmVWqsiuw6w6A6FE0M06sjsc7GPprRdXA2PHm9njM3idc8qgM2AjjQQ6zfr16
	JCco/ixOL5nEDzu9grLPNh7KmHsxC6sCzglDRhPZ1WAwgAU97giBETzoEYCbZLL9RB5WJ5
	7KPmVbe6u2oJ+czztOX7pj/jssF86U4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-474-k29X83nmMGmbz4Z9_UqPxg-1; Fri, 25 Nov 2022 06:12:13 -0500
X-MC-Unique: k29X83nmMGmbz4Z9_UqPxg-1
Received: by mail-wm1-f71.google.com with SMTP id ay19-20020a05600c1e1300b003cf758f1617so4045380wmb.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:12:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2lxU1Rbb/abSsZvZ6c7uR6nOCdyrA7Yjf5rgzN1ey7M=;
        b=TZh4nwanyzwwXazc0f/jwhPRsMMQbClIBeNDhI2DkHskteyzenFzs94ARDfXAm2d6Y
         J3/VqahApxa/7BgIahJg5teTk+mmBBxAfDzDzrprt6Rw9h/Op0ZKhf0s9Clo3sJXWpeT
         9FMCqL1YfXS+qAJspgPrtZNiXlliS8b7V0OYFDitiigjAUoRiZY/mNO+8OkEYgRneX4d
         ApAKbldH9w4XVyloQ2qsyG5XpYpmibkxSon6eTmuutEi8aSuiSPawdbGi6uAQd2y3jtx
         N5BanP69dvBphaFT21nzz/I1KHtq9I8MpSHgTFakXW0LY/2uRDLkIbP9bPqnKxDEHA+N
         GMvA==
X-Gm-Message-State: ANoB5plJxCn4C4Vus37VxjcmtBz0Lcp4baAgiJ9YQ6QSwYJkslOUewXG
	cZvCGz3qDkCc0Sssm6nQWkh9pPKb4nw7c2buNk5vxbaEjvX0LN0EkbaJz5yUH1XVgPkSKd2DHLy
	MJc7zNYeUk8hVfoXmgqR1MKKN6zw=
X-Received: by 2002:a05:6000:1c0e:b0:241:e4d1:d192 with SMTP id ba14-20020a0560001c0e00b00241e4d1d192mr10209315wrb.534.1669374731091;
        Fri, 25 Nov 2022 03:12:11 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7p1vj0N8iVuX9+tqZWhKZmYo4t7Jz83x2SXNSaxC/wK47BdRJZAm4d8wEODTWCBcg4oGQSAA==
X-Received: by 2002:a05:6000:1c0e:b0:241:e4d1:d192 with SMTP id ba14-20020a0560001c0e00b00241e4d1d192mr10209298wrb.534.1669374730903;
        Fri, 25 Nov 2022 03:12:10 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id hg27-20020a05600c539b00b003a3170a7af9sm5141530wmb.4.2022.11.25.03.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:12:10 -0800 (PST)
Message-ID: <c7995e42-7802-a432-7ff5-412b4f3d0cc3@redhat.com>
Date: Fri, 25 Nov 2022 12:12:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-16-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-16-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 211463ED3C
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[170.10.133.124:from,92.176.231.205:received];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.128.71:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.71:received];
	RCPT_COUNT_TWELVE(0.00)[17];
	ARC_NA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2VSVI34QDOUFPW375Y2QSDZ2NP5IFINF
X-Message-ID-Hash: 2VSVI34QDOUFPW375Y2QSDZ2NP5IFINF
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 16/24] drm/vc4: txp: Initialise the CRTC before the encoder and connector
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2VSVI34QDOUFPW375Y2QSDZ2NP5IFINF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> It makes more sense to register the CRTC before the encoder and
> connectors, so let's move our call around.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
